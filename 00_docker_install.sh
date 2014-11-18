#!/bin/bash

sudo apt-get update
sudo apt-get -y install linux-image-generic-lts-raring linux-headers-generic-lts-raring curl

# Docker works best on kernel 3.8
uname -a

curl -s https://get.docker.io/ubuntu/ | sudo sh

sudo docker pull registry.hub.docker.com/ubuntu:12.04
sudo docker pull ubuntu
sudo docker rmi $(sudo docker images -a -q)

sudo docker pull ubuntu:12.04

sudo docker run -d ubuntu 
# Run a command in a new container
sudo docker run -d -t ubuntu /bin/bash

# Low-level info regarding a container/image
sudo docker inspect $(sudo docker ps -q)

sudo docker inspect $(sudo docker images -q)

# Images
sudo docker images
sudo docker images -a -q

#sudo docker rmi ubuntu
#sudo docker rmi $(sudo docker images -a -q)

# List Containers
sudo docker ps
sudo docker ps -a
sudo docker ps -q
sudo docker ps -a -q

# Stop all containers
sudo docker stop $(sudo docker ps -a -q)

 # Remove all containers
sudo docker rm $(sudo docker ps -a -q)

