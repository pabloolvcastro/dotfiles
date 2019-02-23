#! /bin/sh

apt -qq update -y && apt -qq upgrade -y
apt install -y vim guake curl

snap install --no-wait chromium 
snap install --no-wait --classic go 
snap install --no-wait --classic --edge intellij-idea-community
snap install --no-wait --classic vscode

rsync -ar ./autostart ~/.config --exclude=install.sh

# Run all dotfiles installers.
set -e

cd "$(dirname "$0")"/..

# find the installers and run them iteratively
for file in $(find .. -type d \( -name "scripts" \) -prune -o -type f -name "install.sh" -print); do
	sh -c $file;
done

# Cleaning everinthg up
apt autoremove

