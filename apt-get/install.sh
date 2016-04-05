#!/bin/bash

echo '#'
echo '# apt-get'
echo '#'

echo ''
echo '## apt-get update'
echo '##'
#sudo apt-get update

echo ''
echo '## apt-get install'
echo '##'
for f in ?*
do
	[[ "$f" = "." ]] && continue
	[[ "$f" = ".." ]] && continue
	[[ "$f" = ".git" ]] && continue

	# skip *.sh
	[[ "$f" =~ .*\.sh ]] && continue

	# skip '_' prefix files
	[[ "$f" =~ _.* ]] && continue

	sudo apt-get install -y --show-progress "$f"
done

# vim
#curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

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
