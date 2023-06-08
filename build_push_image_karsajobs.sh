#!/bin/sh

# build docker image from Dockerfile with name thedaamanda/karsajobs and tag latest
docker build -t thedaamanda/karsajobs:latest .

# change name image to github packages format
docker tag thedaamanda/karsajobs:latest ghcr.io/thedaamanda/karsajobs:latest

# login to github packages via terminal
echo $CR_PAT | docker login ghcr.io -u thedaamanda --password-stdin

# push image to github packages
docker push ghcr.io/thedaamanda/karsajobs:latest
