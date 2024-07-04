#!/bin/bash

# Update package lists
sudo apt update


# Install unzip (if not already installed)
sudo apt install -y unzip

# Install Terraform

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# Set executable permissions
sudo chmod +x /usr/bin/terraform

# Verify installation
terraform --version