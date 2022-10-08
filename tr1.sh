#!/bin/sh
wget -qO- https://get.docker.com/ | sh
sudo docker pull traffmonetizer/cli:latest
sudo docker run -i --name az traffmonetizer/cli start accept --token mV5eD7Z5ouwjsjpatKNuoCawpBuHMaDogkby2lX7CHs=
