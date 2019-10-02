#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=alchemistbear/udacityproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=alchemistbear/udacityproject:udacity udacitypod --port=1234

# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
sleep 15
kubectl port-forward deployments/udacitypod 8000:80
