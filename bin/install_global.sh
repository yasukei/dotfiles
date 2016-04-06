#!/bin/bash

TARGET=global-6.5.4

cd "$HOME"/bin &&
curl ftp://ftp.gnu.org/pub/gnu/global/"$TARGET".tar.gz > "$TARGET".tar.gz &&
tar xzf "$TARGET".tar.gz &&
cd "$TARGET" &&
./configure &&
sudo make install &&
cp gtags.vim ~/.vim/plugin/

exit $?
