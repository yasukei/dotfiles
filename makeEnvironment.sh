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
# binaries installed from package
#--------------------------------------------------------------------
sudo apt-get install				\
			git						\
			curl					\
			subversion				\
			binutils				\
			vim-gtk					\
			gnome-do				\
			silversearcher-ag		\
			g++						\
			openssh-server			\

# for Spin's make
# sudo apt-get install bison

#--------------------------------------------------------------------
# binaries installed manually
#--------------------------------------------------------------------
mkdir ~/bin
mkdir ~/git
mkdir ~/svn

#--------------------------------------------------------------------
# gtest/gmock
#--------------------------------------------------------------------
# wget https://googlemock.googlecode.com/files/gmock-1.6.0.zip
# mv gmock-1.6.0.zip ~/bin/
# cd ~/bin/
# unzip gmock-1.6.0.zip

#--------------------------------------------------------------------
# Spin
#--------------------------------------------------------------------
# wget http://spinroot.com/spin/Src/spin632.tar.gz
# mv spin632.tar.gz ~/bin/
# cd ~/bin/
# tar xzf spin632.tar.gz
# cd Spin/Src*
# make

#--------------------------------------------------------------------
# golang
#--------------------------------------------------------------------

#--------------------------------------------------------------------
# global
#--------------------------------------------------------------------

#--------------------------------------------------------------------
# vim settings
#--------------------------------------------------------------------
#ln -sf `pwd`/.vim ~/.vim
#ln -sf `pwd`/.vimrc ~/.vimrc
#ln -sf `pwd`/_gvimrc ~/_gvimrc
#ln -sf `pwd`/.gitconfig ~/.gitconfig
#ln -sf `pwd`/.gitignore ~/.gitignore
#curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

#--------------------------------------------------------------------
# .profile
#--------------------------------------------------------------------
# ln -sf `pwd`/.profile_ ~/.profile_
# echo ". .profile_" >>.profile
