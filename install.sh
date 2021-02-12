timedatectl set-local-rtc 1 --adjust-system-clock
sudo apt update && apt upgrade && apt dist-upgrade && apt autoremove -y
echo "first time install showing information"
echo "user with root access"
grep '^sudo:.*$' /etc/group | cut -d: -f4
echo "desktop environments installed"
ls -l /usr/share/xsessions/
sleep 5
sudo apt install kde-plasma-desktop -y

echo "Installing Chrome browser"
sleep 5
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt-get install google-chrome-stable

echo "adding ppa's"
sleep 5
yes | sudo add-apt-repository ppa:graphics-drivers/ppa
yes | sudo add-apt-repository ppa:rvm/smplayer 
sudo apt update

echo "installing all required softwares"
sleep 5
sudo apt-get install unzip dconf* pavucontrol cpu-checker qemu-kvm bridge-utils timeshift samba git-all conky-all synaptic ubuntu-restricted-extras gdebi libqt5svg5 qml-module-qtquick-controls clementine yakuake copyq net-tools ifupdown qbittorrent plasma-widgets-addons plasma-nm libgtk2.0-0:i386 libgdk-pixbuf2.0-0:i386 espeak-ng meld  smplayer smplayer-themes smplayer-skins -y

echo "installing vscode"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code


sudo snap install spotify 
sudo snap install sublime-text --classic

echo "adding files with data"
sleep 5
chmod +x Install_Files/FilesCopy.sh 
echo "running filescopy script"
sh ./Install_Files/FilesCopy.sh
echo "running configs"
sh ./config.sh 
sudo apt-get autoremove -y
