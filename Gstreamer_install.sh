#####################################################################################################
#		Installation of Gstreamer on Ubuntu and It's plugins settings			    #
#####################################################################################################
#!/bin/bash

echo "Please insert adminstrator password !!"
sudo su
sudo apt-get update
sudo apt-get -y install gstreamer1.0-vaapi gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-plugins-bad
sudo apt-get -y install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev libgstreamer-plugins-bad1.0-dev 

echo 'If everything worked fine, reboot now.'
