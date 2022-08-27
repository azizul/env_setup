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
choco install lazygit -y
choco install rust -y

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


# windows terminal customization
# manually install powershell from windows store
# 1.0 get powershell theme and customization
winget install JanDeDobbeleer.OhMyPosh -s winget
# 1.1 to update
winget upgrade JanDeDobbeleer.OhMyPosh -s winget
# 2.0 create path and file for the powershell config
New-Item -Path $PROFILE -Type File -Force
# add the following to the file
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression
# select the themes in $env:POSH_THEMES_PATH
# Get the terminal shell icon from https://www.powershellgallery.com/packages/Terminal-Icons
Install-Module -Name Terminal-Icons
# for some odd reason can't delete the old version of PSReadLine
Install-Module -Name PSReadLine -f
# install Z
Install-Module -Name z
# copied the config from windows11/config/powershell/ to $PROFILE

