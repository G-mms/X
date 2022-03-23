#!/bin/bash
sudo apt-get update
sudo apt-get install -y cpulimit
sudo cpulimit -e xmrig -l 170 -b  
sudo sed -i -e '\$acpulimit -e xmrig -l 170 -b\\n' /etc/rc.local"
echo "[*] Setup complete"
