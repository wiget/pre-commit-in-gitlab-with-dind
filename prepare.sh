#!/bin/bash
source ./config.sh
docker network create ${PREFIX}
docker volume create ${PREFIX}-build
docker volume create ${PREFIX}-certs
docker run --rm --detach --name docker --network ${PREFIX} \
	-v "${PREFIX}-build:/build" \
	-v "${PREFIX}-certs:/certs" \
	-e "DOCKER_DRIVER=overlay2" \
	-e "DOCKER_TLS_CERTDIR=/certs" \
	--privileged \
	docker:dind
docker build -t ${PREFIX}-job .
