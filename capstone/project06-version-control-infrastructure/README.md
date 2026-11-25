# Project 6: Version Control Infrastructure

## Goal
Track Terraform infrastructure changes cleanly using Git branches, commits, and Pull Requests on GitHub.

## Steps Executed

1. Created a separate feature branch from `main` to develop infrastructure changes independently.
2. Updated the Terraform configuration and recorded the changes with meaningful commit messages.
3. Pushed the branch to GitHub and submitted a Pull Request for review.
4. Reviewed and merged the approved changes into the main codebase.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `git checkout -b feature-update` | Creates and switches to a new feature branch. |
| `git status` | Displays modified and pending files in the repository. |
| `git add .` | Stages Terraform changes for commit. |
| `git commit -m "Updated EC2 tags"` | Saves the infrastructure updates in version control. |
| `git push -u origin feature-update` | Uploads the feature branch to GitHub for Pull Request creation. |

## Validation Summary

- Confirmed successful creation of the feature branch.
- Verified Terraform changes were committed and pushed to GitHub.
- Validated Pull Request creation and review workflow.
- Confirmed changes were merged into the `main` branch successfully.

## Deliverables
- GitHub Pull Request (PR) link and screenshot (`screenshots/`)