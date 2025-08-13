#!/usr/bin/env bash
# ==================================================
# DOCKER COMMANDS CHEAT SHEET
# Save this file and run `bash docker-commands.sh` to view
# ==================================================

echo "===================="
echo "🐳 Docker Commands Cheat Sheet"
echo "===================="

# --- BASICS ---
echo "
# Check Docker version
docker --version

# List running containers
docker ps

# List all containers (including stopped)
docker ps -a

# List all images
docker images

# Show system-wide information
docker info
"

# --- CONTAINERS ---
echo "
# Run a container (interactive)
docker run -it ubuntu bash

# Run in background (detached)
docker run -d nginx

# Assign a name to a container
docker run --name mynginx -d nginx

# Stop a container
docker stop container_id_or_name

# Start a container
docker start container_id_or_name

# Restart a container
docker restart container_id_or_name

# Remove a container
docker rm container_id_or_name

# Remove all stopped containers
docker container prune
"

# --- IMAGES ---
echo "
# Pull an image from Docker Hub
docker pull nginx

# Build an image from Dockerfile
docker build -t myimage .

# Remove an image
docker rmi image_id_or_name

# Remove unused images
docker image prune

# Save an image to a tar file
docker save myimage:latest -o myimage.tar

# Load an image from a tar file
docker load -i myimage.tar
"

# --- VOLUMES ---
echo "
# List volumes
docker volume ls

# Create a volume
docker volume create myvolume

# Remove a volume
docker volume rm myvolume

# Remove unused volumes
docker volume prune
"

# --- NETWORKS ---
echo "
# List networks
docker network ls

# Create a network
docker network create mynetwork

# Connect a container to a network
docker network connect mynetwork container_id_or_name

# Remove a network
docker network rm mynetwork
"

# --- LOGS & EXEC ---
echo "
# View logs of a container
docker logs container_id_or_name

# Follow logs in real time
docker logs -f container_id_or_name

# Execute a command inside a running container
docker exec -it container_id_or_name bash
"

# --- COMPOSE ---
echo "
# Start services defined in docker-compose.yml
docker compose up

# Start in detached mode
docker compose up -d

# Stop services
docker compose down

# Rebuild containers
docker compose build

# View logs
docker compose logs
"

# --- CLEANUP ---
echo "
# Remove all stopped containers, unused networks, images, and volumes
docker system prune

# Remove everything including volumes
docker system prune -a --volumes
"

echo "===================="
echo "✅ End of Docker Commands List"
echo "===================="
