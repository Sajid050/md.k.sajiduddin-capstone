# Project 24: Manual Chaos Test

## Goal
Simulate a service outage, execute manual recovery procedures, and document incident response notes and recovery verification.

## Steps Executed

1. Verified the initial operational state of the `nginx` service and confirmed successful application access with an `HTTP 200 OK` response.
2. Deliberately stopped the `nginx` service using `systemctl stop nginx` to simulate an unexpected application failure.
3. Monitored the service outage, validated the failure through connection errors (`Connection refused`), recorded the downtime event, and restored the service using `systemctl start nginx`.
4. Performed post-recovery checks to confirm the service returned to a healthy state (`active (running)`), verified successful HTTP responses, and documented the incident outcome.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `sudo systemctl status nginx` | Verifies the current health and operational status of the Nginx service prior to fault injection. |
| `sudo systemctl stop nginx` | Simulates a service interruption by intentionally stopping the web server. |
| `curl -I http://localhost` | Validates application availability and confirms service impact during the outage period. |
| `sudo systemctl start nginx && sudo systemctl status nginx` | Restarts the service and verifies that normal operation has been successfully restored. |

## Incident Summary

- **Fault Simulation:** The `nginx` service was intentionally stopped to evaluate failure detection and incident response procedures.
- **Observed Impact:** During the outage window, requests to port `80` were rejected, resulting in connection refusal errors and temporary service unavailability.
- **Recovery Action:** The service was restarted using `systemctl`, followed by validation checks confirming an `active (running)` state and successful `HTTP 200 OK` responses. Full recovery was achieved within one minute.

## Deliverables
- Incident notes and recovery verification screenshots (`screenshots/`)