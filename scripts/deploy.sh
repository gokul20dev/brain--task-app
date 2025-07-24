#!/bin/bash

# Set kubeconfig path to use ec2-user's existing config (default)
export KUBECONFIG="/home/ec2-user/.kube/config"

# Verify kubectl connectivity
echo "🔍 Verifying kubectl connectivity..."
kubectl cluster-info || {
  echo "❌ kubectl cannot connect to the cluster"
  exit 1
}

# Apply Kubernetes manifests
echo "🚀 Applying Kubernetes manifests..."
kubectl apply -f /tmp/deployment.yml || {
  echo "❌ Failed to apply deployment.yml"
  exit 1
}

kubectl apply -f /tmp/service.yml || {
  echo "❌ Failed to apply service.yml"
  exit 1
}

echo "✅ Deployment completed successfully"
