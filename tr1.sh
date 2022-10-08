#!/bin/sh
wget -qO- https://get.docker.com/ | sh
sudo su docker pull traffmonetizer/cli:latest
sudo su docker run -i --name az traffmonetizer/cli start accept --token mV5eD7Z5ouwjsjpatKNuoCawpBuHMaDogkby2lX7CHs=
