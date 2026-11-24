# Project 19: Scheduled S3 Backup

## Goal
Automate scheduled daily backups of server logs to an Amazon S3 bucket using a Linux `cron` job.

## Steps Executed

1. Developed an automated backup script named `backup.sh` to archive server log files, generate timestamped backup packages, and transfer them to an Amazon S3 bucket.
2. Assigned executable permissions to the script and performed a manual execution to validate successful archive creation and upload.
3. Configured a scheduled cron job to run the backup process automatically at a predefined interval without manual intervention.
4. Verified that the generated `.tar.gz` backup files were successfully stored in the designated S3 bucket and were available for retrieval.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `tar -czf /tmp/logs-$(date +%F).tar.gz /var/log/nginx` | Creates a compressed archive of the Nginx log directory with a date-based filename for backup purposes. |
| `aws s3 cp /tmp/logs-*.tar.gz s3://<BACKUP-BUCKET>/logs/` | Transfers the generated backup archive to the specified Amazon S3 bucket location. |
| `crontab -e` | Opens the cron configuration file to schedule automated execution of the backup script. |
| `aws s3 ls s3://<BACKUP-BUCKET>/logs/` | Displays the contents of the backup location and confirms successful archive uploads. |

## Validation Summary

- Confirmed successful creation of compressed log archives using the backup script.
- Verified that backup files were uploaded to the designated S3 bucket without errors.
- Validated the scheduled cron configuration for automated execution of the backup workflow.
- Ensured that backup archives were visible in Amazon S3 and available for future recovery or auditing requirements.

## Deliverables
- Backup script (`backup.sh`) and crontab entry
- Screenshot of S3 bucket showing uploaded backup files (`screenshots/`)