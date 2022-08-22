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
choco install luarocks -y
choco install ripgrep -y

# installing for latest version not in choco packages
# TODO add manual download, unzip and system env setup
# pwsh -c "(New-Object Net.WebClient).DownloadFile('https://luarocks.org/releases/luarocks-3.9.1-windows-64.zip', luarocks-3.9.1-windows-64.zip')"
# pwsh -c "(New-Object Net.WebClient).DownloadFile('https://github.com/JohnnyMorganz/StyLua/releases/download/v0.14.2/stylua-win64.zip', stylua-win64.zip')"


# node installation
nvm install lts

# pip packages
pip install neovim
pip install black

# npm packages
npm i -g neovim
npm i -g prettier
