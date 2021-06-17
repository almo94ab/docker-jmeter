#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
JMETER_VERSION=${JMETER_VERSION:-"5.4"}
IMAGE="almo94ab/jmeter:${JMETER_VERSION}"

# Finally run
docker run --name ${NAME} --rm -ti --entrypoint sh -v "/${PWD}":"/${PWD}" -w "/${PWD}" ${IMAGE} $@
