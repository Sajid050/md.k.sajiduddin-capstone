# Project 5: Secure Linux Server Permissions

## Goal
Apply Linux user and group-based file/directory access restrictions and verify allowed vs. denied access.

## Steps Executed

1. Created Linux user groups (`developers`) along with the users `devuser` and `testuser`.
2. Configured a secure directory (`/projectdata`) and assigned ownership to the `developers` group with restricted permissions.
3. Tested directory access for an authorized user (`devuser`) and an unauthorized user (`testuser`).
4. Confirmed that access controls were enforced based on group membership.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `sudo groupadd developers` | Creates dedicated groups for access management. |
| `sudo useradd -m -G developers devuser` | Creates `devuser` and associates the account with the `developers` group. |
| `sudo useradd -m -G developers testuser` | Creates `testuser` and assigns it to the `developers` group. |
| `sudo mkdir -p /projectdata && sudo chown root:developers /projectdata` | Creates the project directory and assigns group ownership. |
| `sudo chmod 750 /projectdata` | Restricts directory access based on ownership and group permissions. |
| `su - devuser -c "ls -la /projectdata"` | Validates access for an authorized user. |
| `su - testuser -c "ls -la /projectdata"` | Verifies that unauthorized access is denied. |

## Validation Summary

- Verified successful creation of users and groups.
- Confirmed the directory ownership and permission settings were applied correctly.
- Validated access for `devuser` as a member of the `developers` group.
- Confirmed `testuser` was denied access to the protected directory.

## Deliverables
- Screenshots of allowed and denied access outputs (`screenshots/`)
- Short permission design write-up withing README.md itself.