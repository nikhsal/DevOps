cd client
sudo docker volume create clientvol1
sudo docker build -t myclient1 .
sudo docker run -d -v clientvol1:/clientdata --network=mynetwork1 --network-alias=myclient --name=myclient1 myclient1
