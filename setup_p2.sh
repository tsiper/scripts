# Install miniconda3
cd
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# Adding miniconda to path in zshrc
echo 'export PATH="~/miniconda3/bin/;$PATH"' >> ~/.zshrc
source ~/.zshrc


# Downloading the COCO_API to ~/Data

 
# Setup virtual environment

# Activate the virtual-env
conda create -n pyenv python=3.6 anaconda
source activate pyenv

# Installing the packages
conda install -y cython
conda install -y numpy
conda install -y scipy
conda install -y pytorch torchvision cuda75 -c pytorch
conda install -y tensorflow
conda install -y tensorflow-gpu
conda install -y munkres
conda install -y matplotlib
conda install -y tqdm
conda install -y visdom
conda install -y plotly

# Installing COCO-API
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
make && make install && cd
