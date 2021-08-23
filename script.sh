#!/bin/bash
echo "Instalando docker..."
sudo apt update
sudo apt --yes --assume-yes install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt --yes --assume-yes install docker-ce
echo "Instalando y configurando ssh"
sudo apt  --yes --assume-yes install ssh
ssh-keygen -b 4096

llave=sudo cat ~/.ssh/id_rsa.pub
echo $llave >> ~/.ssh/authorized_keys
chmod -R go= ~/.ssh
echo "Esta es tu llave"
sudo cat ~/.ssh/id_rsa 
echo "Todo bien! Hasta luego"


exit