#!/bin/bash

# Prompt user for Git username and email
read -p "Enter your Git username: " git_user
read -p "Enter your Git email: " git_email

# Display the current public SSH key
echo "Current public SSH key:"
cat ~/.ssh/id_ed25519.pub

# Add the SSH key to the agent
ssh-add ~/.ssh/id_ed25519

# Start the SSH agent and export environment variables
eval (ssh-agent -c)

# Generate a new SSH key if it doesn't exist
if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "$git_email"
fi

# Configure Git with the provided username and email
git config --global user.name "$git_user"
git config --global user.email "$git_email"

echo "Git configuration and SSH key setup completed."

