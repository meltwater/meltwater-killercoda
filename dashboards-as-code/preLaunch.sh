#!/bin/bash
git clone --depth 1 https://github.com/grafana/grafana.git
cd grafana/devenv
./setup.sh
cd ..
make devenv sources=grafana,prometheus grafana_version=9.4.3

# To tear down later: `make devenv-down`