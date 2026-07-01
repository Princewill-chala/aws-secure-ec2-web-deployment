#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install Apache Web Server
sudo apt install apache2 -y

# Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Configure firewall
sudo ufw allow 'Apache'
sudo ufw --force enable

# Deploy sample web page
echo "<h1>Secure EC2 Web Deployment</h1>" | sudo tee /var/www/html/index.html

# Display Apache status
sudo systemctl status apache2