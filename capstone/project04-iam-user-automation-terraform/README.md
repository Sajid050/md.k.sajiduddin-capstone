# Project 4: IAM User Automation with Terraform

## Goal
Automate IAM user creation with controlled Amazon S3 read-only permissions using Terraform variables.

## Steps Executed

1. Defined the Amazon S3 Read-Only policy as a Terraform variable for reusable IAM configuration.
2. Created an IAM user named `sajid-s3-reader` and attached the `AmazonS3ReadOnlyAccess` policy.
3. Generated access credentials for the IAM user and configured them for AWS CLI testing.
4. Verified that S3 read operations were allowed while administrative and write actions were restricted.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform apply -auto-approve` | Creates the IAM user and attaches the S3 read-only policy. |
| `aws configure --profile test-iam-user` | Configures AWS CLI credentials for the IAM user. |
| `aws s3 ls --profile test-iam-user` | Validates S3 read and list permissions. |
| `aws s3 mb s3://unauthorized-test-bucket --profile test-iam-user` | Confirms that write operations are denied for the IAM user. |

## Validation Summary

- Confirmed successful creation of the IAM user `sajid-s3-reader`.
- Verified attachment of the `AmazonS3ReadOnlyAccess` policy.
- Validated that S3 listing operations completed successfully.
- Confirmed restricted actions returned `AccessDenied` as expected.

## Deliverables
- Terraform repository link
- Test evidence screenshot (`screenshots/`)