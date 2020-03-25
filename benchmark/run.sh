#!/bin/bash

DESCR="Main script for testing purposes. This script is intended to be launched
outside the container with tested DBMS. This scripts manages container (stops
and reloads 'clean' container from its image) for purpose of executing required
performance tests."

USAGE="USAGE: $0 -i=TEST_SUITE_DIR_PATH"

source "$PWD/utils.sh"
source "$PWD/query.sh"

LOGGING_SCRIPT="$PWD/bash-logger/src/logger.sh"
LOG_FILE="$PWD/run.log"
number_of_repeats=1
require_restart=''
remote_workdir='/home/oracle/benchmark'
remote_test_suites_dir_name='test-sets'
worker_name='worker.sh'
test_suite_cfg_name='require_restart'
remote_suite_files_list="$PWD/remote_scripts_list.tmp"
container_name='zsbd-container'
# the name of existed 'template' volume with all data prepared
volume_dump_name='zsbd-studies-course_oracledata-dump'
# the name of target volume, the one used for tests - the copy of dump volume
volume_name='zsbd-studies-course_oracledata'
docker_compose_dir=$(as_abs '..')
loaded_data_msg='DONE: Executing user defined scripts'
benchmark_summary='benchmark_summary.html'


# parse parameters
for i in "$@"
do
case $i in
    -i=* | --remote-suite-name=*)
        # remote_suite_dir=$(as_abs "${i#*=}")
    	remote_suite_name="${i#*=}"
    	;;
    -n=* | --number-of-repeats=*)
    	number_of_repeats="${i#*=}"
    	;;
    -l=* | --log-file=*)
    	LOG_FILE="${i#*=}"
    	;;
    -c | --container-name)
    	container_name="${i#*=}"
    	;;
    -w=* | --remote-workdir=*)
    	remote_workdir="${i#*=}"
    	;;
    -r | --require-restart)
    	require_restart='yes'
    	;;
    -h | --help)
	    echo "$DESCR"
	    echo "$USAGE"
	    exit 0
	    ;;
esac
done


recreate_db_container() {
    recreate_container "$docker_compose_dir" "$volume_name" "$volume_dump_name"
    INFO "Waiting till container $container_name and database will be ready to use ..."
    wait_for_container "$container_name" "$loaded_data_msg"
    INFO "Container $container_name and database is ready to use!"
}

run_test() {
    fail_if_empty "$1" && fail_if_empty "$2"
    test_script_path="$1"
    n_times=$2
    cmd="$remote_worker -i=$test_script_path -n=$n_times"
    container_exec "$container_name" "$cmd"
}

run_single_test_and_reset() {
    fail_if_empty "$1"
    INFO "Execute single test (no repetition) ..."
    run_test "$test_path" 1
    INFO "Restart container after test ..."
    recreate_db_container
}

get_remote_test_paths() {
    get_remote_file_ext_paths "$remote_suite_dir" "$container_name" '*.sql' "$remote_suite_files_list"
}

need_restart_after_each_test() {
    # for given test set, get names of tests which requres restart after Execution
    fail_if_empty "$1" && fail_if_empty "$2"
    test_path="$1"
    test_suite_config="$2"
    test_name=$( echo ${test_path##/*/} )
    { grep "$test_name$" "$test_suite_config" &> /dev/null && return 0 ; } || return 1
}

gather_stats() {
    fail_if_empty "$1" && fail_if_empty "$2" && fail_if_empty "$3"
    measured_times_file="$1"
    output_file="$2"
    test_name="$3"
    INFO "Calculating stats for $test_name ..."
	"$PWD/calculate_stats" "$measured_times_file" "$output_file" "$test_name" --append
}

# import logging functions
source "$LOGGING_SCRIPT" "$LOG_FILE"
echo "Storing logs in file: $LOG_FILE ..."


###############################################################################
##                                     main                                  ##
###############################################################################

if [[ -z "$remote_suite_name" ]]; then
	ERROR "Name of test suite not given."
    echo "$USAGE"
	exit 1
fi

currentDateTime=`date +'%Y%m%dT%H%M%S'`
benchmark_summary="$PWD/benchmark_summary-$remote_suite_name+$currentDateTime.html"
INFO "Remove stale logs ..."
remove_stale_logs "$PWD"
INFO "Remove old results ..."
rm -f "$benchmark_summary"

# remove container and associated volume
recreate_db_container

# set required variable based on given parameters
remote_test_suites_dir="$remote_workdir/$remote_test_suites_dir_name"  # /home/oracle/test-sets/dummy/require_restart
remote_suite_dir="$remote_test_suites_dir/$remote_suite_name"
fail_if_container_dir_not_exists "$remote_suite_dir" "$container_name"
remote_worker="$remote_workdir/$worker_name"  # /home/oracle/worker.sh
local_test_suite_config="$PWD/$remote_test_suites_dir_name/$remote_suite_name/$test_suite_cfg_name"
get_remote_test_paths
pass_if_nonempty_file "$remote_suite_files_list"

tests_no=$(wc -l "$remote_suite_files_list")

INFO "Starting benchmark for $tests_no tests from test suite '$remote_test_suites_dir_name' ($remote_suite_dir) ..."
while read test_path; do
    test_name=$( echo ${test_path##/*/} )
    need_restart_after_each_test "$test_path" "$local_test_suite_config"
    if [ $? -eq 0 ]; then
        INFO "Test '$test_name' requires reseting container after each execution ..."
        for i in $(seq 1 $number_of_repeats); do
            INFO "Starting $i / $number_of_repeats repetition of test $test_path ... "
            run_single_test_and_reset "$test_path"
        done
    else
        run_test "$test_path" $number_of_repeats
    fi
    INFO "All $number_of_repeats tests for '$test_name' executed."
    # this assumes that this directory is mounted just like in docker-compose.yml
    local_test_path="$PWD/$remote_test_suites_dir_name/$remote_suite_name/$test_name"
    local_test_results_path="$local_test_path.log"
    gather_stats "$local_test_results_path" "$benchmark_summary" "$test_name"
done <"$remote_suite_files_list"
echo -e "</table>\n" >> $benchmark_summary
INFO "Test finished."
INFO "Benchmark summary stored in $benchmark_summary"
rm "$remote_suite_files_list"
