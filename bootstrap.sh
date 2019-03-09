#! /bin/sh

printf "\033[0;32m Installing applications \033[0m \n"
./scripts/install.sh

# Cleaning everinthg up
sudo apt autoremove
