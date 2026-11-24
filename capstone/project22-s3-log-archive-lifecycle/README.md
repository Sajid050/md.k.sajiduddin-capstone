# Project 22: S3 Log Archive with Lifecycle

## Goal
Automate log storage cost optimization and retention by configuring an Amazon S3 Lifecycle expiration rule.

## Steps Executed

1. Uploaded application log files to a designated Amazon S3 bucket under the `logs/` directory structure for centralized storage and retention management.
2. Created an S3 Lifecycle policy targeting objects stored within the `logs/` prefix.
3. Configured automated lifecycle actions to transition older log files to lower-cost storage classes, such as S3 Standard-IA or Glacier, and permanently remove them after 30 days.
4. Validated the lifecycle configuration through the S3 console and confirmed that the rule was enabled and actively associated with the specified prefix.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `aws s3 cp app.log s3://<BUCKET-NAME>/logs/app.log` | Uploads the application log file to the designated `logs/` folder within the S3 bucket. |
| `aws s3api get-bucket-lifecycle-configuration --bucket <BUCKET-NAME>` | Retrieves and displays the configured lifecycle policies, including storage transitions and expiration settings. |

## Validation Summary

- Confirmed successful upload of log files into the defined S3 bucket location.
- Verified that the lifecycle policy was correctly scoped to the `logs/` prefix.
- Ensured that automatic storage class transitions and object expiration rules were configured according to retention requirements.
- Validated that the lifecycle configuration was active and ready to manage log data automatically without manual intervention.

## Deliverables
- Screenshot of the S3 Lifecycle Expiration rule configuration (`screenshots/`)