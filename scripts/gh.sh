#!/bin/bash

# Check if a commit message is provided
if [ -z "$1" ]; then
  echo "Error: Commit message is required."
  echo "Usage: $0 \"Your commit message\""
  exit 1
fi

# Store the commit message
commit_message="$1"


# Add all files
git add .

# Commit with the provided commit message
git commit -m "$commit_message"

# Push the changes to the remote repository
git push

