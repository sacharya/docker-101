#!/bin/bash
#Create interactive containers. Once you exit, ithe container
# is stopped
#sudo docker run -i -t ubuntu /bin/bash

sudo docker run -d -t ubuntu /bin/bash

# Create a container with the name given
sudo docker run --name web1 -d -t ubuntu /bin/bash
#sudo docker start web1
#sudo docker attach web1
sudo docker run --name web3 -d ubuntu /bin/sh -c "while true; do echo hello world; sleep 1; done"
# Outputs the last few log entries
sudo docker logs web3

# Minitor logs like tail -f
sudo docker logs -f web3
# with timestamps
sudo docker logs -ft web3
sudo docker logs -f --tail=100 web3

# Show the processes running inside the container
sudo docker top web3

# Low-level info regarding a container/image
sudo docker inspect $(sudo docker ps -q)

sudo docker inspect $(sudo docker images -q)
sudo docker inspect --format '{{.Name}} {{.State.Running}}' web3

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
# Last x running containers - running or stopped
sudo docker ps -n x
# Last container that was run
sudo docker ps -l

sudo docker start web1
sudo docker ps

# Stop all containers
sudo docker stop $(sudo docker ps -a -q)

# sudo docker rm web1 web2
# Remove all containers
sudo docker rm $(sudo docker ps -a -q)
