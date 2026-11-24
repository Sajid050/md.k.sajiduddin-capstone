# Project 23: IAM Role Based Access

## Goal
Enable secure, credential-free access to Amazon S3 from an EC2 instance by attaching an IAM Instance Profile Role.

## Steps Executed

1. Created an IAM role named `sajid-p23-ec2-s3-profile` and assigned the necessary S3 read permissions using either the managed `AmazonS3ReadOnlyAccess` policy or a custom bucket-specific policy.
2. Associated the IAM role with the active EC2 instance to enable secure AWS resource access without storing permanent access keys on the server.
3. Connected to the EC2 instance and validated role-based authentication by executing AWS CLI commands that leveraged temporary credentials provided through the instance metadata service (IMDSv2).

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `aws sts get-caller-identity` | Verifies that the EC2 instance is successfully authenticated using the attached IAM role and displays the active AWS identity. |
| `aws s3 ls` | Lists available S3 buckets accessible through the IAM role, confirming successful role-based access. |
| `aws s3 ls s3://<BUCKET-NAME>` | Validates read permissions by displaying the contents of a specific S3 bucket. |

## Validation Summary

- Confirmed that the EC2 instance obtained temporary AWS credentials automatically through the attached IAM role.
- Verified successful authentication without using hardcoded `AWS_ACCESS_KEY_ID` or `AWS_SECRET_ACCESS_KEY` values.
- Confirmed S3 access by listing available buckets and retrieving object information from the designated bucket.
- Demonstrated adherence to AWS security best practices by using IAM roles for EC2 instead of long-term access credentials.

## Deliverables
- Terminal screenshot showing `aws sts get-caller-identity` and `aws s3 ls` CLI test output (`screenshots/`)