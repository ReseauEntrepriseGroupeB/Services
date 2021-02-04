#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo groupadd docker
sudo usermod -aG docker gestion

echo 'DNS=213.186.33.99' | sudo tee -a /etc/systemd/resolved.conf
echo 'DNSStubListener=no' | sudo tee -a /etc/systemd/resolved.conf
sudo ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

sudo reboot now