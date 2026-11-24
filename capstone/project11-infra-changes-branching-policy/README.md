# Project 11: Infra Changes with Branching Policy

## Goal
Enforce a structured Git branching strategy where infrastructure changes are developed in feature branches and merged via Pull Request review.

## Steps Executed

1. Applied branch protection rules on the `main` branch to enforce Pull Request reviews before merging changes.
2. Created a feature branch (`feature-project11`), updated the infrastructure code, and pushed the changes to GitHub.
3. Opened a Pull Request to review the proposed modifications before integration.
4. Approved and merged the Pull Request into the `main` branch after validating the changes.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `git checkout -b feature-project11` | Creates a new branch for isolated development. |
| `git diff` | Displays code changes before committing. |
| `git add . && git commit -m "feat: add security group rules"` | Stages and commits the infrastructure updates. |
| `git push -u origin feature-project11` | Pushes the feature branch to GitHub for Pull Request creation. |

## Validation Summary

- Confirmed branch protection was active on the `main` branch.
- Verified successful creation and push of the feature branch.
- Validated Pull Request review and approval workflow.
- Confirmed changes were successfully merged into `main`.

## Deliverables
- Screenshots of Pull Request creation, review, and successful merge (`screenshots/`)