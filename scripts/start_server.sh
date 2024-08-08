file start_server.sh

#!/bin/bash
# Navigate to the app directory
cd /home/ec2-user/nodejsbasic

# Start the Node.js app using pm2
npm run start-prod

# Save the pm2 process list and configure it to start on reboot
pm2 save
pm2 startup systemd -u ec2-user --hp /home/ec2-user