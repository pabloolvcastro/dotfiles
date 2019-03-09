#! /bin/sh

printf "\033[0;32m Installing Java 11 \033[0m \n"

# Add java ppa for java 11
add-apt-repository -y ppa:linuxuprising/java ppa:webupd8team/java && apt -qq update -y

# Install 11 java
echo "oracle-java11-installer shared/accepted-oracle-license-v1-2 select true" 	| debconf-set-selections
echo "oracle-java11-installer shared/accepted-oracle-license-v1-2 seen true" 	| debconf-set-selections

apt -qq install -y oracle-java11-installer oracle-java11-set-default


# Install 8 java
echo "oracle-java11-installer shared/accepted-oracle-license-v1-1 select true"  | debconf-set-selections
echo "oracle-java11-installer shared/accepted-oracle-license-v1-1 seen true"    | debconf-set-selections

apt -qq install -y oracle-java8-installer

apt -qq install -y maven
