#!/bin/bash
# Build Docker image for the application

# Specify the image name
IMAGE_NAME="vinothkumar017/react-app"

# Build the Docker image
docker build -t $IMAGE_NAME:dev .

# Push the image to Docker Hub (dev repo)
docker push $IMAGE_NAME:dev
