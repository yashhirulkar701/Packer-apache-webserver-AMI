#!/usr/bin/sh 
x=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
sudo echo "Your IP is ${x}" > /tmp/index.html


 