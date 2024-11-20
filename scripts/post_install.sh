#!/bin/bash

# Copy the index.html file (or other web files) to the Apache document root
echo "Deploying index.html to /var/www/html/"
sudo cp -r / /var/www/html/

# Ensure the permissions are correct
echo "Setting correct permissions for the web files..."
sudo chown -R www-data:www-data /var/www/html/*
sudo chmod -R 755 /var/www/html/*

echo "Deployment complete."
