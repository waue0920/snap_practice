#!/bin/bash
echo "deb https://dl.bintray.com/go-swagger/goswagger-debian ubuntu main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y swagger

curl -s https://packagecloud.io/install/repositories/intelsdi-x/snap/script.deb.sh | sudo bash
sudo apt-get install -y snap-telemetry
