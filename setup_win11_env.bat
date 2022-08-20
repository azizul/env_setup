# choco installations 
pwsh -c "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

# choco packages
choco install 7zip -y
choco install adobedigitaleditions -y
choco install asio4all -y
choco install calibre -y
choco install calibre-dedrm -y
choco install ConEmu -y
choco install Far -y
choco install git -y
choco install llvm -y
choco install maven -y
choco install neovim -y
choco install notepadplusplus -y
choco install nvm -y
choco install openjdk -y
choco install OpenOffice -y
choco install powertoys -y
choco install putty -y
choco install python -y
choco install vlc -y
choco install vscode -y
choco install winamp -y
choco install winmerge -y
choco install wireshark -y

# node installation
nvm install lts

# pip packages
pip install neovim
# TODO not working in neovim
pip install black

# npm packages
npm i -g neovim
npm i -g prettier
# TODO not working
npm i -g @johnnymorganz/stylua
