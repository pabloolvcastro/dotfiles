
#!/bin/sh

# Oh My Fish
#if  [ ! -d "~/.local/share/omf" ]; then
	printf "\033[0;32m Installing Oh My Fish \033[0m \n"
	curl -L https://get.oh-my.fish > install
	sudo chmod +x install
	sudo fish install -y --path=~/.local/share/omf --config=~/.config/omf
#fi