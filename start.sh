#!/usr/bin/env bash

CONTAINER_NAME=jenkins
FOLDER=$(pwd)/jenkins-data

docker run \
  --rm \
  --name $CONTAINER_NAME \
  -u root \
  -p 8080:8080 \
  -v $FOLDER:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$HOME":/home \
  jenkinsci/blueocean

docker container rm -f $CONTAINER_NAME