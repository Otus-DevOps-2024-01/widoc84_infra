#!/bin/bash

sudo cd /opt
sudo apt-get install git
sudo git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma