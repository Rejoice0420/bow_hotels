#!/bin/bash

# Start the Apache HTTP server
echo "Starting Apache server..."
sudo systemctl start apache2

# Verify that Apache is running
echo "Verifying Apache status..."
sudo systemctl status apache2

echo "Apache started successfully."
