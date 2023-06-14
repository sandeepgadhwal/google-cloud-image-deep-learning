# Install cmake
sudo apt update
sudo apt -y upgrade
sudo apt install -y cmake openssl htop iotop


# Nvidia drivers
# Source of following commands: https://www.if-not-true-then-false.com/2021/debian-ubuntu-linux-mint-nvidia-guide/
## Dependencies
sudo apt install linux-headers-$(uname -r) gcc make acpid dkms libglvnd-core-dev libglvnd0 libglvnd-dev dracut
## Driver
wget https://us.download.nvidia.com/tesla/525.105.17/NVIDIA-Linux-x86_64-525.105.17.run -O nvidia.run
sudo chmod +x ./nvidia.run
sudo ./nvidia.run
rm ./nvidia.run


# Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.3.1-0-Linux-x86_64.sh -O miniconda.sh
sudo mkdir /miniconda
sudo chown $USER /miniconda 
bash miniconda.sh -b -u -p /miniconda
rm miniconda.sh
 

# Install mamba solver
conda update -n base conda -y
conda install -n base conda-libmamba-solver -y
conda config --set solver libmamba


# Install Pytorch
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
conda clean -a -y


# Install pip deps
pip install transformers einops accelerate flask --no-cache-dir