#!/bin/sh

# build docker image from Dockerfile with name thedaamanda/shipping-service and tag latest
docker build -t thedaamanda/shipping-service:latest .

# change name image to github packages format
docker tag thedaamanda/shipping-service:latest ghcr.io/thedaamanda/shipping-service:latest

# login to github packages via terminal
echo $CR_PAT | docker login ghcr.io -u thedaamanda --password-stdin

# push image to github packages
docker push ghcr.io/thedaamanda/shipping-service:latest
