FROM ubuntu:focal
ARG numpy_version=1.24.0
RUN apt update \
    && apt-get install python3-pip --yes \
    && pip install numpy==$numpy_version
RUN apt install curl -y

WORKDIR /scripts