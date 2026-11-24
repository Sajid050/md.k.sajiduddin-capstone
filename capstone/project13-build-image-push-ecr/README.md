# Project 13: Build Image and Push to ECR

## Goal
Build a Docker container image locally and push it to a private Amazon Elastic Container Registry (ECR) repository.

## Steps Executed

1. Created a private Amazon ECR repository named `sajid-project13`.
2. Authenticated the Docker client with AWS ECR using a temporary login token.
3. Built the container image locally, tagged it with the ECR repository URI, and pushed it to the repository.
4. Verified the uploaded image and associated metadata in the ECR console.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `aws ecr create-repository --repository-name capstone-app` | Creates a private repository in Amazon ECR. |
| `aws ecr get-login-password --region ap-south-1 \| docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com` | Authenticates Docker with the ECR registry. |
| `docker build -t capstone-app .` | Builds the Docker image from the Dockerfile. |
| `docker tag capstone-app:latest <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com/capstone-app:latest` | Tags the image with the ECR repository URI. |
| `docker push <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com/capstone-app:latest` | Pushes the image to Amazon ECR. |

## Validation Summary

- Confirmed successful ECR repository creation.
- Verified Docker authentication with AWS ECR.
- Validated successful image push to the repository.
- Confirmed image availability through the AWS ECR console.

## Deliverables
- AWS ECR console screenshot showing the uploaded image (`screenshots/`)