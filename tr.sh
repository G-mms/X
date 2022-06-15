#!/bin/sh
wget -qO- https://get.docker.com/ | sh
docker pull traffmonetizer/cli:latest
docker run -i --name az traffmonetizer/cli start accept --token rLvMD7UR1nB1fVTKoM1f5GEaEbN2jdyvByU13qVX/1Y=
