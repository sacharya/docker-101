git clone https://github.com/sacharya/docker-wordpress
cd docker-wordpress/
sudo docker build -t sacharya/wordpress .
sudo docker images
sudo docker run -d sacharya/wordpress
sudo docker ps
sudo docker port 3ef0acf512ea 80

# docker ip
sudo docker inspect 247cc3004ab8 | grep IPAddress
wget http://172.17.0.45:80

#http://stackoverflow.com/questions/19897743/exposing-a-port-on-a-live-docker-container
# access the host
sudo iptables -t nat -A  DOCKER -p tcp --dport 8001 -j DNAT --to-destination 172.17.0.45:80
# To delete an iptable rule
# sudo iptables -L -v -n // list iptable rules. doesnt show NAT
# sudo iptables -L -t nat --line-numbers
# sudo iptables -t nat -D PREROUTING 1
# 
#sudo iptables -L -t nat --line-numbers
# sudo iptables -t nat -D DOCKER 1

wget http://hostip:8001


# ssh into the container
sudo docker logs 247cc3004ab8 | grep password
ssh -p 22 user@localhost

# cleanup
sudo docker stop ee2a696bda3d
sudo docker rm ee2a696bda3d
sudo docker ps -a
sudo docker images
sudo docker rmi 92b73e156c25

# or using port and ssh from run command
sudo docker run -d -p 8001:80 -p 8002:22 sacharya/wordpress
sudo docker logs 247cc3004ab8 | grep password
sudo docker inspect 247cc3004ab8 | grep IPAddress
wget http://hostip:8001
