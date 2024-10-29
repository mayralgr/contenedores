#!/bin/bash
IMAGE_NAME="backend-test"
VERSION_IMAGE=0.0.1

podman build -t local-$IMAGE_NAME:$VERSION_IMAGE \
    --file Dockerfile .

if [[ $? -eq 0 ]]; then
  echo "image build success now you can run the container"
else
  echo "docker build failed please check the reason"
  exit 1
fi