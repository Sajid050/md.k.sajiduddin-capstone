# Project 10: Internal DNS Setup

## Goal
Deploy an internal DNS server and resolve internal web server hostnames to private IP addresses.

## Steps Executed

1. Installed and configured the BIND9 DNS server on the Ubuntu host.
2. Created a forward lookup zone named `project9.local` in the BIND configuration.
3. Added DNS records in the zone file to map `web.project9.local` to the application server IP address.
4. Validated the DNS configuration, restarted the DNS service, and tested hostname resolution successfully.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `sudo apt-get install -y bind9 bind9utils dnsutils` | Installs the BIND9 DNS server and supporting DNS utilities. |
| `sudo named-checkconf` | Checks the BIND configuration files for syntax errors. |
| `sudo named-checkzone project9.local /etc/bind/db.project9.local` | Validates the DNS zone file configuration. |
| `sudo systemctl restart bind9` | Restarts the BIND9 service to apply configuration changes. |
| `nslookup web.project9.local` | Verifies successful DNS resolution from the local DNS server. |

## Validation Summary

- Confirmed successful installation of the BIND9 DNS service.
- Verified the `project9.local` zone was configured correctly.
- Validated DNS records using zone file checks.
- Confirmed `web.project9.local` resolved to the configured IP address.

## Deliverables
- `nslookup` resolution proof screenshot (`screenshots/`)