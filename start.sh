#!/bin/bash

cd ~/app

# Install dependencies
npm install

# Kill any existing Node process (optional but safe)
pkill node || true

# Start the app in the background and redirect output
nohup node app.js > output.log 2>&1 &
