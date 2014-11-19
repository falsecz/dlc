#!/bin/bash -eu

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOCKER_DIR="$SCRIPT_DIR/docker"
DOCKER_OS="${DOCKER_OS:-ubuntu}"

cd $DOCKER_DIR

function dockerRunning() {
	local DOCKER_PS="$1"
	if [[ "$(docker ps | grep $(cat docker.pid))" ]]; then
		echo "true"
	fi
}

DOCKER_PS=$(cat $DOCKER_DIR/docker-$DOCKER_OS.pid || true;)
SSH_PORT=$(docker port $DOCKER_PS 22 | cut -f2 -d ':')
# ssh -q -i ssh_key -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@192.168.59.103 -p $SSH_PORT
ssh -q -i ssh_key -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@192.168.59.103 -p $SSH_PORT -- "/docker/run_puppet.sh"
