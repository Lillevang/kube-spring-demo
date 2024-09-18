#!/bin/bash

# Start Minikube with sufficient resources
minikube start --cpus=4 --memory=8192 --kubernetes-version=v1.30.0

# Enable the Minikube Ingress addon
minikube addons enable ingress

echo "Minikube started with Ingress enabled."