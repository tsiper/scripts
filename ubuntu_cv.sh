## Install Python libraries
# ======================================================================
sudo apt-get install -y python-dev python-pip python3-dev python3-pip

## General Handy Tools
# ======================================================================
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y ack-grep 
sudo apt-get install -y sshfs

## Computer vision packages for open-cv
# ======================================================================
#Remove any previous installations of x264
sudo apt-get remove x264 libx264-dev
 
# We will Install dependencies now
sudo apt-get install -y build-essential checkinstall cmake pkg-config yasm
sudo apt-get install -y git gfortran
sudo apt-get install -y libjpeg8-dev libjasper-dev libpng12-dev
 
# # If you are using Ubuntu 14.04
# sudo apt-get install -y libtiff4-dev
# If you are using Ubuntu 16.04
sudo apt-get install -y libtiff5-dev

sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt-get install -y libxine2-dev libv4l-dev
sudo apt-get install -y libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
sudo apt-get install -y qt5-default libgtk2.0-dev libtbb-dev
sudo apt-get install -y libatlas-base-dev
sudo apt-get install -y libfaac-dev libmp3lame-dev libtheora-dev
sudo apt-get install -y libvorbis-dev libxvidcore-dev
sudo apt-get install -y libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt-get install -y x264 v4l-utils
 
# Optional dependencies
sudo apt-get install -y libprotobuf-dev protobuf-compiler
sudo apt-get install -y libgoogle-glog-dev libgflags-dev
sudo apt-get install -y libgphoto2-dev libeigen3-dev libhdf5-dev doxygen    

