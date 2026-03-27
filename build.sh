#!/bin/bash

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker stop python-cals || true
docker rm python-cals || true

docker build -t calculator-app .

docker run -d --name python-cals -p 8501:8501 calculator-app

docker tag react-app rahul9786/calculator-py:latest

docker push rahul9786/calculator-py:latest
