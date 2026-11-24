# Project 1: Deploy a Linux EC2 Web Server using Terraform

## Goal
Create a Linux web server on AWS using Infrastructure as Code (Terraform) and host a test webpage.

## Steps Executed

1. Developed Terraform code to provision a VPC, public subnet, internet gateway, route table, security group, and EC2 instance.
2. Configured a `userdata` script to automatically install a web server and deploy a custom landing page during instance launch.
3. Initialized and applied the Terraform configuration to create the AWS infrastructure.
4. Tested the deployed application using the EC2 public IP address.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform init` | Initializes the Terraform workspace and downloads required providers. |
| `terraform fmt` | Formats Terraform files according to standard conventions. |
| `terraform validate` | Checks Terraform configurations for syntax and validation errors. |
| `terraform plan` | Displays the resources that Terraform will create or modify. |
| `terraform apply -auto-approve` | Deploys the infrastructure resources to AWS. |
| `curl -I http://<EC2-PUBLIC-IP>` | Verifies that the web server is reachable and responding. |

## Validation Summary

- Confirmed successful creation of the AWS infrastructure using Terraform.
- Verified automatic web server installation through the `userdata` script.
- Validated deployment of the custom web page on the EC2 instance.
- Confirmed application accessibility through the instance public IP.

## Deliverables
- Terraform code in GitHub repository.
- Screenshot of live hosted webpage (`screenshots/`)