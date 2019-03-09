#!/bin/bash

# Install fish shell
printf "\033[0;32m Installing Fish shell \033[0m \n"
sudo apt -qq update
sudo apt -qq install -y keychain fish

#./scripts/update_fish.sh

chsh -s `which fish`
echo `which fish` | sudo tee -a /etc/shells

# Oh My Fish
printf "\033[0;32m Installing Oh My Fish \033[0m \n"
curl -L https://get.oh-my.fish > install
if  [[ ! ~/.local/share/omf ]]; then
	fish install --path=~/.local/share/omf --config=~/.config/omf
    else
	fish
fi

printf "\033[0;32m Defining Clearance theme \033[0m \n"
omf install clearance

