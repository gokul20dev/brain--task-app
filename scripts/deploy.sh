#!/bin/bash

# Set variables
CLUSTER_NAME="brain-tasks-cluster"
REGION="ap-south-1"

# Update kubeconfig to access EKS
aws eks update-kubeconfig --region $REGION --name $CLUSTER_NAME

# Apply Kubernetes manifests
kubectl apply -f kubernetes/deployment.yml
kubectl apply -f kubernetes/service.yml
