# Project 16: Enable HTTPS using ACM

## Goal
Secure web application traffic over HTTPS using AWS Certificate Manager (ACM) and an Application Load Balancer (ALB), while blocking/redirecting unencrypted HTTP.

## Steps Executed

1. Requested and validated an SSL/TLS certificate through AWS Certificate Manager (ACM) for securing application traffic.
2. Configured an HTTPS listener on the Application Load Balancer (`sajid-project20-alb`) and associated the ACM certificate with the listener.
3. Linked the HTTPS listener to the existing Target Group so that encrypted client requests could be forwarded to the backend EC2 instances.
4. Configured the HTTP listener to automatically redirect incoming traffic from port 80 to port 443, ensuring secure communication.
5. Tested connectivity through the ALB endpoint and verified that HTTPS traffic was served successfully using the installed certificate.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `aws acm list-certificates` | Displays available ACM certificates and verifies that the certificate is in an active state. |
| `curl -I https://<ALB-DNS-NAME>` | Confirms successful HTTPS connectivity and validates the secure response from the Application Load Balancer. |
| `curl -I http://<ALB-DNS-NAME>` | Verifies that HTTP requests are redirected to HTTPS or blocked according to the listener configuration. |
| `aws elbv2 describe-listeners --load-balancer-arn <ALB_ARN>` | Retrieves listener configurations and confirms HTTPS listener settings on the ALB. |

## Validation Summary

- Confirmed successful integration of an ACM-managed SSL/TLS certificate with the Application Load Balancer.
- Verified that the HTTPS listener on port 443 was forwarding requests to the configured Target Group.
- Validated that HTTP traffic on port 80 was redirected to HTTPS based on the listener rules.
- Confirmed secure application access through the ALB endpoint using encrypted HTTPS communication.
- Verified successful end-to-end connectivity between the Load Balancer and backend EC2 instances.

## Deliverables
- Screenshot showing secure `https://` lock icon in browser (`screenshots/`)