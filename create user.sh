create_user.sh
#!/bin/bash
# Script: create_user.sh
# Purpose: Automate user creation in Linux

if [ $# -eq 0 ]; then
  echo "Usage: $0 username"
  exit 1
fi

USERNAME=$1

# Create new user
sudo useradd -m $USERNAME

# Set default password
echo "$USERNAME:Password@123" | sudo chpasswd

echo "User $USERNAME created successfully with default password."
