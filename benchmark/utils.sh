#!/bin/bash

# LOGGING_SCRIPT="$PWD/bash-logger/src/logger.sh"
# source "$LOGGING_SCRIPT" "utils.log"

# returns absolute path
as_abs() {
	if [[ ! "$1" = /* ]]; then
	    local result="$PWD/$1"
	else
		local result="$1"
	fi
	echo "$result"
}

fail_if_empty() {
	if [[ -z "$1" ]]; then
    	echo "${FUNCNAME[ 1 ]}: Argument not given."
    	exit 1
    fi
}

pass_if_nonempty_file() {
	fail_if_empty "$1"
	[[ -s "$1" ]] || { ERROR "File not found or empty: $$1" && exit 1; }
}

fail_if_not_installed() {
    fail_if_empty "$1"
    command -v "$1" >/dev/null 2>&1 \
        || { echo >&2 "Program '$1' not present in system."; exit 1; }
}

container_exec() {
	fail_if_empty "$1" && fail_if_empty "$2"
	c_name="$1"
	cmd="$2"
	DEBUG "Calling container $c_name with command: $cmd"
	if [[ ! -z "$3" ]];then
		local_out_path="$3"
		DEBUG "Saving output of command '$cmd' in file $local_out_path ..."
		docker exec "$c_name" bash -c "$cmd" > "$local_out_path"
	else
		docker exec "$c_name" bash -c "$cmd"
	fi
}

container_inspect_logs() {
	fail_if_empty "$1" && fail_if_empty "$2"
	c_name="$1"
	log_msg="$2"
	docker logs "$c_name" | { grep "$log_msg" &> /dev/null && return 0 ; } || return 1
}

docker_compose_reset() {
	fail_if_empty "$1" && fail_if_empty "$2"
	docker_compose_dir="$1"
	container_volume="$2"
	cd "$docker_compose_dir"
	docker-compose down
	DEBUG "Delete volume $container_volume ..."
	docker volume rm "$container_volume"
	docker-compose up -d
	cd -
}

wait_for_container() {
	fail_if_empty "$1" && fail_if_empty "$2"
	c_name="$1"
	log_msg="$2"
	container_inspect_logs "$c_name" "$log_msg"
	loaded=$?
	while [[ $loaded != [0] ]];do
		sleep 10
		container_inspect_logs "$c_name" "$log_msg"
		loaded=$?
	done
}


fail_if_container_dir_not_exists() {
	fail_if_empty "$1" && fail_if_empty "$2"
	remote_dir="$1"
	container_name="$2"
	DEBUG "Check if direcotry $remote_dir present in container $container_name ..."
	cmd='[[ -d '"$remote_dir"' ]] || exit 1'
	container_exec "$container_name" "$cmd" || { ERROR "Remote not found: $remote_dir" && exit 1; }
	DEBUG "Direcotry $remote_dir found in container $container_name"
}

get_remote_file_ext_paths() {
	fail_if_empty "$1" && fail_if_empty "$2" && fail_if_empty "$3" && fail_if_empty "$4"
	remote_dir="$1"
	container_name="$2"
	name="$3"
	local_out_path="$4"
	cmd='find '"$remote_dir"' -maxdepth 1 -name "'"$name"'" || exit 1'
	# cmd='find '"$remote_dir"' -maxdepth 1 -name "'"$name"'" || exit 1'
	container_exec "$container_name" "$cmd" "$local_out_path" \
		|| { ERROR "Remote files not found: $name" && exit 1; }
}

remove_stale_logs() {
	fail_if_empty "$1"
	cwd="$1"
	cd "$cwd" && find . -name "*.log" -exec rm -rf {} \; && cd -
}
