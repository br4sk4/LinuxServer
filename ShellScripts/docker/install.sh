apt-get update

apt-get -y install curl
apt-get -y install apt-transport-https
apt-get -y install ca-certificates
apt-get -y install software-properties-common

curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
add-apt-repository "deb https://apt.dockerproject.org/repo/debian-$(lsb_release -cs) main"

apt-get update
apt-get -y install docker-engine
