#!/bin/bash

echo "======================================="
echo " Streamlit Calculator Deployment "
echo "======================================="

docker rm -f calculator-app || true

docker rmi cal-app || true

docker build -t cal-app .

docker run -d \
  --name calculator-app \
  -p 8501:8501 \
  cal-app

docker ps
