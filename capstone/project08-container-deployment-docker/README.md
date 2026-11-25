# Project 8: Container Deployment with Docker

## Goal
Containerize a web application using a `Dockerfile` and run it locally in a Docker container.

## Steps Executed

1. Created a `Dockerfile` using the lightweight `nginx:alpine` image and copied the application files into the container.
2. Built the Docker image locally and assigned a custom version tag.
3. Launched a container in detached mode with port `8080` mapped to the container's web server port.
4. Checked the container status and verified application access through the mapped port.

## Commands Used and Their Function

| Command | Function |
|----------|----------|
| `docker build -t project8-app .` | Builds a Docker image from the local Dockerfile. |
| `docker images` | Displays locally available Docker images and tags. |
| `docker run -d --name project8-container -p 8080:80 project8-app` | Starts a container and maps host port `8080` to container port `80`. |
| `docker ps` | Lists running containers and verifies container status. |
| `curl http://localhost:8080` | Tests the web application running inside the container. |

## Validation Summary

- Confirmed successful Docker image creation.
- Verified the container started and remained in a running state.
- Validated port mapping between the host and container.
- Confirmed the application was accessible on `http://localhost:8080`.

## Deliverables
- `Dockerfile` and application files
- Screenshot of running container and webpage output (`screenshots/`)