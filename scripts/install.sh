#! /bin/sh

sudo apt -qq update -y
sudo apt -qq upgrade -y
sudo apt install -y vim guake curl openssh-client make

sudo snap install --no-wait chromium
sudo snap install --no-wait --classic go
sudo snap install --no-wait --classic intellij-idea-ultimate
sudo snap install --no-wait --classic vscode
sudo snap install --no-wait --classic slack

rsync -ar ./autostart ~/.config --exclude=install.sh

# Run all dotfiles installers.
set -e

cd "$(dirname "$0")"/..

# find the installers and run them iteratively
for file in $(find .. -type d \( -name "scripts" \) -prune -o -type f -name "install.sh" -print); do
	sh -c $file;
done

# Cleaning everinthg up
sudo apt autoremove
