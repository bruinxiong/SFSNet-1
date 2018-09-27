#wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
#bash ~/miniconda.sh -b -p ~/miniconda 
#rm ~/miniconda.sh


#sudo -s
# The above command will prompt password entry.

export PATH=/root/miniconda/bin/:$PATH

conda env create -f environment.yml
source activate 3dface
sudo pip install opencv-contrib-python
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt install -y libsm6 libxext6 libxrender1

mkdir -p ./models/latest/ 
sudo mkdir -p /tmp/SFSNet/checkpoints/skipnet_checkpoints
sudo mkdir -p /tmp/SFSNet/checkpoints/sfsnet_checkpoints

python data_loader.py
