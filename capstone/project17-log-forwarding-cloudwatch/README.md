# Project 17: Log Forwarding to CloudWatch

## Goal
Forward Linux/application logs from an EC2 instance to Amazon CloudWatch Logs for centralized monitoring.

## Steps Executed

1. Attached an IAM role with CloudWatch permissions to the EC2 instance to allow secure communication with Amazon CloudWatch Logs.
2. Installed and configured the Amazon CloudWatch Agent on the Linux host `AZLTT0222435e27`.
3. Created a CloudWatch Agent configuration to collect operating system and application logs and publish them to dedicated CloudWatch Log Groups.
4. Configured log forwarding for system logs and application logs, including the log groups `/capstone/project17-syslog` and `/capstone/project17-app-logs`.
5. Started the CloudWatch Agent service and verified successful log ingestion by checking the generated log groups and streams in Amazon CloudWatch.
6. Validated that new log entries were being delivered from the server to CloudWatch in near real time.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `sudo apt-get install -y amazon-cloudwatch-agent` | Installs the Amazon CloudWatch Agent package on the Linux server. |
| `sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json` | Loads the custom agent configuration and starts log collection. |
| `sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -m ec2 -a status` | Checks the current operational status of the CloudWatch Agent service. |
| `aws logs describe-log-groups --log-group-name-prefix "/capstone"` | Lists available CloudWatch Log Groups and verifies successful log group creation. |

## Validation Summary

- Confirmed successful installation and configuration of the Amazon CloudWatch Agent.
- Verified that the CloudWatch Agent was running normally on the EC2 instance.
- Confirmed that log data was successfully transmitted from the EC2 instance to Amazon CloudWatch Logs.
- Verified centralized log visibility for monitoring and troubleshooting purposes through the AWS CloudWatch console.

## Deliverables
- CloudWatch Log Group / Log Stream dashboard screenshot (`screenshots/`)