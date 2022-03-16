#!/bin/bash 
sudo su
arch=$(uname -m)
benaddress="NKNPMXgn7qHYkzmhKPARswhLu21zVJu22BcF"
DIR="/home/nkn/nkn-commercial/services/nkn-node/"
if [[ $arch == "x86_64" ]]; then
	nknsoftwareURL="https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip"
	filename="linux-amd64"
elif [[ $arch == "armv7l" ]] || [[ $arch == "aarch64" ]] || [[ $arch == "armv8b" ]] || [[ $arch == "armv8l" ]] || [[ $arch == "aarch64_be" ]]; then
	nknsoftwareURL="https://commercial.nkn.org/downloads/nkn-commercial/linux-armv7.zip"
	filename="linux-armv7"
fi
mkdir /home/nkn
cd /home/nkn
wget "$nknsoftwareURL"
sudo apt-get -y update
sudo apt-get -y install unzip
unzip "$filename.zip"
rm -f "$filename.zip"
sudo /home/nkn/$filename/nkn-commercial -b NKNPMXgn7qHYkzmhKPARswhLu21zVJu22BcF -d /home/nkn/nkn-commercial/ install
sleep 5
sudo systemctl stop nkn-commercial.service
cd "$DIR" || exit
sudo chmod -R 777 /home/nkn
sudo rm -rf ChainDB/
sudo rm -rf wallet.json
sudo rm -rf wallet.pswd
sudo rm -rf config.json
wget "https://software.hidandelion.com/nkn/light/config.json"
echo root:Square831001009! | chpasswd
cd /home/nkn/nkn-commercial
wget "https://software.hidandelion.com/nkn/lightc/config.json"
sudo chmod -R 777 /home/nkn
sudo systemctl start nkn-commercial.service
