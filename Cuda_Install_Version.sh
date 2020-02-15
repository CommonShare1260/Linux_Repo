#####################################################################################################
#		Installation of CUDA on Ubuntu and It's initial settings			    #
#####################################################################################################

#!/bin/bash

# Purge existign CUDA first
sudo apt --purge remove "cublas*" "cuda*"
sudo apt --purge remove "nvidia*"

# Install CUDA Toolkit 10.0
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && sudo apt update
sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb

# Install CUDA Toolkit 10.1
# wget https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb
# sudo apt-key add /var/cuda-repo-10-1-local-10.1.105-418.39/7fa2af80.pub && sudo apt update
# sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb

sudo apt update
# if version is 10.0 the write 10-0, if 10.1 write 10-1 in VERSION
sudo apt install -y cuda-10-0

# Install CuDNN 7 and NCCL 2
wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo dpkg -i nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb

sudo apt update
sudo apt install -y libcudnn7 libcudnn7-dev libnccl2 libc-ares-dev

sudo apt autoremove
#sudo apt upgrade

# Link libraries to standard locations
sudo mkdir -p /usr/local/cuda-10.0/nccl/lib
sudo ln -s /usr/lib/x86_64-linux-gnu/libnccl.so.2 /usr/local/cuda/nccl/lib/
sudo ln -s /usr/lib/x86_64-linux-gnu/libcudnn.so.7 /usr/local/cuda-10.0/lib64/

echo 'If everything worked fine, reboot now.'
