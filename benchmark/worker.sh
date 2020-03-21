#!/bin/bash

# this script just executes certain sql query in SQL interpreter
# many times and measures execution times using multitime. Saves
# execution times in log files.

#!/bin/bash

DESCR="Worker script for executing tests inside container with Oracle DBMS."
USAGE="USAGE: $0 -i=TEST_SUITE_DIR_PATH [-n=NUMBER_OF_REPEATS] [-l=LOG_OUT_PATH]"

source "$PWD/utils.sh"
source "$PWD/query.sh"

LOGGING_SCRIPT="$PWD/bash-logger/src/logger.sh"
LOG_FILE="$PWD/worker.log"
test_path=''
number_of_repeats=1
require_restart=''

# check for required dependencies
## multitime: https://github.com/ltratt/multitime/
fail_if_not_installed 'multitime'

# parse parameters
for i in "$@"
do
case $i in
    -i=* | --input-path=*)
    	test_path=$(as_abs "${i#*=}")
    	;;
    -n=* | --number-of-repeats=*)
    	number_of_repeats="${i#*=}"
    	;;
    -l=* | --log-file=*)
    	LOG_FILE="${i#*=}"
    	;;
    -h | --help)
	    echo "$DESCR"
	    echo "$USAGE"
	    exit 0
	    ;;
esac
done

# import logging functions
source "$LOGGING_SCRIPT" "$LOG_FILE"
echo "Storing logs in file: $LOG_FILE ..."

run_single_test() {
    test_script_path="$1"
    results_file="$test_script_path"'.log'
    INFO "Starting test for script $test_script_path ($number_of_repeats repetitions) ..."
    INFO "$test_script_path $results_file $number_of_repeats"
    execute_query "$test_script_path" "$results_file" $number_of_repeats
    INFO "Execution times of $test_script_path ($number_of_repeats repetitions) stored in $results_file"
}


###############################################################################
##                                     main                                  ##
###############################################################################


if [[ -z "$test_path" ]]; then
	ERROR "Path to test suite not given."
    echo "$USAGE"
	exit 1
fi

run_single_test "$test_path"

INFO "$test_path test was finished."
echo "Logs stored in $LOG_FILE"
