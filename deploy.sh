#!/bin/bash

# Navigate to your project directory
cd /var/www/html

# Pull the latest code from the main branch
git pull origin main

# Install dependencies
npm install

# Build the React project
npm run build

# (Optional) Restart your server if needed, e.g., using PM2
# pm2 restart your-app-name