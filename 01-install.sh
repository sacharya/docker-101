sudo apt-get update
sudo apt-get install curl

curl -s https://get.docker.io/ubuntu/ | sudo sh

sudo docker info
# ps aux | grep docker
#service docker restart

#DOCKER_HOST="tcp://0.0.0.0:2375

# To make permanent chanes
#/etc/default/docker
# DOCKER_HOST="tcp://0.0.0.0:2375
# DEBUG=1

# or export as environment variable
# export DEBUG=1

# logs on ubuntu
#/var/log/upstart/docker.log
