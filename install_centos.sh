#!/bin/bash

sudo rpm -ivh swagger-0.13.0-1.x86_64.rpm
curl -s https://packagecloud.io/install/repositories/intelsdi-x/snap/script.deb.sh | sudo bash
sudo apt-get install -y snap-telemetry
