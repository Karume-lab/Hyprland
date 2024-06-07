#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <package-name>"
  exit 1
fi

# Capture the first argument
PACKAGE_NAME="$1"

# Run the adb command with the package name
adb shell pm uninstall -k --user 0 "$PACKAGE_NAME"

