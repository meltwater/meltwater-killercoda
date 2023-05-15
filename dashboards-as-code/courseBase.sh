#!/bin/bash
git clone --depth 1 https://github.com/grafana/grafana.git
cd grafana/devenv

# As of 2022-04, these are the instructions.
# Check `README.md` files for more information.
./setup.sh

cd ..

# See directory `devenv/docker/blocks` for more supported sources.
# "grafana" is not a source - this value ensures you don't have to
# build Grafana, and an official image is used instead.
make devenv sources=grafana,prometheus

# To tear down later: `make devenv-down`

