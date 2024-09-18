#!/bin/bash

# Apply Knative service configuration
kubectl apply -f k8s/knative-service.yaml

# Check the status of the Knative service
kubectl get ksvc -n default