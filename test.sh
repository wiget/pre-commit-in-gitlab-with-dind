#!/bin/bash
source ./config.sh
docker run --rm --network ${PREFIX} \
	--volumes-from docker \
	-e "DOCKER_HOST=tcp://docker:2376" \
	-e "DOCKER_CERT_PATH=/certs/client" \
	-e "DOCKER_TLS_VERIFY=1" \
	-w /build \
	${PREFIX}-job
