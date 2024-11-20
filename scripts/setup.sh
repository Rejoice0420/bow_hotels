#!/bin/bash

# Update the system
echo "Updating the system..."
sudo apt update -y

# Install Apache HTTP server
echo "Installing Apache HTTP server..."
sudo apt install -y apache2

# Ensure Apache starts on boot
echo "Enabling Apache to start on boot..."
sudo systemctl enable apache2

# Create a directory for the website files (if necessary)
echo "Creating directory for website files..."
sudo mkdir -p /var/www/html

# Set appropriate permissions for the web server directory
echo "Setting permissions for /var/www/html..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "Setup complete."
