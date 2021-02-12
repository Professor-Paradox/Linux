
 
sudo apt-get purge ubuntu-desktop ubuntu.desktop gnome-shell gnome-shell* gnome* gnome-* -y
sudo rm -rf /usr/share/xsessions/ubuntu.desktop
sudo rm -rf /usr/share/xsessions/ubuntu-communitheme-snap.desktop

echo "desktop environments installed"
ls -l /usr/share/xsessions/
sleep 5


echo "editing system files"
echo "Backing up the files for safety"
sleep 5
sudo service smbd restart
sudo ufw allow samba
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.backup
echo "changing samba permissions from md file"
sleep 5
sudo tee -a /etc/samba/smb.conf > /dev/null <<EOT
[D-Drive ]
path = /mnt/D
writeable = yes
browseable = yes
comment = Sharing D drive
EOT
echo "adding to audio file"
sleep 5
sudo cp /etc/pulse/daemon.conf /etc/pulse/daemon.conf.backup
sudo tee -a /etc/pulse/daemon.conf > /dev/null <<EOT
default-sample-format = float32le
default-sample-channels = 2
default-channel-map = front-left,front-right
default-fragments = 2
default-fragment-size-msec = 125
resample-method = speex-float-10
high-priority = yes
nice-level = -11
realtime-scheduling = yes
realtime-priority = 9
rlimit-rtprio = 9
daemonize = no
default-sample-rate = 48000
alternate-sample-rate = 44100
EOT

echo "adding to audio file"
sleep 5
sudo cp /etc/asound.conf /etc/asound.conf.backup
sudo tee -a /etc/asound.conf > /dev/null <<EOT
#Use PulseAudio plugin hw
pcm.!default {
type plug
slave.pcm hw
}
EOT
pulseaudio -k

echo "editing network files"
sleep 5
sudo cp /etc/resolv.conf /etc/resolv.conf.backup
sudo rm /etc/resolv.conf
sudo touch /etc/resolv.conf
sudo tee -a /etc/resolv.conf > /dev/null <<EOT
nameserver 1.1.1.1
nameserver 8.8.8.8
nameserver 9.9.9.9
EOT
sudo cp /etc/network/interfaces /etc/network/interfaces.backup
sudo tee -a /etc/network/interfaces > /dev/null <<EOT
auto enp2s0
iface enp2s0 inet static
address 192.168.1.2
netmask 255.255.255.0
gateway 192.168.1.1
dns-nameservers 1.1.1.1 9.9.9.9 8.8.8.8
EOT
sudo ip a flush enp2s0
sudo systemctl restart networking.service
sudo ifup enp2s0
sleep 5
(crontab -l ; echo "*/15 * * * *	/home/t/.TalkingClockCron.sh") | crontab -
