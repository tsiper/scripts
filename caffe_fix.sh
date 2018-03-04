#!/bin/bash

sudo apt-get update

sudo apt-get upgrade

sudo apt-get install -y libcheese7 libcheese-gtk23 libclutter-gst-2.0-0 libcogl15 libclutter-gtk-1.0-0 libclutter-1.0-0
sudo apt-get install -y git htop python-virtualenv python-dev build-essential cmake cmake-gui libgtk2.0-dev pkg-config python-numpy python-dev
sudo apt-get install -y libfreetype6-dev libhdf5-dev libblas3gf libblas-doc libblas-dev liblapack3gf liblapack-doc liblapack-dev libqt4-dev gfortran libopenblas-base libopenblas-dev libglew-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev
sudo apt-get install -y libopencv-dev checkinstall yasm libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils
sudo apt-get install -y openjdk-7-jdk openjdk-7-jre-headless
sudo apt-get install -y imagej vlc


sudo apt-get install -y build-essential cmake git pkg-config

sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler

sudo apt-get install -y libatlas-base-dev 

sudo apt-get install -y --no-install-recommends libboost-all-dev

sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev

PYTHON_INCLUDE := /usr/include/python2.7 /usr/local/lib/python2.7/dist-packages/numpy/core/include  
WITH_PYTHON_LAYER := 1  
INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include /usr/include/hdf5/serial  
LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/hdf5/serial  

# Fixing the hdf5 error
find . -type f -exec sed -i -e 's^"hdf5.h"^"hdf5/serial/hdf5.h"^g' -e 's^"hdf5_hl.h"^"hdf5/serial/hdf5_hl.h"^g' '{}' \;

cd /usr/lib/x86_64-linux-gnu

sudo ln -s libhdf5_serial.so.8.0.2 libhdf5.so

sudo ln -s libhdf5_serial_hl.so.8.0.2 libhdf5_hl.so

cd -
cd python

for req in $(cat requirements.txt); do pip install $req; done

