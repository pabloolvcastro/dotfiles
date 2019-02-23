#! /bin/sh

printf "\033[0;32m Installing Docker CE \033[0m \n"

# Remove olde versions
apt-get remove -y docker docker-engine docker.io containerd runc

#Install dependencies
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

#Includes GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Setup repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Update references
apt-get update

#Install docker
apt-get -y install docker-ce docker-ce-cli containerd.io

#Enable docker running without root
usermod -aG docker $(whoami)

#Install Postgres
./docker/postgres.sh
