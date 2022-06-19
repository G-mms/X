#!/bin/sh
wget -qO- https://get.docker.com/ | sh
docker pull traffmonetizer/cli:latest
docker run -i --name az traffmonetizer/cli start accept --token ACaD1piPnoSnY+ankyECNFfoin4yRALdFixyXZVCXFQ=
