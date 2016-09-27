#!/usr/bin/env bash

set -e

if [ $# -ne 1 ]; then
    echo "Usage: ./status.sh standalone|pipeline"
    exit 1
fi

suffix=$1

# Change directories
cd deploy/docker

if [ -x "$(command -v docker-machine)" ]; then
    # Export the active docker machine IP
    export DOCKER_IP=$(docker-machine ip $(docker-machine active));
fi

# docker-machine doesn't exist in Linux, assign default ip if it's not set
DOCKER_IP=${DOCKER_IP:-0.0.0.0}

# Display status of cluster
docker-compose -f docker-compose.yml -f docker-compose-$suffix.yml ps
