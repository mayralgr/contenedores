#!/bin/bash
IMAGE_NAME="python-container"
VERSION_IMAGE=0.0.1
NUMPY_VERSION=1.24.4

podman build -t local-$IMAGE_NAME:$VERSION_IMAGE \
    --build-arg numpy_version=$NUMPY_VERSION \
    --file Dockerfile .

if [[ $? -eq 0 ]]; then
  echo "image build success now will run the container"
else
  echo "docker build failed please check the reason"
  exit 1
fi

# -it pseudo tty and -i stdin open
# --rm removes container if another was running
# links scripts in the container with in the folder scripts folder
# name of the image to run and open a bash command line
podman run -it --rm \
    -v $PWD/scripts:/scripts local-$IMAGE_NAME:$VERSION_IMAGE /bin/bash 
