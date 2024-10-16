#!/bin/bash
# Deploy Docker image to the server

# Pull the latest image from Docker Hub
IMAGE_NAME="vinothkumar017/react-app"
docker pull $IMAGE_NAME:dev

# Run the container on port 80
docker run -d -p 80:80 $IMAGE_NAME:dev

