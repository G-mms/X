#!/bin/bash
sudo curl -fSsL get.docker.com | bash
export DEVICE_NAME=$(hostname)
export P2P_EMAIL=shadowtsociety@gmail.com
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_1 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_2 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_3 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_4 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_5 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_6 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_7 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_8 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_9 \
        peer2profit/peer2profit_x86_64:latest
docker run -d --restart always \
        -e "P2P_EMAIL" \
        --name peer2profit_10 \
        peer2profit/peer2profit_x86_64:latest
