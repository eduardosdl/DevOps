#!/bin/bash

# install docker
curl -fsSL https://get.docker.com | sudo bash

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# add permision to docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# add docker provider
sudo usermod -aG docker vagrant