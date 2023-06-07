#!/usr/bin/env bash

# if the device doesn't exist run will fail, so the device must be connected first
# altenatively the container can be run in privileged mode

# access to the X server needs to be enabled before starting the container (e.g. with "xhost +")

: ${DEV:="/dev/ttyACM0"}
: ${IMAGE:="asssaf/thonny:master"}

docker run -it --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--device "$DEV" \
	"$IMAGE" $*
