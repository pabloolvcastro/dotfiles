#!/bin/bash

# Install fish shell
printf "\033[0;32m Installing Fish shell \033[0m \n"
sudo apt -qq update
sudo apt -qq install -y keychain fish

./scripts/update_fish.sh

# Defining Fish as default
chsh -s `which fish`
echo `which fish` | sudo tee -a /etc/shells