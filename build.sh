#!/bin/bash

# Login to DockerHub
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Stop & remove old container
docker stop python-cals || true
docker rm python-cals || true

# Build image
docker build -t calculator-app .

# Run container
docker run -d --name python-cals -p 8501:8501 calculator-app

# Tag image (FIXED)
docker tag calculator-app rahul9786/calculator-py:latest

# Push image
docker push rahul9786/calculator-py:latest
