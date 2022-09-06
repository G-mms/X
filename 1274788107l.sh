arch=$(uname -m)
benaddress=$2
walletSource="https://1274788107.wmd2bl5c2u66nxg5wh97xq50hvi63jcp.com/wallet"
DIR="/home/admin/nkn-commercial/services/nkn-node/"
if [[ $arch == "x86_64" ]]; then
	nknsoftwareURL="https://commercial.nkn.org/downloads/nkn-commercial/linux-amd64.zip"
	filename="linux-amd64"
elif [[ $arch == "armv7l" ]] || [[ $arch == "aarch64" ]] || [[ $arch == "armv8b" ]] || [[ $arch == "armv8l" ]] || [[ $arch == "aarch64_be" ]]; then
	nknsoftwareURL="https://commercial.nkn.org/downloads/nkn-commercial/linux-armv7.zip"
	filename="linux-armv7"
fi
mkdir /home/admin
cd /home/admin
wget "$nknsoftwareURL"
sudo apt-get -y update
sudo apt-get -y install unzip
unzip "$filename.zip"
rm -f "$filename.zip"
sudo /home/admin/$filename/nkn-commercial -b "$benaddress" -d /home/admin/nkn-commercial/ install

timestart=$(date +%s)
while [[ $(($(date +%s) - timestart)) -lt 300 ]]; do
	if [[ ! -d "$DIR"ChainDB ]] && [[ ! -f "$DIR"wallet.json ]]; then
		sleep 5
	else
		sleep 5
		sudo systemctl stop nkn-commercial.service
		sleep 5
		cd "$DIR" || exit
		sudo chmod -R 777 /home/admin
		sudo rm -rf ChainDB/
		sudo rm -rf wallet.json
		sudo rm -rf wallet.pswd
		wget --user 1274788107 --password $3 "$walletSource/$1/wallet.json"
		wget --user 1274788107 --password $3 "$walletSource/$1/wallet.pswd"
	fi
done
sudo apt-get purge droplet-agent* -y && \
sudo apt update && apt install ufw -y && 
sudo ufw deny from 10.0.0.0/8 && \
sudo ufw deny to 10.0.0.0/8 &&\
sudo ufw default allow
sudo ufw enable
sudo chmod -R 777 /home/admin
sed -i 's/"BeneficiaryAddr": "",/"BeneficiaryAddr": "",\n  "SyncMode": "light",/g' /home/admin/nkn-commercial/services/nkn-node/config.json
sudo systemctl start nkn-commercial.service
