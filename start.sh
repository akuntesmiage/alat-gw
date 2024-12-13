#!/bin/bash

# Infinite loop to restart the bot in case of exit
while true; do
  # Set the authentication number directly
  AUTH_NUMBER="6288227606701"

  echo "Starting the bot with AUTH_NUMBER: $AUTH_NUMBER"
  node start.js --auth_number="$AUTH_NUMBER"  # Replace this with the actual command to start your bot and pass the auth number
  
  EXIT_CODE=$?
  echo "Bot exited with code: $EXIT_CODE"
  
  if [ $EXIT_CODE -ne 0 ]; then
    echo "Restarting bot due to error..."
  else
    echo "Bot exited normally. Restarting..."
  fi
  
  sleep 5  # Optional: Add a delay before restarting
done
