#!/bin/bash
wget -qO- https://get.docker.com/ | sh
docker network create --subnet=172.18.0.0/24 --opt " com.docker.network.bridge.name " = " docker1 " docker1
iptables -t nat -I POSTROUTING -p all -s 172.18.0.4 -j SNAT --to-source 10.0.0.4
iptables -t nat -I POSTROUTING -p all -s 172.18.0.5 -j SNAT --to-source 10.0.0.5
iptables -t nat -I POSTROUTING -p all -s 172.18.0.6 -j SNAT --to-source 10.0.0.6
iptables -t nat -I POSTROUTING -p all -s 172.18.0.7 -j SNAT --to-source 10.0.0.7
iptables -t nat -I POSTROUTING -p all -s 172.18.0.8 -j SNAT --to-source 10.0.0.8
docker run -id --network docker1 --ip=172.18.0.4 --name az0 traffmonetizer/cli start accept --token rLvMD7UR1nB1fVTKoM1f5GEaEbN2jdyvByU13qVX/1Y=
docker run -id --network docker1 --ip=172.18.0.5 --name az1 traffmonetizer/cli start accept --token rLvMD7UR1nB1fVTKoM1f5GEaEbN2jdyvByU13qVX/1Y=
docker run -id --network docker1 --ip=172.18.0.6 --name az2 traffmonetizer/cli start accept --token rLvMD7UR1nB1fVTKoM1f5GEaEbN2jdyvByU13qVX/1Y=
docker run -id --network docker1 --ip=172.18.0.7 --name az3 traffmonetizer/cli start accept --token rLvMD7UR1nB1fVTKoM1f5GEaEbN2jdyvByU13qVX/1Y=
docker run -id --network docker1 --ip=172.18.0.8 --name az4 traffmonetizer/cli start accept --token rLvMD7UR1nB1fVTKoM1f5GEaEbN2jdyvByU13qVX/1Y=
