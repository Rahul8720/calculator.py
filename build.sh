#!/bin/bash

# Login to DockerHub
echo "$DOCKER_PASS" | docker login -u rahul9786 --password-stdin

# Stop & remove old container
docker stop web_app || true
docker rm web_app || true

# Build image
docker build -t cal_app .

# Run container
docker run -d --name web_app -p 8501:8501 cal_app

# Tag image (FIXED)
docker tag cal_app rahul9786/calculator_webapp:latest

# Push image
docker push rahul9786/calculator_webapp:latest
