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
test_suite_cfg_name='config'
remote_suite_files_list="$PWD/remote_scripts_list.tmp"
container_name='zsbd-container'

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

run_single_test() {
    fail_if_empty "$1"
    test_script_path="$1"
    cmd="$remote_worker -i=$test_script_path -n=$number_of_repeats"
    container_exec "$container_name" "$cmd"
}

get_remote_test_paths() {
    get_remote_file_ext_paths "$remote_suite_dir" "$container_name" '*.sql' "$remote_suite_files_list"
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

# set required variable based on given parameters
remote_test_suites_dir="$remote_workdir/$remote_test_suites_dir_name"  # /home/oracle/test-sets
remote_suite_dir="$remote_test_suites_dir/$remote_suite_name"
fail_if_container_dir_not_exists "$remote_suite_dir" "$container_name"
remote_worker="$remote_workdir/$worker_name"  # /home/oracle/worker.sh
test_suite_config="$remote_suite_dir/$test_suite_cfg_name"  # /home/oracle/
get_remote_test_paths
pass_if_nonempty_file "$remote_suite_files_list"

tests_no=$(wc -l "$remote_suite_files_list")
INFO "Starting benchmark for $tests_no tests from $remote_suite_dir ..."
while read test_path; do
    echo "$test_path"
    run_single_test "$test_path"
    # TODO read which scripts requre restart (config file)
    # restart if need

done <"$remote_suite_files_list"
rm "$remote_suite_files_list"
