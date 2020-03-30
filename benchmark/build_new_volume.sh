#!/bin/bash

# how it works:
#  1. launches fresh container instance after removing old volume:
#       docker volume rm zsbd-studies-course_oracledata
#       docker-compose up -d
#  2. waits until everything will be loaded in container (and its volume)
#     and copies volume
#  3. stops container

LOGGING_SCRIPT="$PWD/bash-logger/src/logger.sh"
source "$LOGGING_SCRIPT" "build_new_volume.log"

source ./utils.sh

container_name='zsbd-container'
loaded_data_msg='XDB initialized'
service_name='normal-env'  # call this service from docker-compose to recreate
						   # data from dump into volume
existed_volume_name='zsbd-studies-course_oracledata'
new_volume_name='zsbd-studies-course_oracledata-dump'

docker-compose down  # if anything is working, stop this
docker volume rm zsbd-studies-course_oracledata
docker-compose up -d "$service_name"
wait_for_container "$container_name" "$loaded_data_msg"

copy_volume "$existed_volume_name" "$new_volume_name"

docker-compose down
