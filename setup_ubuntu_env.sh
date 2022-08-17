#!/bin/bash
read -sp "Enter password : " password
# neovim uncomment after setup
echo $password | sudo -S apt-get install software-properties-common -y
echo $password | sudo -S add-apt-repository ppa:neovim-ppa/stable
echo $password | sudo -S apt-get update -y
echo $password | sudo -S apt-get install neovim -y

# programming tool set
# 1.0 lua
echo $password | sudo -S apt-get install lua5.3 -y
# 2.0 nodejs via nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# need to run manually the following
# source ~/.bashrc
# NVM='nvm install --lts'
# eval $NVM

# neovim dependency


