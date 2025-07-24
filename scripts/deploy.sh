#!/bin/bash

echo "🚀 Deploying app to EKS..."
kubectl apply -f /tmp/kubernetes/deployment.yml
kubectl apply -f /tmp/kubernetes/service.yml
