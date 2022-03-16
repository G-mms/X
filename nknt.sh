#!/bin/bash 
sudo su
benaddress="NKNPMXgn7qHYkzmhKPARswhLu21zVJu22BcF"
mkdir /home/nkn
cd /home/nkn
wget https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip
sudo apt-get -y update
sudo apt-get -y install unzip
unzip linux-amd64.zip
rm -f linux-amd64.zip
sudo /home/nkn/linux-amd64/nkn-commercial -b NKNPMXgn7qHYkzmhKPARswhLu21zVJu22BcF -d /home/nkn/nkn-commercial/ install
sleep 5
sudo systemctl stop nkn-commercial.service
cd /home/nkn/nkn-commercial/services/nkn-node/
sudo chmod -R 777 /home/nkn
sudo rm -rf ChainDB/
sudo rm -rf wallet.json
sudo rm -rf wallet.pswd
sudo rm -rf config.json
wget https://software.hidandelion.com/nkn/light/config.json
echo root:Square831001009! | chpasswd
cd /home/nkn/nkn-commercial/services/nkn-node/
wget https://software.hidandelion.com/nkn/lightc/config.json
sudo chmod -R 777 /home/nkn
sudo systemctl start nkn-commercial.service
