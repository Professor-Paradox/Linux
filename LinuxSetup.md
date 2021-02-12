# After install of Ubuntu OS Use this file

All Files are in the D/L/linux Files folder

-   On a dual boot system with ubuntu and windows to Sync clock between OS's  
     `timedatectl set-local-rtc 1 --adjust-system-clock`

-   **show users with root acceses**  
     `grep '^sudo:.*$' /etc/group | cut -d: -f4`

-   **Creating a new user:**  
     `sudo adduser username`

-   **Add user to root group:**  
     `sudo usermod -aG sudo username`

-   **Check users in the pc:**  
     `less /etc/passwd(each line is a new user)`

-   **Change pc name:**  
     `sudo hostname <new_hostname>`  
     `sudo nano /etc/hostname`  
     `sudo nano /etc/hosts`

-   **To list All Desktop Environments**  
     `ls -l /usr/share/xsessions/`

-   **To repair packages**  
     `sudo dpkg --configure -a`

-   **Update all the packages**

```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get autoremove
sudo apt-get autoclean
```

## Packages

The Main part of Linux being popular and helps open source is that we can package/build our applications in various formats.  
Each O.S/linux distro supports one Package management system.  
A package management system is used to install/update/uninstall applications.

There are 4 types of packages. and depending on the manager all Linux distro's are grouped into these 4 management systems.

These are the package management systems.

### DEB files

DPKG -> Debian Package Management System is used in distributions based on Debian.  
In These distro's all the installation files have an extension .deb.  
APT (Advanced Packaging Tool), is a powerful command-line interface for dpkg  
We use apt for installing most of our software in Debian/Ubuntu-based distro's.

#### Personal Package Archives(ppa):

In the ubuntu based distro's, we might need software that is not available in the official repositories to install.  
In those situations we can link to a third-party repository, this is done by linking to their PPA.  
we add PPA of the software we want to install

`sudo add-apt-repository PPA: source link` creates a link to the archive.  
`sudo apt-get update` updates our repo with all the latest applications in official and third-party archives.  
`sudo add-apt-repository --remove PPA: source link` will remove the link to the archive.

some times we get errors during updating or installing software, to fix them using `sudo apt update --fix-missing`

### RPM files

RPM -> Redhat Package Manager is used in distributions based on red hat O.S.  
In these distro's all the installation files have an extension of .rpm
YUM(Yellowdog Updater Modified) is an old yet powerful command-line interface for rpm  
DNF(Dandified Yum) is the latest command line intending to replace yum.
We use yum/DNF to install the software in Redhat/cent os based distro's.

### Compile from source

Few distributions don't use any package manager or don't need one.  
These distro's mostly install software by compiling them from the source code.  
The most common distribution that compiles everything from source is arch Linux.  
Arch uses **Pacman** as the package manager.

### Universal packages

In the last 3 years, there was a movement to create an application once and run it in all the different distributions without any errors.  
There are 3 different universal package types, each supporting by most and all the distro's in 2021.

1. snap: ubuntu created this format and comes by default in ubuntu distros.
2. flatpak: fedora created this format and comes by default in the Fedora distros.
3. app image is another open-source universal package, unlike the above two packages, this package doesn't need installation, it can be run directly with the file called an app image.

**First Change the Environment UI**

-   **To Stop and restart plasmashell**  
     `kquitapp5 plasmashell`  
     `kstart5 plasmashell`

-   **Theme guide:**
-   First Search and Download the **Wallpapers** you want for the desktop.
-   Then Go to **Desktop Settings** and change it to your liking.
-   Now go to **Settings** application and configure system UI.
    -   Install **applications** you want and theme them accordingly.
-   Final goal is to achieve **Consistent UI** throughout the System.

## Settings Changes:

-   **Appearance**

    -   **Global Theme** -> whitesur dark
    -   Location -> `~/.local/share/plasma/desktoptheme/theme-name` and `/usr/share/plasma/desktoptheme`
    -   to change use `kwriteconfig5 --file ~/.config/plasmarc --group Theme --key name theme-name`
    -   **Plasma Style** -> breeze dark
    -   Location -> `~/.local/share/plasma/look-and-feel/theme-name` and `/usr/share/plasma/look-and-feel`
    -   to change through command `lookandfeeltool -a theme-name`
    -   **Application Style**
    -   Application Style -> breeze
    -   Configure Icons and toolbars: below icon, below icon
    -   window decorations -> aritim dark
    -   Location -> `~/.local/share/aurorae/themes/` and `/usr/share/kwin/decorations/`
    -   Titlebar buttons: logo,above others, minimize, maximize,close
    -   change from terminal `kwriteconfig5 --file ~/.config/kwinrc --group org.kde.kdecoration2 --key theme __aurorae__svg__cursor-value`
    -   **Colors** -> mc sur dark
    -   Location `~/.local/share/color-schemes/color-schemes/color-name` and `/usr/share/color-schemes/`
    -   change file `~/.config/kdeglobals`
    -   from terminal `kwriteconfig5 --file ~/.config/kdeglobals --group General --key ColorScheme "Theme-name"`
    -   **Fonts** - Fonts -> Change all fonts to comic sans with existing font size
    -   Install **Operator Monospace ligatures** font, locate it in this directory and install it. - Change it in each editor with `font-family:'Operator mono lig'`
        -   **Icons** -> white sur dark
        -   Location -> `~/.local/share/icons/icons/icons-name` and `/usr/share/icons/`
        -   change from terminal `kwriteconfig5 --file ~/.config/kdeglobals --group Icons --key Theme "icons-name`
    -   **Cursors** -> white sur cursors - Location: `~/.icons/`
    -   located in `~/.icons/cursor-name` and `/usr/share/icons/`
    -   change from terminal `kwriteconfig5 --file ~/.config/kcminputrc --group Mouse --key cursorTheme cursor-value`
    -   **kvantum theme**
    -   `kvantummanager --set themename`
    -   kvantum config detail file ./config/Kvantum/kvantum.kvconfig
    -   **splash screen**
    -   located in `~/.local/share/plasma/lookandfeel/theme-name` and `/usr/share/plasma/look-and-feel/`
    -   change from terminal `kwriteconfig5 --file ~/.config/kwinrc --group KSplash --key Theme value`
    -   **plasmoids(widgets/applets)**  
        the user installed widgets for small tasks/trigger relaying on big things.like weather,calendar
    -   located in `~/.local/share/plasma/plasmoids/` and `/usr/share/plasma/plasmoids/`
    -   **applicationStyle**
    -   change from terminal `kwriteconfig5 --file ~/.config/kdeglobals --group KDE --key widgetStyle "style-name"`

-   **Workspace**

-   **Workspace Behavior**
-   Don't display informational tooltips
-   double click to open files
    -   **Desktop Effects** - Zoom
-   Background Contrast - Blur
-   De-saturate unresponsive application - Fading popups
-   Full screen - Login
-   logout

    -   maximize
    -   rubberband maximize(install this)
    -   screen edge
    -   sliding popups
    -   translucency
    -   magic lamp
    -   dialog parent
    -   Dim screen for administrator mode
    -   Desktop cube animation
    -   Desktop grid - present windows
    -   glide
    -   **Screen Edges**
    -   left top -> application launcher - right bottom -> desktop grid
    -   **Virtual Desktops**
    -   Two Desktops
    -   **Window Behavior**
    -   Show window geometry
    -   **Task Switcher**
    -   MediumRounded(install this)
    -   **Shortcuts**  
         Here are the shortcuts to disable, meaning remove any shortcuts linked to them

        -   Disable emoji selector

    -   Disable Accessibility
    -   Disable activity manager
    -   Disable all microphone sound options
    -   Disable all KDE Deamon options
    -   Disable Keyboard layout switcher
    -   Disable the touchpad option

            Here are the shortcuts(all) for each setting, if separated by a comma there is more than one way to activate a particular shortcut.

        -   System settings -> meta+I
        -   Calculator -> fn+f12 calculator button
        -   Clementine -> fn+f9 tools button - stop after this track -> fn+f6 media stop button - don't apply any other media controls we can control other players with media buttons
            -   konsole terminal -> ctrl+alt+t
            -   system monitor -> ctrl+shift+esc, fn+f11
            -   KRunner -> alt+space
            -   KRunner run command with clipboard contents -> ctrl+alt+space

    -   KWin: - all other options are disabled

        -   close window -> alt+f4
            -   Keep window above others -> meta+alt+num 5
            -   Maximize-> meta+num 5
            -   Minimize window-> meta+num 0
            -   Quick Tile window to bottom left-> meta+num 1
            -   Quick Tile window to bottom-> meta+num 2
            -   Quick Tile window to bottom right-> meta+num 3
            -   Quick Tile window to left-> meta+num 4
            -   Quick Tile window to right-> meta+num 6
            -   Quick Tile window to top left-> meta+num 7
            -   Quick Tile window to top-> meta+num 8
            -   Quick Tile window to top right-> meta+num 9
            -   Show Desktop -> meta+D
            -   Hide Window Border -> meta+`
            -   Switch to next desktop -> meta+tab
            -   Toggle present windows in all desktop -> meta+num .
            -   Walk through windows -> alt+tab
            -   Walk through windows in reverse -> alt+shift+tab
            -   window operations menu -> alt+f3
            -   Window to next desktop -> meta+alt+right
            -   Windows to previous desktop -> meta+alt+left
            -   Zoom in -> meta+=
            -   Zoom out -> meta+-
        -   Plasma:
            -   Activate application launcher widget: alt+f1,windows key
            -   Activate task manager entry 1 -> Meta+1(opens/minimizes the first application in task bar application layout)
            -   Activate task manager entry 2 -> Meta+2
            -   Activate task manager entry 3 -> Meta+3
            -   Activate task manager entry 4 -> Meta+4
            -   Activate task manager entry 5 -> Meta+5
            -   Activate task manager entry 6 -> Meta+6
            -   Activate task manager entry 7 -> Meta+7
            -   Activate task manager entry 8 -> Meta+8
            -   Activate task manager entry 9 -> Meta+9
        -   Power:
            -   Power down and power off are only turned on.
        -   Session:
            -   Lock session -> Meta+l
            -   log out -> ctrl+alt+del
        -   Edit:
            -   Copy -> ctrl+c
            -   cut -> ctrl+x
            -   paste -> ctrl+v
            -   delete backward word -> ctrl+backspace
            -   delete forward word -> ctrl+delete
            -   find -> ctrl+f
            -   find next -> f3
            -   find previous -> shift+f3
            -   undo -> ctrl+z
            -   redo -> ctrl+y
            -   select all -> ctrl+a
            -   create folder -> ctrl+shift+n
        -   file:
            -   close file -> ctrl+w
            -   permanent delete -> shift+del
            -   move to trash -> del
            -   open -> ctrl+o
            -   print -> ctrl+p
            -   rename -> f2
            -   save -> ctrl+s
            -   save as -> ctrl+shift+s
        -   navigation:
            -   back -> alt+left, back(mouse button)
            -   backward word -> ctrl+left
            -   begin -> ctrl+home
            -   beginning of line -> home
            -   end -> ctrl+end
            -   end of line -> end
            -   forward word -> ctrl+right
            -   home -> alt+home, homepage
            -   next -> pagedown
            -   next item in list -> down
            -   previous item in list -> up
            -   prior -> pageup
            -   quit -> quit
            -   refresh -> refresh, f5
        -   settings
            -   configure application -> ctrl+alt+`
        -   view
            -   show menu bar -> ctrl+m
            -   show hidden files -> ctrl+h
            -   zoom in -> ctrl+=,ctrl++
            -   zoom out -> ctrl+-

    -   **Startup and shutdown**
        -   Login screen -> Mc sur dark
        -
        -   Autostart:
            -   copyq -> `copyq .` in terminal
            -   yakuake
            -   conky
        -   Desktop session: start a empty session
    -   **Search**
        -   Disable file search
        -   krunner
            -   location center
        -   web search off

-   **Personalization**

-   **Applications**: - Launch Feedback: bouncing
-   animation: 3 seconds
-   Disable the KDE wallet subsystem.
-   After doing this run `sudo apt-get install gnome-keyring`, KDE subsystem is a credential manager of sorts if we disable it we need to install something to act in its place.

-   **Network**

-   **Connections** - Ipv4 - DNS->1.1.1.1,9.9.9.9 - Address->192.168.0.2 - gateway->192.168.0.1
-   **Settings**
-   Cookies Disable
-   Don't Send Identification

-   **Hardware**
-   **Input**
-   **Keyboard**
-   num lock on plasma startup - **Mouse** - Pointer speed 4 flat
-   **Display and Monitor**
-   **Compositor:**
-   crisp - opengl 3.1 - automatic - only for shown windows - **Night Color** - Temp: 4400k - custom time-> 17:00,09:00,5 minutes transition
-   **Kde connect** - All default settings
-   **Removable Storage** - Enable automatic mounting of removable media
-   **System Administration**  
     Nothing to change here.

## System Changes

#### Network changes

Run `ifconfig`  
This should display the current network properties, if satisfied leave it as it is.  
If not or need any changes do the following.

Run `sudo nano /etc/resolve.conf` and comment on everything in it, might need it as a backup so don't delete existing data, just comment on them.

Paste these lines in the file.

```bash
nameserver 1.1.1.1
nameserver 8.8.8.8
nameserver 9.9.9.9
```

Run `sudo nano /etc/network/interfaces` and comment everything.  
Add these lines at the end of the file.

```bash
# enp2s0 is the network adapter name from ifconfig command
auto enp2s0
iface enp2s0 inet static
address 192.168.0.2
netmask 255.255.255.0
gateway 192.168.0.1
dns-nameservers 1.1.1.1 9.9.9.9 8.8.8.8
```

If the network properties in the settings application work correctly, we don't need to perform the above actions.

**To restart network interface**

```bash
sudo ipflush interface-name
sudo systemctl restart networking.service
sudo ifup interface-name
```

#### Drives

To view all the attached devices details  
`sudo blkid`

**Mounting NTFS Drives**

`sun nano /etc/fstab`  
add these lines
`uuid=" " /mount location(preferred /mnt/C(directory name) ) ntfs users,defaults 0 0`

**Sharing Drive over network**

Network Sharing(samba):
To Restart samba:  
`sudo service smbd restart`

To share a drive first mount it to a location and copy it(C D mounted)  
run `sudo nano /etc/samba/smb.conf`  
add these lines at the end of the file

```bash
[Name to be displayed for the user ]
path = Path of the folder to share
writeable = yes(permission)
browseable = yes(permission)
comment = Sharing D drive(Description)
```

Add a samba password to access on a network

`sudo ufw allow samba`  
`sudo smbpasswd -a usernametologinby( to add new user)`

type the new password
we can access the drive on a network with the user name and password
restart the service with `sudo service smbd restart`

#### Audio modifications

The default audio of KDE is good but some tweaks can be made to make it better.

run `sudo nano /etc/pulse/daemon.conf`  
paste these lines

```bash
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
```

run `sudo nano /etc/asound.conf`  
add these lines

```bash
\#Use PulseAudio plugin hw
pcm.!default {
type plug
slave.pcm hw
}
```

restart the service with `pulseaudio -k`

### Bluetooth settings

In a dual boot system, the device has to be reconnected every time we boot in to one of the os.  
to stop that follow these.

first disconnect the bluetooth device in linux and windows before starting the process.
Then connect the bluetooth device first in linux then reboot to windows connect the device in windows and reboot to linux.

-   install chntpw package for this purpose with `sudo apt-get install chntpw`
-   mount the C drive of windows to linux, most probably already mounted check the drives list
-   open a terminal and run these commands

```bash
cd /<windowsmountpoint>/Windows/System32/config
# will open a directory similar to this.
# the following command will connect to Windows Registry
t@t-kde:/media/t/2A0C49BC0C498433/Windows/System32/config$ chntpw -e SYSTEM
# chntpw version 1.00 140201, (c) Petter N Hagen
# Hive <SYSTEM> name (from header): <SYSTEM>
# ROOT KEY at offset: 0x001020 * Subkey indexing type is: 686c <lh>
# File size 14680064 [e00000] bytes, containing 3020 pages (+ 1 headerpage)
# Used for data: 228342/14280544 blocks/bytes, unused: 127/69408 blocks/bytes.
# Simple registry editor. ? for help.
# this will open the bluetooth device details
cd CurrentControlSet\Services\BTHPORT\Parameters\Keys
# if you get the output like
# Key CurrentControlSet\Services\BTHPORT\Parameters\Keys not found!
# try this command
cd ControlSet001\Services\BTHPORT\Parameters\Keys
# output should be similar to this
# (...)\Services\BTHPORT\Parameters\Keys>
# run ls to view the device details, it will show the mac address of the bluetooth adapter(save it somewhere for later use)
ls
# Node has 1 subkeys and 0 values
# key name
# <001a7dda7113>
# cd into this directory and run ls for list of connected devices
cd 001a7dda7113
# (...)\Services\BTHPORT\Parameters\Keys\001a7dda7113>
ls
# Node has 0 subkeys and 1 values
# size     type              value name             [value if type DWORD]
# 16  3 REG_BINARY         <711c4b20c471>
# this displays the mac address of bluetooth device in my case it is a bluetooth speaker(save it for later use)
# decode the hex code attached to this device
hex 711c4b20c471
# Value <711c4b20c471> of type REG_BINARY (3), data length 16 [0x10]
# :00000  8F C3 C4 A3 5E 1B 1C F5 D8 3C F4 EB 98 0C 53 A0 ....^....<....S
# this will display the key(8F C3 C4 A3 5E 1B 1C F5 D8 3C F4 EB 98 0C 53 A0) used and stored inthe bluetooth speaker memory
# the format is different from linux and windows on how the key is stored in linux there are no spaces between character so edit the key to look similar to this 8FC3C4A35E1B1CF5D83CF4EB980C53A0(save this)
# if we add this key to our linux bluetooth keys list, we can connect to
.the device in two O.S without reconnecting ever again
# word of caution if we disconnect and reconnect in any one os the whole process has to start again so be careful.
# exit the shell
```

at this stage the bluetooth device won't connect to O.s as it still has the windows pairing key so we just override our linux pairing key with windows pairing key

now to edit the linux bluetooth pairing key

```bash
# my bluetooth adapter mac address -> 001a7dda7113
# my speaker mac address -> 711c4b20c471
# my windows speaker to bluetooth pairing key -> 8FC3C4A35E1B1CF5D83CF4EB980C53A0
# go to bluetooth directory
sudo su
# the next action needs root privileges
cd /var/lib/bluetooth
# go to the bluetooth directory with the above mac address
# the name and format of address and keys are different between windows and linux
cd 00\:1A\:7D\:DA\:71\:13/
# now go the bluetooth device in my case speaker directory
ls
# 71:1C:4B:20:C4:71  cache  settings
cd 71\:1C\:4B\:20\:C4\:71/
# there will be only one file info, edit this with nano
nano info
# in linkey change the value of key to windows pairing key
# Key=8FC3C4A35E1B1CF5D83CF4EB980C53A0
# now restart the bluetooth device
systemctl restart bluetooth
# connect to the existing paried device it should connect without any errors
# check the same in windows also
```

### Applications Setup

**Konsole/Terminal**

trigger blur effect and background transparency  
use monospaced fonts to have better UI  
shortcut f10 for yakuake and ctrl alt t for konsole  
manage profiles: use Konsole profile  
width 100  
height 100  
position middle  
focus mouse on  
shortcuts ctrl tab for session shift

**Configure desktop**

folder view slideshow  
folder location  
align columns  
sorting type  
size 4  
tooltips  
preview panes all files  
desktop toolbox off

**Panel Configuration**

-   add a new empty panel on top  
     add widgets  
     (to look good)
-   application dashboard:(shortcut alt+f1 for windows key)  
     sort alphabetically  
     all others off
-   global menu  
     (push to the end for a clean look)
-   panel spacer
    -   network speed  
         one above  
         show upload
-   system tray:  
     audio  
     bluetooth  
     device  
     kde connect  
     network  
     updates
-   Entries:  
     bluetooth:hidden  
     audio:shown  
     networks:shown
-   digital clock:  
     show seconds  
     use 24 hour  
     comicsans font  
     show week numbers  
     holidays
    -   lock widgets
-   add a side panel and add the home icon to it
-   add icon only task manager
-   pin folder icon, firefox, brave, vs code
-   recycle bin at the end
-   Install **window buttons applet** by downloading the file from the KDE store and running the install script.
-   follow the installation instructions.
-   active window is maximized
-   disable borders for maximized windows

**chrome**  
The best browser on all platforms.  
Install it by downloading the deb package from internet and installing it with `sudo apt-get install ./google-chrome-stable_current_amd64.deb`  
Log in with your Google account and sync your settings then logout to disable tracking.

**Clementine**
opensource music player
Install -> `sudo apt-get install clementine`
Settings to change

-   crossfade tracks
-   save ratings to file
-   use global shortcuts
-   columns in the display are
-   title, artist, album, album artist, genre, play count

**Copyq**  
clipboard manager  
Install -> `sudo apt-get install copyq`  
Settings to change

-   autostart
-   select with the mouse
-   windows insert shortcut

**conky**  
conky is a performance monitoring tool  
Install -> `sudo apt-get install conky-all`  
paste the pre-edited custom conky file in home directory with name .conkyrc

verify by running `conky` in the terminal.

To autostart conky, go to settings and paste `/usr/bin/conky` as the application name. it works.

**eclipse ee**  
Java IDE  
Install by downloading the eclipse installer.  
unzip it and run install.sh file, select eclipse EE as it contains everything related to java projects.

Settings to change

**electronmail**  
protonmail client  
Install -> `sudo snap install electron-mail`

**filelight**  
Storage explorer, tells the storage and files occupied in a single drive.  
Install -> `sudo apt-get install filelight`

**firefox**  
Best open-source browser
install -> `sudo apt-get install firefox`  
Settings to change

-   install the ad-blocker extension and select download location
-   Rest are your preference

**Fonts to install**  
For good development easy to read fonts and ligatures become very handy.  
Two of the popular fonts to try and use are Firacode and operator mono.  
Install **firacode** -> `sudo apt-get install fonts-firacode`  
Install **operator mono ligature** font by installing the .otf file.  
After installing we have to select them in our code editor.  
In vscode it is font-family:'opeartor mono lig','firacode'

**git**  
Most used version control system.  
Install -> `sudo apt-get install git-all`

**Java**  
By default no java version is installed, we have two options install oracle JDK or OpenJDK.  
My preference use oracle JDK, it has some proprietary packages that eclipse uses heavily.  
Install by downloading the deb file of the oracle JDK version of your preference and running `sudo apt-get install ./jdk-11.0.10_linux-x64_bin.deb`

The above command will install oracle JDK in `/usr/lib/JVM/` with version name as the folder name.

To use without any errors we have to first register this installation and link it to the environment path.  
Register the java path with the update-alternatives command.

```bash
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-11.0.10/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-11.0.10/bin/javac 1
sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jvm/jdk-11.0.10/bin/javap 1
sudo update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/jdk-11.0.10/bin/javadoc 1
```

These commands will create a global link to our java binary files.

Now create the environment variable of our java path.  
run `nano ~/.bashrc`  
Enter these lines at the end of the file

```bash
export JAVA_HOME=/usr/lib/jvm/java-versionnumber-openjdk-amd64/
export PATH=$PATH:JAVA_HOME/bin
```

apply the variables with `. ~/.bashrc`

verify java working by running these, if they show output then java installation is successful

```bash
echo \$JAVA_HOME
echo $PATH
java --version
```

**kcalc**  
kde scientific calculator  
Install -> `sudo apt-get install kcalc`

**KDE partition**  
Gparted alternative for kde  
Install -> `sudo apt-get install partitionmanager`

**kolourpaint**  
Ms paint for kde  
Install -> `sudo apt-get install kolourpaint`

**Microsoft Teams**  
zoom alternative for Linux with more features and developed by Microsoft  
Install -> `sudo snap install teams`

**nettools,ifupdown**  
network managing and monitoring tools  
Install -> `sudo apt-get install net-tools ifupdown`

**Nvidia drivers**  
Nvidia drivers are proprietary blob drivers so need to add a PPA.
Install ->

```bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt install nvidia-driver-<versionnumber>
#press tab to see available versions and fill with highest version
```

Verify successful installation by rebooting and typing `Nvidia-smi` in the terminal.

**ocs-URL**  
OCS URL is a URL mapping tool used to download and install files/themes/icon packs/applications from the internet.  
Install by downloading the ocs url deb package and install with `sudo apt-get install ./ocs-url_3.1.0-0ubuntu1_amd64.deb`

**Pavucontrol**  
audio device manager for KDE comes by default if not install.  
Install -> `sudo apt install pavucontrol`

**plasma widgets and tools**  
Widget tools for kde  
Install -> `sudo apt-get install plasma-widgets-addons plasma-nm`

**Python3**  
By default, there is a python 3 installed with ubuntu, but if we need an old or new version then we can install it by adding a PPA.  
Install -> `sudo add-apt-repository ppa:deadsnakes/ppa`, `sudo apt-get install python3.<versionnumber>`

**qbittorrent**  
Best torrent client for Linux and windows  
Install -> `sudo apt-get install qbittorrent`  
Settings to change

-   show splash
-   minimize to tray
-   downloads folder qbittorent
-   use a different port
-   TCP
-   max global 900
-   prefer encryption
-   anonymous mode
-   no queuing
-   torrent columns
-   name size has done seeds peers down up eta ratio

**Samba**  
Samba is a protocol used for sharing drives over a network  
Install -> `sudo apt-get install samba`  
The configuration is provided in the drive section.

**Smplayer**  
best media player according to me
install ->

```bash
sudo add-apt-repository PPA:rvm/smplayer
sudo apt-get update
sudo apt-get install smplayer smplayer-themes
```

settings to change

-   media engine -> mplayer
-   settings in one ini file
-   enable postprocessing by default
-   start videos in fullscreen
-   high speed playback withtout alatering pitch
-   max volume 100
-   channels by default 5.1
-   global volume off
-   hardware decoding auto
-   threads decoding 8
-   cache manual local to 30000
-   include subtitle on screenshots
-   encoding utf-8
-   font operator 30
-   icon set breeze dark
-   style breeze
-   show only when moving the mouse to the bottom of screen
-   display compact mode
-   one instance
-   shortcuts:
-   left click -> pause
-   right click -> options
-   middle click -> playlist
-   wheel -> volume control
-   drag -> none
-   volume down-> down arrow
-   volume up-> up arrow
-   audio delay decrease -> [
-   audio delay increase -> ]
-   subtitle delay decrease -> ,
-   subtitle delay increase -> .
-   close app -> ctrl+w
-   +10 second -> right
-   -10 seconds-> left
-   -1 minute -> ctrl+left
-   +1 minute -> ctrl+right
-   normal speed -> v
-   10%+ speed -> c
-   10%- speed -> x
-   add files to playlist -> videos
-   add files recursively
-   auto sort
-   monitor 16:9

**Spotify**  
Music Streaming application  
Install -> `sudo snap install Spotify`

**TeamViewer**  
Remote Desktop control application  
Install by downloading the deb file and installing with `sudo apt-get install ./teamviewer.deb`

**Timeshift**  
A tool to back up and create a snapshot of the system used to restore the system on a crash.
Install ->

```bash
sudo apt-add-repository ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift
```

**Ubuntu extras**  
Some proprietary codecs and tools for ubuntu.  
Install -> `sudo apt-get install ubuntu-restricted-extras`

**Vlc**  
best open source media player  
install -> `sudo apt-get install vlc`

**vscode**  
Best Code editor which supports multiple programming languages.  
Install by downloading the latest deb file and installing with `sudo apt-get install ./code_1.53.1-1612827767_amd64.deb`  
after installing connect your GitHub account to sync your settings.

**WPS office**  
Office suite for Linux, the best alternative for ms office in Linux.  
Install by downloading the deb file from the WPS website and installing it with `sudo apt-get install ./wps-file.deb`

**yakuake**  
a drop-down terminal designed to work with KDE.  
Install -> `sudo apt-get install yakuake`  
Settings to change

-   don't show tray icon
-   show tab bar
-   change the shortcuts
    -   close session -> ctrl+w
    -   next session -> ctrl+tab
    -   new session -> ctrl+T
    -   find -> ctrl+f
    -   copy -> ctrl+shift+c
    -   paste -> ctrl+shift+v
    -   find next -> f3
    -   find previous -> shift+f3
    -   split terminal top/bottom -> ctrl+]
    -   split terminal left/right -> ctrl+[
-   Create a new profile
    -   breeze appearance
    -   transparency 25%
    -   dejavu sans 12 font
    -   i beam cursor
    -   blinking enabled
    -   unlimited scrolling
    -   middle click paste clipboard
    -   copy on select
    -   trim leading and trailing spaces
    -   open links with direct click
    -   underline files
    -   character encoding utf-8

**zoom**  
conference video call application  
Install -> `sudo snap install zoom-client`
