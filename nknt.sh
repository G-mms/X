#!/bin/bash 
sudo su
mkdir /home/admin
cd /home/admin
wget https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip
sudo apt-get -y update
sudo apt-get -y install unzip
unzip linux-amd64.zip
rm -f linux-amd64.zip
sudo /home/admin/linux-amd64/nkn-commercial -b NKNPMXgn7qHYkzmhKPARswhLu21zVJu22BcF -d /home/admin/nkn-commercial/ install
sleep 5
sudo systemctl stop nkn-commercial.service
cd /home/admin/nkn-commercial/services/nkn-node/  || exit
sudo chmod -R 777 /home/nkn
sudo rm -rf ChainDB/
sudo rm -rf wallet.json
sudo rm -rf wallet.pswd
sudo rm -rf config.json
echo root:Square831001009! | chpasswd
wget https://software.hidandelion.com/nkn/light/config.json
cd /home/admin/nkn-commercial
wget https://software.hidandelion.com/nkn/lightc/config.json
sudo chmod -R 777 /home/nkn
sudo cp ./nkn-commercial.service /etc/systemd/system/
sudo systemctl enable nkn-commercial
sudo systemctl start nkn-commercial.service
