#!/bin/sh

# build docker image from Dockerfile with name thedaamanda/order-service and tag latest
docker build -t thedaamanda/order-service:latest .

# change name image to github packages format
docker tag thedaamanda/order-service:latest ghcr.io/thedaamanda/order-service:latest

# login to github packages via terminal
echo $CR_PAT | docker login ghcr.io -u thedaamanda --password-stdin

# push image to github packages
docker push ghcr.io/thedaamanda/order-service:latest
