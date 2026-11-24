# Project 12: Infrastructure CI Trigger (Terraform Plan)

## Goal
Automatically run `terraform plan` inside a CI pipeline on every push to preview infrastructure changes before applying.

## Steps Executed

1. Created a GitHub Actions workflow (`terraform-plan.yml`) to run automatically on push and pull request events.
2. Stored AWS authentication details securely using GitHub repository secrets.
3. Configured the workflow to execute `terraform init`, `terraform validate`, and `terraform plan -no-color`.
4. Triggered the pipeline through a Git push and reviewed the Terraform plan output in GitHub Actions.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform init` | Initializes Terraform and downloads required providers. |
| `terraform plan -no-color` | Generates an execution plan showing proposed infrastructure changes. |
| `git push origin main` | Pushes code changes and triggers the GitHub Actions workflow. |

## Validation Summary

- Verified successful workflow execution in GitHub Actions.
- Confirmed Terraform initialization and validation completed without errors.
- Validated generation of the Terraform execution plan.
- Confirmed pipeline logs were available for review in GitHub Actions.

## Deliverables
- GitHub Actions job success screenshot displaying `terraform plan` output (`screenshots/`)