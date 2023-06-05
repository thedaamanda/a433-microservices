#!/bin/sh

# build docker image from Dockerfile with name item-app and tag v1
docker build -t item-app:v1 .

# show list docker images in local
docker images

# change name image to github packages format
docker tag item-app:v1 ghcr.io/thedaamanda/item-app:v1

# export github personal access token
export CR_PAT=

# login to github packages via terminal
echo $CR_PAT | docker login ghcr.io -u thedaamanda --password-stdin

# push image to github packages
docker push ghcr.io/thedaamanda/item-app:v1
