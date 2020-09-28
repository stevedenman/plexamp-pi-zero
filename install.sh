#!/bin/bash

# Install Node 9
tar -xzf node-v9.11.2-linux-armv6l.tar.gz
cd node-v9.11.2-linux-armv6l/
sudo cp -R * /usr/local/
node -v
npm -v
cd ..

# Extract Plexamp
tar xjf Plexamp-v2.0.0-rPi-beta.2.tar.bz2 -C /home/pi

# Get a server.json file from existing Plexamp install, install in /home/pi/.config/Plexamp/.
mkdir -p /home/pi/.config/Plexamp/
cp server.json /home/pi/.config/Plexamp/

# Service
sudo cp plexamp.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable plexamp
sudo systemctl start plexamp
sudo systemctl status plexamp
