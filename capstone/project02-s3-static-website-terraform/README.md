# Project 2: Host a Static Website on Amazon S3 using Terraform

## Goal
Publish a publicly accessible static website on Amazon S3 using Terraform.

## Steps Executed

1. Defined an Amazon S3 bucket resource in Terraform using a unique bucket name.
2. Configured the bucket for public access and attached a policy to allow object read permissions.
3. Enabled static website hosting and specified `index.html` as the default landing page.
4. Uploaded the website content and tested accessibility through the generated website endpoint.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform init` | Initializes Terraform and downloads the AWS provider. |
| `terraform apply -auto-approve` | Creates the S3 bucket, applies the website configuration, and uploads the web content. |
| `terraform output website_endpoint` | Displays the public URL of the hosted website. |
| `curl -I http://<S3-WEBSITE-ENDPOINT>` | Verifies that the website is publicly accessible. |

## Validation Summary

- Confirmed successful creation of the S3 bucket through Terraform.
- Verified static website hosting was enabled.
- Validated upload of the `index.html` file.
- Confirmed the website was accessible using the generated endpoint URL.

## Deliverables
- Terraform repository link
- Screenshot of live S3 website (`screenshots/`)