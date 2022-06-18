#!/bin/sh
wget -qO- https://get.docker.com/ | sh
docker pull traffmonetizer/cli:latest
docker run -i --name az traffmonetizer/cli start accept --token mQrFkxDB7x+ybcsC161djSHy+HryPuJFssMiVpboiTg=
