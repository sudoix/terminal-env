#! /usr/bin/env bash

# Install some packages
sudo apt update && sudo apt install -y ansible jq

if [[ $? -ne 0 ]]; then
  echo "Some DevOps packages failed to install"
  exit 1
fi

