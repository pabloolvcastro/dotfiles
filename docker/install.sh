#! /bin/sh

printf "\033[0;32m Installing Docker CE \033[0m \n"

# Remove olde versions
sudo apt-get remove -y docker docker-engine docker.io containerd runc

#Install dependencies
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

#Includes GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Setup repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Update references
sudo apt-get update

#Install docker
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

#Enable docker running without root
sudo usermod -aG docker $(whoami)

#Install Postgres
./docker/postgres.sh
