#!/bin/bash
curl -L https://github.com/harness/drone-cli/releases/download/v1.5.0/drone_linux_amd64.tar.gz | tar zx && sudo install -t /usr/local/bin drone
cd ~/ && docker-compose up -d
docker pull philipharries/html_tidy
docker pull docker