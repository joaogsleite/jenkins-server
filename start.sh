#!/usr/bin/env bash

CONTAINER=jenkins
IMAGE=jenkinsci/blueocean
FOLDER=$(pwd)/jenkins-data

docker run \
  -u root \
  --rm \
  -it \
  -p 8080:8080 \
  -v $FOLDER:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name $CONTAINER \
  $IMAGE

docker container rm -f $CONTAINER || true