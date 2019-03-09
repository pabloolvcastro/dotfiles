#! /bin/sh

printf "\033[0;32m Installing Java 11 \033[0m \n"

# Add java ppa for java 11
sudo add-apt-repository -y ppa:linuxuprising/java ppa:webupd8team/java
sudo apt -qq update -y

# Install 11 java
echo "oracle-java11-installer shared/accepted-oracle-license-v1-2 select true" 	| sudo debconf-set-selections
echo "oracle-java11-installer shared/accepted-oracle-license-v1-2 seen true" 	| sudo debconf-set-selections

sudo apt -qq install -y oracle-java11-installer oracle-java11-set-default

# Install 8 java
echo "oracle-java11-installer shared/accepted-oracle-license-v1-1 select true"  | sudo debconf-set-selections
echo "oracle-java11-installer shared/accepted-oracle-license-v1-1 seen true"    | sudo debconf-set-selections

sudo apt -qq install -y oracle-java8-installer

sudo apt -qq install -y maven
