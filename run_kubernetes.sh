#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="loiphamvan/pro3-loivan:v1.0.1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devmicro\
    --image=$dockerpath\
    --port=80 --labels app=devmicro

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward devmicro 8000:80