# Save the key to a file
echo "${KEY}" > key.pem

# Set the correct permissions for the key file
chmod 400 key.pem

# Copy the build files to the remote server
scp -o StrictHostKeyChecking=no -i key.pem -r build/* ${USERNAME}@${HOST}:/var/www/html/

# Copy the deploy script to the remote server
scp -o StrictHostKeyChecking=no -i key.pem ./deploy.sh ${USERNAME}@${HOST}:/tmp/

# Execute the deploy script on the remote server
ssh -o StrictHostKeyChecking=no -i key.pem ${USERNAME}@${HOST} 'bash /tmp/deploy.sh'

# Specify the shell to use
shell: /usr/bin/bash -e {0}

# Define environment variables
env:
  HOST: ***
  USERNAME: ***
  KEY: ***
