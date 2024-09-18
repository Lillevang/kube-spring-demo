#!/bin/bash

# Set up Knative serving
kubectl apply -f https://github.com/knative/serving/releases/latest/download/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/latest/download/serving-core.yaml

# Set up Kourier as the networking layer
kubectl apply -f https://github.com/knative/net-kourier/releases/latest/download/kourier.yaml
kubectl patch configmap/config-network \
    --namespace knative-serving \
    --type merge \
    --patch '{"data":{"ingress.class":"kourier.ingress.networking.knative.dev"}}'

# Wait for Knative components to be ready
kubectl wait --for=condition=ready pod --all --namespace knative-serving --timeout=300s

echo "Knative and Kourier are installed and ready."