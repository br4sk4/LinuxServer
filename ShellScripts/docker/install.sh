#!/bin/bash

apt-get update

apt-get install -y curl
apt-get install -y apt-transport-https
apt-get install -y ca-certificates
apt-get install -y software-properties-common

curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -
add-apt-repository "deb https://apt.dockerproject.org/repo/ debian-$(lsb_release -cs) main"

apt-get update
apt-get install -y docker-engine
