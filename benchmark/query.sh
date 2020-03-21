#!/bin/bash

CONFIDENCE_LEVEL=99

source "$PWD/db_credentials"
source "$PWD/utils.sh"

execute_query() {
    fail_if_empty "$1" && fail_if_empty "$2" && fail_if_empty $3
    script_path="$1"
    results_file="$2"
    times=$3
    { multitime -n $times -c $CONFIDENCE_LEVEL \
        sqlplus -s "$DB_USER"/"$DB_PASSWORD"@"$DB_PDB" < "$script_path" ; } 2> "$results_file"
}
