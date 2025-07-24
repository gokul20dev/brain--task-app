#!/bin/bash

echo "🚀 Deploying app to EKS..."
kubectl apply -f /tmp/deployment.yml
kubectl apply -f /tmp/service.yml
