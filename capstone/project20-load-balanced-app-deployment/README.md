# Project 20: Load Balanced App Deployment

## Goal
Improve application availability and traffic distribution by deploying two EC2 web servers behind an Application Load Balancer (ALB) with health checks.

## Steps Executed

1. Provisioned two EC2 instances, `sajid-project20-webserver-1` and `sajid-project20-webserver-2`, to host the sample web application.
2. Created a Target Group configured with HTTP health checks on the root path (`/`) to continuously monitor instance availability.
3. Registered both EC2 instances with the Target Group and integrated the Target Group with the Application Load Balancer (`sajid-project20-alb`).
4. Confirmed that both targets reported a healthy status and validated load distribution by repeatedly accessing the ALB endpoint.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `aws elbv2 describe-target-health --target-group-arn <TG_ARN>` | Retrieves the health status of registered targets and verifies that the EC2 instances are successfully passing health checks. |
| `for i in {1..6}; do curl -s http://<ALB-DNS-NAME>; done` | Sends multiple requests to the Application Load Balancer to validate request distribution across the registered backend instances. |

## Validation Summary

- Verified successful registration of `sajid-project20-webserver-1` and `sajid-project20-webserver-2` in the Target Group.
- Confirmed that health checks were functioning correctly and that both instances achieved a healthy status.
- Validated connectivity through the Application Load Balancer (`sajid-project20-alb`) using its DNS endpoint.
- Observed load-balancing behavior by sending repeated requests and confirming that traffic was routed through the configured backend infrastructure.

## Deliverables
- Screenshot of healthy Target Group and load-balanced responses (`screenshots/`)