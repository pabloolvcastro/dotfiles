#! /bin/sh

# Just run as root
if [ "$(id -u)" -ne 0 ]; then
	echo 'This script must be run by root' >&2
        exit 1
fi

printf "\033[0;32m Installing applications \033[0m \n"
./scripts/install.sh
