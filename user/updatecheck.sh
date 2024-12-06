#!/bin/bash

# Define color variables
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

# Print an empty line at the start
echo -e ""

# Get the last APT update date from the history log
last_update_date=$(grep "Start-Date" /var/log/apt/history.log | tail -n 1 | awk '{print $2, $3, $4}')

# Output the last APT update date with color
echo -e "${GREEN}Last APT update date: ${YELLOW}$last_update_date${RESET}"

# Run the needrestart command with color
echo -e "${GREEN}Running needrestart...${RESET}"
sudo needrestart