#!/bin/sh
wget -qO- https://get.docker.com/ | sh
docker pull traffmonetizer/cli:latest
docker run -i --name az traffmonetizer/cli start accept --token s58Wbzeg0Ovc9fc5dIse+3jEkMtoVPwG79UMsb76Amo=
