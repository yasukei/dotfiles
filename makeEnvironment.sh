#!/bin/sh

#--------------------------------------------------------------------
# proxy settings
#--------------------------------------------------------------------
#	switch(OS) {
#	case Xubuntu:
#		system_proxy_setting {
#			sudo vi /etc/environment
#			http_proxy=http://proxy:port/
#			https_proxy=https://proxy:port/
#		}
#
#	default:
#		fail();
#	}
# 

#--------------------------------------------------------------------
# binaries installed manually
#--------------------------------------------------------------------
mkdir ~/bin
mkdir ~/git
mkdir ~/svn

# global

# golang

# Spin
# Spin needs bison
# sudo apt-get install bison
# wget http://spinroot.com/spin/Src/spin632.tar.gz
# mv spin632.tar.gz ~/bin/
# cd ~/bin/
# tar xzf spin632.tar.gz
# cd Spin/Src*
# make

# gtest/gmock
# wget https://googlemock.googlecode.com/files/gmock-1.6.0.zip
# mv gmock-1.6.0.zip ~/bin/
# cd ~/bin/
# unzip gmock-1.6.0.zip
