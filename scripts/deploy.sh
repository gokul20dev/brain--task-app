#!/bin/bash

# Set variables
CLUSTER_NAME="gokul-cluster"
REGION="ap-south-1"

# Update kubeconfig to access EKS
echo "Configuring kubectl for EKS"
aws eks update-kubeconfig --region $REGION --name $CLUSTER_NAME || { echo "Failed to update kubeconfig"; exit 1; }

# Apply Kubernetes manifests
echo "Applying Kubernetes manifests..."
kubectl apply -f /tmp/deployment.yml || { echo "Failed to apply deployment.yml"; exit 1; }
kubectl apply -f /tmp/service.yml || { echo "Failed to apply service.yml"; exit 1; }

echo "Deployment completed successfully"
