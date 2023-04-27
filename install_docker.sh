#!/bin/bash

# Update package index
sudo yum update -y

# Install Docker
sudo amazon-linux-extras install docker -y

# Start Docker service
sudo systemctl start docker

# Add ec2-user to docker group
sudo usermod -aG docker ec2-user

# Enable Docker service to start on boot
sudo systemctl enable docker
