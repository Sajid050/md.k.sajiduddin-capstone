# Project 18: GitOps Infra Deployment

## Goal
Trigger automated Terraform infrastructure deployment (`terraform apply`) upon Pull Request merges into `main` with environment approval gates.

## Steps Executed

1. Created a GitHub Environment named `feature-project11` and enabled mandatory reviewer approval to introduce a controlled deployment process.
2. Developed a GitHub Actions workflow following GitOps principles, configured to trigger automatically whenever changes were merged into the `main` branch.
3. Integrated infrastructure deployment stages into the workflow, including Terraform validation and planning, followed by a protected approval step before applying changes to the target environment.
4. Validated the end-to-end deployment process by confirming that infrastructure changes required manual approval prior to execution and were successfully applied after authorization.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `terraform init` | Initializes Terraform, downloads required provider plugins, and configures the backend for state management. |
| `terraform apply -auto-approve` | Applies approved infrastructure modifications automatically without additional confirmation prompts. |
| `git checkout main && git pull` | Updates the local repository with the latest merged changes from the main branch. |

## Validation Summary

- Confirmed successful creation of the `feature-project11` environment with deployment protection rules enabled.
- Verified that workflow execution was automatically triggered after Pull Request merges into the `main` branch.
- Ensured that reviewer approval was required before infrastructure deployment could proceed.
- Validated successful execution of both `terraform plan` and `terraform apply` stages within the GitHub Actions pipeline.
- Demonstrated a GitOps-based deployment workflow that provides governance, traceability, and controlled infrastructure change management.

## Deliverables
- GitHub Actions GitOps workflow run and approval screenshot (`screenshots/`)