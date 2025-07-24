#!/bin/bash

echo "🚀 Deploying app to EKS..."
kubectl apply -f /kubernetes/deployment.yml
kubectl apply -f /kubernetes/service.yml
