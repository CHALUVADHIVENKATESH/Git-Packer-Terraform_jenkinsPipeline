#!/bin/bash
set -x
sudo apt update
sudo apt-get -y -qq install curl wget git vim apt-transport-https ca-certificates
sudo groupadd -r admingroup
sudo usermod -a -G admingroup adminsree 
#echo "adminsree  ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers.d/adminsree