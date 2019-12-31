#!/bin/bash

current_dir=`pwd`

cd apt
bash INSTALL.sh
cd "$current_dir"

cd dotfiles
bash INSTALL.sh
cd "$current_dir"

cd bin
bash INSTALL.sh
cd "$current_dir"

