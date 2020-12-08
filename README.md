This is dotfiles for me.

# Installation
The procedure below assumes you use this just after you clean-install Ubuntu environment.

## Prerequisites
You have to create & add ssh key into github by the following command
```
ssh-keygen -t rsa
cat ~/.ssh/id_isa.pub
```

## Main
Copy, paste and execute the following commands in terminal
```
sudo apt update
sudo apt install -y git ansible
mkdir -p ~/git
cd ~/git
git clone git@github.com:yasukei/dotfiles.git
cd ~/git/dotfiles
ansible-playbook  playbook.yml
```

# reference
* [最強の dotfiles 駆動開発と GitHub で管理する運用方法](http://qiita.com/b4b4r07/items/b70178e021bef12cd4a2)
* [優れた dotfiles を設計する](http://tellme.tokyo/post/2015/07/16/dotfiles/)

