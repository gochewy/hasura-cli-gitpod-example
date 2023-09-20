FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y curl socat
RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | bash

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod