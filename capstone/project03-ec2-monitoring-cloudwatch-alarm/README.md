# Project 3: EC2 State Monitoring with CloudWatch Alarm

## Goal
Monitor EC2 CPU utilization and trigger a CloudWatch alarm when CPU usage spikes above the threshold.

## Steps Executed

1. Provisioned an EC2 instance and a CloudWatch CPU utilization alarm using Terraform.
2. Configured the alarm `sajid-high-cpu` to monitor the `CPUUtilization` metric for the EC2 instance.
3. Generated CPU load on the instance using the `stress` utility to test the alarm configuration.
4. Monitored the alarm status in CloudWatch and verified the metric data against the configured threshold.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform apply -auto-approve` | Creates the EC2 instance and CloudWatch alarm resources. |
| `sudo apt-get install -y stress` | Installs the CPU stress-testing utility. |
| `stress --cpu 2 --timeout 300` | Generates CPU load to trigger the monitoring threshold. |
| `aws cloudwatch describe-alarms --alarm-names sajid-high-cpu` | Displays the current state and configuration of the alarm. |

## Validation Summary

- Confirmed successful deployment of the CloudWatch alarm through Terraform.
- Verified that the `sajid-high-cpu` alarm was monitoring EC2 CPU utilization.
- Validated CPU metric collection during the stress test.
- Confirmed alarm status changes were reflected in the CloudWatch console.

## Deliverables
- Terraform code in GitHub repository
- Screenshot of CloudWatch Alarm in `In alarm` state (`screenshots/`)