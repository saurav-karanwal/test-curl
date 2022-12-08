#!/bin/bash

CURL_VER=7.69.1
# Install any build dependencies needed for curl
#sudo apt-get build-dep curl

# Get latest libcurl
mkdir ~/curl
cd ~/curl
wget http://curl.haxx.se/download/curl-$CURL_VER.tar.bz2
tar -xvjf curl-$CURL_VER.tar.bz2
cd curl-$CURL_VER

# The usual steps for building an app from source
./configure
make
sudo make install

# Resolve any issues of C-level lib
# location caches ("shared library cache")
sudo ldconfig
# To check the curl version
curl -V

