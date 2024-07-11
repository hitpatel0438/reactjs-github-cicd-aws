echo "${KEY}" > key.pem
chmod 400 key.pem
scp -o StrictHostKeyChecking=no -i key.pem -r build/* ${USERNAME}@${HOST}:/var/www/html/
ssh -o StrictHostKeyChecking=no -i key.pem ${USERNAME}@${HOST} << 'EOF'
  # Install Node.js and npm if not already installed
  if ! command -v npm &> /dev/null
  then
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs
  fi
  
  cd /var/www/html
  npm install --production
  npm run start
EOF
