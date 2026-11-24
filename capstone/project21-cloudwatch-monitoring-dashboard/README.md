# Project 21: CloudWatch Monitoring Dashboard

## Goal
Visualize key infrastructure performance metrics in a unified Amazon CloudWatch Monitoring Dashboard.

## Steps Executed

1. Accessed Amazon CloudWatch and created a custom monitoring dashboard named `sajid-dashboard-pr21` to provide centralized visibility into infrastructure performance metrics.
2. Added multiple visualization widgets, including line graphs and metric summaries, to track key indicators such as `CPUUtilization`, `NetworkIn`, `NetworkOut`, `Capstone VMLoad`, and Application Load Balancer request volume.
3. Customized the dashboard layout, configured automatic refresh intervals for near real-time monitoring, and saved the dashboard for ongoing operational use.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `aws cloudwatch list-dashboards` | Displays the available CloudWatch dashboards and verifies successful dashboard creation. |
| `aws cloudwatch get-dashboard --dashboard-name sajid-dashboard-pr21` | Retrieves the dashboard definition and widget configuration in JSON format for validation and review. |

## Validation Summary

- Confirmed successful creation of the custom CloudWatch dashboard.
- Verified that EC2 performance metrics, including CPU, network throughput, and disk operations, were properly added as monitoring widgets.
- Ensured that Application Load Balancer request metrics were available for traffic analysis and monitoring.
- Validated the dashboard configuration through both the AWS Management Console and AWS CLI.
- Confirmed that automatic refresh settings were enabled to support continuous infrastructure monitoring.

## Deliverables
- Screenshot of the CloudWatch Monitoring Dashboard displaying live metrics (`screenshots/`)