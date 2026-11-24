# Project 15: Automate Server Config with Ansible

## Goal
Automate remote web server installation and configuration across target EC2 nodes using an Ansible playbook.

## Steps Executed
1. Set up Ansible on the control node and configured an `inventory.ini` file with target EC2 IP and SSH key.
2. Tested SSH connectivity using Ansible's `ping` module.
3. Wrote an Ansible playbook (`webserver.yml`) to update packages, install Nginx, deploy `index.html`, and enable the service.
4. Executed the playbook and verified the live webpage on the managed server.

## Commands Used and Their Function
| Command | Function |
| :--- | :--- |
| `ansible all -i inventory.ini -m ping` | Verifies passwordless SSH connectivity and Python availability on target nodes. |
| `ansible-playbook -i inventory.ini setup-webserver.yml --syntax-check` | Checks the YAML playbook syntax before execution. |
| `ansible-playbook -i inventory.ini setup-webserver.yml` | Executes tasks remotely to install Nginx, copy webpage files, and start the service. |
| `curl http://<TARGET-EC2-IP>` | Confirms that Nginx is serving the deployed webpage. |

## Validation Summary

- Confirmed successful communication between the Ansible control node and the managed EC2 instance.
- Verified error-free execution of the Ansible playbook.
- Automated the installation and configuration of Nginx using Infrastructure as Code principles.
- Successfully deployed the web application content to the target server.
- Validated that the hosted webpage was accessible and responding correctly after playbook execution.

## Deliverables
- `inventory.ini` and `webserver.yml` playbook
- Ansible execution and browser proof screenshots (`screenshots/`)