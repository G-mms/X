#!/bin/bash 
sudo su
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
echo root:Square831001009! | chpasswd
cd /home/nkn/nkn-commercial/services/nkn-node/
sed -i 's/"BeneficiaryAddr": "",/"BeneficiaryAddr": "",\n  "SyncMode": "light",/g' /home/nkn/nkn-commercial/services/nkn-node/config.json
sudo chmod -R 777 /home/nkn
sudo cp ./nkn-commercial.service /etc/systemd/system/
sudo systemctl enable nkn-commercial
sudo systemctl start nkn-commercial.service
