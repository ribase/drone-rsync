#!/usr/bin/env bash

export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

make deps build
make deps docker
docker build --rm=true -t ribase/drone-rsync .
docker push ribase/drone-rsync