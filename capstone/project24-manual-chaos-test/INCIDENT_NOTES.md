# Incident Recovery Report

## Incident Information

| Field | Details |
|---------|---------|
| Incident ID | INC-2026-P24-001 |
| Project | Project 24 - Manual Chaos Testing |
| Service Affected | `nginx.service` |
| Environment | Linux VM (`AZLTT0222435e27`) |
| Severity | Low |
| Status | Resolved |

## Incident Overview

As part of a controlled chaos engineering exercise, the `nginx` web service was intentionally stopped to simulate an unexpected application outage. The test was conducted to validate service monitoring, outage detection, and recovery procedures.

## Event Timeline

| Time (UTC) | Event |
|------------|--------|
| 2026-11-23 06:08:34 | Verified that the `nginx` service was operating normally. |
| 2026-11-23 07:04:45 | Simulated an outage by executing `systemctl stop nginx`. |
| 2026-11-23 07:03:53 | Confirmed service unavailability and failed endpoint connectivity checks. |
| 2026-11-23 07:04:55 | Initiated recovery using `systemctl start nginx`. |
| 2026-11-23 07:05:44 | Verified successful service restoration and healthy application response. |

## Impact Assessment

- Web traffic served through `nginx` became temporarily unavailable during the test window.
- Requests to the application endpoint failed while the service remained stopped.
- No data loss or configuration changes occurred as a result of the test.

## Root Cause

The outage was intentionally triggered by manually stopping the `nginx` service as part of a planned resilience and recovery validation exercise.

## Recovery Actions

1. Identified the stopped service state using system monitoring commands.
2. Restarted the service using `systemctl start nginx`.
3. Verified service health through status checks.
4. Confirmed endpoint accessibility by receiving a successful `HTTP 200 OK` response.

## Resolution Summary

The affected service was restored successfully within a few seconds of the failure injection. Post-recovery validation confirmed that `nginx` returned to an `active (running)` state and application traffic resumed normal operation without errors.

## Lessons Learned

- Service recovery procedures were effective and completed successfully.
- Monitoring checks accurately reflected the service outage.
- The environment demonstrated the ability to recover from a basic service-level failure with minimal downtime.