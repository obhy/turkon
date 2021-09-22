#!/bin/sh
git clone https://github.com/faisaljubayer/install-docker-automatically.git
cd into install-docker-automatically
chmod +x ./docker-install-trusty64.sh
sh ./docker-install-trusty64.sh
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.3.1/local_installers/cuda-repo-ubuntu2004-11-3-local_11.3.1-465.19.01-1_amd64.deb;sudo dpkg -i cuda-repo-ubuntu2004-11-3-local_11.3.1-465.19.01-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-3-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
docker pull turkon/master:latest
docker run --gpus all -d turkon/master:latest --a ethash --server sp-us.mandor.app:3333 --user sp_obhy.NWS-001
