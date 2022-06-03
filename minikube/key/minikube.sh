#!/bin/bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo apt-get update && sudo apt-get install docker.io -y

#################################################MINIKUBE###########
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64 && sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo apt-get install -y conntrack

sudo minikube version
sudo minikube start --driver=none
sudo minikube status
