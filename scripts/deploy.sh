#!/bin/bash

# Set variables
CLUSTER_NAME="brain-tasks-cluster"
REGION="ap-south-1"

# Update kubeconfig to access EKS
aws eks update-kubeconfig --region $REGION --name $CLUSTER_NAME

# Apply Kubernetes manifests
kubectl apply -f /app/k8s/deployment.yaml
kubectl apply -f /app/k8s/service.yaml
