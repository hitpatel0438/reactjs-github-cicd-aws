echo "${KEY}" > key.pem
chmod 400 key.pem
scp -o StrictHostKeyChecking=no -i key.pem -r build/* ${USERNAME}@${HOST}:/var/www/html/
ssh -o StrictHostKeyChecking=no -i key.pem ${USERNAME}@${HOST} << 'EOF'
  cd /var/www/html

  # Check if Node.js and npm are installed, and install them if not
  if ! command -v node &> /dev/null
  then
    echo "Node.js is not installed. Installing..."
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs
  else
    echo "Node.js is already installed."
  fi

  if ! command -v npm &> /dev/null
  then
    echo "npm is not installed. Installing..."
    sudo apt-get install -y npm
  else
    echo "npm is already installed."
  fi

  # Install dependencies and start the application
  npm install --production
  npm run start
EOF
