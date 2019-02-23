#!/usr/bin/env fish

# Environments
printf "\033[0;32m Compying configuration files for Fish \033[0m \n"
rsync -a ./fish/* ~/.config/fish --exclude=install.sh

# Configuration
source ~/.config/fish/config.fish
