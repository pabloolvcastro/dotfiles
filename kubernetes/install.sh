#! /bin/bash

printf "\033[0;32m Installing Kubectl \033[0m \n"

snap install kubectl --no-wait --classic

printf "\033[0;32m Installing MiniKube \033[0m \n"

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
cp minikube /usr/local/bin && rm minikube

