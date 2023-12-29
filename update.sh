#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install expect -y

# Letöltjük az Expect scriptet
wget https://raw.githubusercontent.com/SzekelyTibor2023/nextcloud/main/nextcloud.sh

# Futtatjuk az Expect scriptet
chmod +x nextcloud.sh
./nextcloud.sh
