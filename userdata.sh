#!/bin/bash
# User Data script to install Terraform on an EC2 instance

# Update package index
sudo yum update -y

# Install necessary dependencies
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# Install Terraform
sudo yum install terraform -y

# Install git (commonly needed for Terraform modules)
sudo yum install -y git

# Install unzip (commonly needed for some Terraform operations)
sudo yum install -y unzip

# Install AWS CLI (useful for interacting with AWS services)
sudo yum install -y aws-cli

# Verify installation
terraform -v
git --version
unzip -v
aws --version