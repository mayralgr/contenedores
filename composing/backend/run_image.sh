#!/bin/bash
IMAGE_NAME="backend-test"
VERSION_IMAGE=0.0.1
# -it pseudo tty and -i stdin open
# --rm removes container if another was running
# --dp maps the ports
# --name the name of the container
# name of the image to run and open a bash command line
podman run -it --rm -dp 5055:8080 --name $IMAGE_NAME local-$IMAGE_NAME:$VERSION_IMAGE