#!/bin/bash
sudo apt update -y
sudo apt install -y unzip curl
sudo wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
sudo chmod +x /usr/bin/terraform
sudo add-apt-repository universe -y
sudo apt update -y
sudo apt install snapd
sudo snap install aws-cli --classic