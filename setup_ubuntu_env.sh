#!/bin/bash
read -sp "Enter password : " password
# neovim uncomment after setup
echo $password | sudo -S apt-get install software-properties-common -y
echo $password | sudo -S add-apt-repository ppa:neovim-ppa/stable
echo $password | sudo -S apt-get update -y
echo $password | sudo -S apt-get install neovim -y

# import private keys
# ssh
# gpg

# SCM tools
# GIT
# lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[0-35.]+')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit

# enable copying between WSL terminals
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/

# development dependencies
$password | sudo -S apt-get apt install build-essential libreadline-dev unzip -y
# tool dependencies
echo $password | sudo -S apt-get install ripgrep -y # text based regex for telescope

# programming tool set
# 1.0 lua
curl -R -O http://www.lua.org/ftp/lua-5.3.5.tar.gz
tar -zxf lua-5.3.5.tar.gz
cd lua-5.3.5
make linux test
$password | sudo -S make install

# 1.1 Install lua package manager
cd ..
wget https://luarocks.org/releases/luarocks-3.8.0.tar.gz
tar zxpf luarocks-3.8.0.tar.gz
cd luarocks-3.8.0
./configure --with-lua-include=/usr/local/include
make
echo $password | sudo -S make install

# 1.2 cleanup
cd ..
rm -rf lua-5.3.5
rm -rf lua-5.3.5.tar.gz
rm -rf luarocks-3.8.0
rm -rf luarocks-3.8.0.tar.gz

# 2.0 nodejs via nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# need to run manually the following
# source ~/.bashrc
# nvm install --lts

# 3.0 Go
echo $password | sudo -S apt-get install golang-go -y

# neovim dependency


# oh my posh
# 01 binary installation
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
# 02 download the themes
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

# JDK installation
# download specific version to /opt, i.e jdk18 at https://jdk.java.net
# wget https://download.java.net/java/GA/jdk18.0.2.1/db379da656dc47308e138f21b33976fa/1/GPL/openjdk-18.0.2.1_linux-x64_bin.tar.gz  
# add to .bash_profile JAVA_HOME and PATH

# imporove bash completion
# manually edit /etc/bash.bashrc and enable completion
