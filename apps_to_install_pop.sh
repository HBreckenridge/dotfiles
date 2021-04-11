
sudo apt update
sudo apt upgrade

sudo apt-get install python3
sudo apt-get install vlc
sudo apt install alacritty
sudo apt-get install virtualbox
sudo apt-get install vim
sudo apt-get install krita
sudo apt install zsh
sudo apt-get install discord
sudo chsh -s /usr/bin/zsh

sudo apt-get insta

sudo apt install apt-transport-https curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

sudo apt-get install git

cd $HOME
git clone https://github.com/EpicGames/UnrealEngine.git
~/UnrealEngine/$ ./Setup.sh 
~/UnrealEngine/$ ./GenerateProjectFiles.sh
~/UnrealEngine/$ ./make


