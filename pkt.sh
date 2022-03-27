#!/bin/bash 
sudo su
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt
chmod +x packetcrypt
./packetcrypt ann -p pkt1q8urgnf52satpxjt9emfxgy6ku4mhd356y5mpnr https://stratum.zetahash.com/ http://pool.pkt.world http://pool.pktpool.io
