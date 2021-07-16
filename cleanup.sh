#!/bin/bash
source ./config.sh
docker stop docker
docker network rm ${PREFIX}
docker volume rm ${PREFIX}-build
docker volume rm ${PREFIX}-certs
docker image rm ${PREFIX}-job
