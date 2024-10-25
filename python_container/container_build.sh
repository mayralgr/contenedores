#!/bin/bash
IMAGE_NAME="python-container"
VERSION_IMAGE=0.0.1
NUMPY_VERSION=1.24.4

podman build -t local-$IMAGE_NAME:$VERSION_IMAGE \
    --build-arg numpy_version=$NUMPY_VERSION \
    --file Dockerfile .

if [[ $? -eq 0 ]]; then
  echo "image build success now you can run the container"
else
  echo "docker build failed please check the reason"
  exit 1
fi