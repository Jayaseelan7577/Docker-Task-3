# Docker Task - 3

## Objective

Create a custom Docker image for Nginx and deploy it using Docker Compose with a volume bind mount at /var/opt/nginx.

## Technologies Used

- AWS EC2
- Docker
- Docker Compose
- Nginx

## Project Files

- Dockerfile - Custom Nginx Docker image configuration.
- docker-compose.yml - Deploys the Nginx container using Docker Compose.
- index.html - Web page served by Nginx.
- nginx/ - Host directory used for the Docker bind mount.

## Docker Image

The custom Nginx image is built using the Dockerfile with nginx:alpine as the base image.

## Docker Compose Deployment

The application is deployed using Docker Compose.

The container exposes Nginx port 80 and maps it to host port 8080 for testing.

## Volume Bind Mount

The host directory is bind-mounted to the required container location:

    /var/opt/nginx

The bind mount was verified using docker inspect.

## Verification

The deployment was verified using:

    docker compose ps
    docker inspect docker-task-3-nginx
    curl http://localhost:8080

The website was also successfully accessed through the EC2 public IP on port 8080.

## Result

A custom Nginx Docker image was successfully built and deployed using Docker Compose with the required /var/opt/nginx bind mount.
