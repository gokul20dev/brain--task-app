# Brain Tasks App – CI/CD Deployment on AWS

This project demonstrates the deployment of a React application using Docker, AWS ECR, EKS, CodeBuild, CodeDeploy, and CodePipeline. The application runs on port 3000 and is deployed in a production-ready state using Kubernetes.

---

## 🧠 Application Details

- **App Name**: Brain Tasks App  
- **Tech Stack**: React.js  
- **GitHub Repository**: [Brain-Tasks-App](https://github.com/Vennilavan12/Brain-Tasks-App.git)  
- **Exposed Port**: 3000  

---

## ⚙️ Tools & AWS Services Used

- Docker
- AWS ECR (Elastic Container Registry)
- AWS EKS (Elastic Kubernetes Service)
- AWS CodeBuild
- AWS CodeDeploy
- AWS CodePipeline
- Amazon CloudWatch
- GitHub

---

## 🚀 Project Workflow

### 1. Clone the Repository
```bash
git clone https://github.com/Vennilavan12/Brain-Tasks-App.git
cd Brain-Tasks-App
### 2. Dcokerize the App
thorugh dockerfile
### 3.push docker image to ecr

### 4. kubernetes deploymennt on was eks
aws eks update-kubeconfig --region ap-south-1 --name gokul-cluster
kubectl get nodes
### 5. add deployment and service file 
kubectl apply -f deployment.yml
kubectl apply -f service.yml

#### create codebuild,code deploy and codepipline 
### cloudwatch added
