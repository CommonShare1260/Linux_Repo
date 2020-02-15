#####################################################################################################
#		Installation of OpenCV on Ubuntu and It's initial settings			    #
#####################################################################################################

#!/bin/bash

echo "Please insert adminstrator password !!"
sudo su
sudo apt-get update

### compiler
$ sudo apt-get install -y build-essential
### required
$ sudo apt-get install -y cmake cmake-curses-gui git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
### optional
$ sudo apt-get install -y libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev

### OpenCV download
$ wget -O opencv-3.4.1.tar.gz https://github.com/opencv/opencv/archive/3.4.1.tar.gz

### build OpenCV
$ tar xzf opencv-3.4.1.tar.gz
$ cd opencv-3.4.1
$ mkdir build
$ cd build
$ cmake -D CMAKE_BUILD_TYPE=RELEASE -D BUILD_opencv_cudacodec=OFF ..
$ ccmake ..
$ make -j $(nproc)
$ sudo make install
