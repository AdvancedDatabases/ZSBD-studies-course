#!/bin/bash

# how to use:
#  1. launch fresh container instance after removing old volume:
#       docker volume rm zsbd-studies-course_oracledata
#       docker-compose up -d
#  2. wait until everything will be loaded in container (and its volume)
#     and run this script

existed_volume_name='zsbd-studies-course_oracledata'
new_volume_name='zsbd-studies-course_oracledata-dump'

source ./utils.sh

copy_volume "$existed_volume_name" "$new_volume_name"
