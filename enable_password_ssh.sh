#!/bin/bash

# Set the password for the ec2-user
echo "ec2-user:${SSH_PASSWORD}" | sudo chpasswd

# Update the SSH server configuration to allow password authentication
sudo sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Restart the SSH service to apply the changes
sudo systemctl restart sshd
