#!/usr/bin/env bash

PROJECT=rivr-maven-aws-docker
REGION=us-east-1
ACCOUNT=562949069997
TAG="`date +%Y%m%d%H%M`.`git rev-parse HEAD`"

docker tag "${PROJECT}:latest" "${ACCOUNT}.dkr.ecr.${REGION}.amazonaws.com/${PROJECT}:${TAG}"

docker push "${ACCOUNT}.dkr.ecr.${REGION}.amazonaws.com/${PROJECT}:${TAG}"


