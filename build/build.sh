#!/bin/bash
#
. ./vars.env

export USERUID=$(id -u)
export GROUPID=$(id -g)

docker image build -t $DOCKER --build-arg USERUID=$USERUID --build-arg GROUPID=$GROUPID .
