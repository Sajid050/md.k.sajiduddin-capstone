# Project 7: CI Validation for Terraform

## Goal
Automate Infrastructure as Code (IaC) formatting and validation checks on every push using GitHub Actions.

## Steps Executed

1. Created a GitHub Actions workflow (`terraform-ci.yml`) to run Terraform checks automatically on code pushes.
2. Configured the workflow to checkout the repository, install Terraform, and execute validation tasks.
4. Pushed the changes to GitHub and verified successful pipeline execution.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform fmt -check -recursive` | Verifies that all Terraform files follow the required formatting standard. |
| `terraform init -backend=false` | Initializes Terraform without connecting to a remote backend. |
| `terraform validate` | Checks Terraform configuration files for syntax and configuration issues. |
| `git add . && git commit -m "Terraform Validation" && git push` | Commits the workflow configuration and triggers the GitHub Actions pipeline. |

## Validation Summary

- Confirmed successful execution of the GitHub Actions workflow.
- Verified Terraform formatting and validation checks completed successfully.
- Confirmed pipeline runs were triggered automatically on code pushes.

## Deliverables
- Passing GitHub Actions CI pipeline screenshot (`screenshots/`)