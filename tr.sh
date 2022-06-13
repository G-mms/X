#!/bin/sh
wget -qO- https://get.docker.com/ | sh
docker pull traffmonetizer/cli:latest
docker run -i --name az traffmonetizer/cli start accept --token mV5eD7Z5ouwjsjpatKNuoCawpBuHMaDogkby2lX7CHs=
