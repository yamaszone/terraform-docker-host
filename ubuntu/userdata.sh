#!/bin/bash -v

apt-get update -y

# Install prerequsites for Docker
# See https://docs.docker.com/engine/installation/linux/ubuntulinux/
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list

apt-get update -y

apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

# Install Docker
apt-get install -y docker-engine

# Start Docker service
service docker start

usermod -aG docker ubuntu
