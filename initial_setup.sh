#!/bin/bash


apt update
apt upgrade -y

# Docker installation
apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl start docker
docker run hello-world

# New Proxymanager folder
cd /opt
mkdir npm
cd .. 
cd ..
cp nginx_proxymanager.yaml /opt/npm/
mv nginx_proxymanager.yaml docker-compose.yml
