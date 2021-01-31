# First Boot after Install
All Files in D/L/linux Files
#### If dual boot 
To Sync clock between OS's

`timedatectl set-local-rtc 1 --adjust-system-clock`

**show users with root acceses**    
`grep '^sudo:.*$' /etc/group | cut -d: -f4`

**to repair packages**
sudo dpkg --configure -a
**Creating a new user:**    
`sudo adduser username`   

**Add user to root group:**    
`sudo usermod -aG sudo username`

**Check users in the pc:**   
`less /etc/passwd(each line is a new user)`    

**Change pc name:**   
`sudo hostname <new_hostname>`    
`sudo nano /etc/hostname`     
`sudo nano /etc/hosts`     

**Packages(guide):**    
package mangament system (tools and formats to install,update,uninstall apps in linux)    

*types of packages*    
1. DPKG – Debian Package Management System for the Debian Linux family. uses .deb files for installation   
   * APT (Advanced Packaging Tool), is a powerful command line interface for dpkg   
   * Synaptic/software store/discover are GUI for dpkg
2.RPM - Redhat Package Manager
   * YUM(Yellowdog Updater Modifed) powerful command line interface for rpm
   * DNF(Dandified Yum) new version of Yum default in latest distros of red hat. uses .rpm files for installation
3.Pacman-(arch) is the default package manager in Arch based linux distro's 

>Snap for ubuntu with all dependencies(most popular)  
appimage(like snap) for all distros(preferrable)  
flatpak for fedora and all distros  

Personal Package Archives(ppa):  
used to publish your application to ubuntu repository and installable via apt  
add ppa for software source link
>sudo add-apt-repository ppa:source link  

to remove those ppa  
>sudo add-apt-repository --remove ppa:source  

fix apt through : sudo apt update --fix-missing

**To install Kde in ubuntu 18**  
>sudo apt update  
>sudo apt upgrade  
>sudo apt dist-upgrade  
>sudo apt autoremove  
or
>sudo apt update && apt upgrade && apt dist-upgrade && apt autoremove   
>sudo apt install kde-plasma-desktop  

**list Desktop Environments**  
`ls -l /usr/share/xsessions/`

  
**Removes Default Desktop Environment**
>sudo apt purge ubuntu-desktop ubuntu.desktop gnome-shell gnome-shell* gnome*

>sudo rm -rf /usr/share/xsessions/ubuntu.desktop   
>sudo rm -rf /usr/share/xsessions/ubuntu-communitheme-snap.desktop    
>sudo apt autoremove      

**Install Brave Browser**   
`sudo apt install apt-transport-https curl`

>curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

>echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

>sudo apt update   
>sudo apt install brave-browser   

  
**Adding ppa for various softwares**    
>Add One by One

`sudo apt-add-repository ppa:teejee2008/ppa`  

`sudo add-apt-repository ppa:graphics-drivers/ppa`    
check the latest driver version (`sudo apt install nvidia-driver-`) press tab to see available versions and fill with highest version

`sudo add-apt-repository ppa:rvm/smplayer`

`sudo add-apt-repository ppa:deadsnakes/ppa`

`sudo apt-get update`

  
**Necessary Packages**(available in Repository)    
`sudo apt install pavucontrol cpu-checker qemu-kvm bridge-utils timeshift samba git-all conky-all saytime synaptic ubuntu-restricted-extras gdebi libqt5svg5 qml-module-qtquick-controls clementine yakuake copyq net-tools ifupdown qbittorrent plasma-widgets-addons plasma-nm libgtk2.0-0:i386 libgdk-pixbuf2.0-0:i386 espeak-ng meld `    

Download ocs-url from internet in deb package and install      
**snap pacakages needed**     
>sudo snap install  android-studio  --classic       
>sudo snap install code --classic       
# UI Setup:
 
**stop plasma and restart**     
>kquitapp5 plasmashell   
>kstart5 plasmashell     

**Theme guide:**     
    start with the wallpapers-->Desktop UI-->Icons-->Themes-->Apps-->App Themes-->Consistent look(transperant,hue,dark)
    
## Settings:    
### Appearance:     
* **Workspace Theme:**    
  1. look and feel:    
            Name: Qogir-light/Aritim-dark  
            Location: .local/share/plasma/    
  2. Desktop Theme:   
            Name: Qogir/Qogir-dark
            Location: .local/share/plasma/desktop/
  3. Cursor Theme:
            Name: PearDarkCursors
  4. Splash Screen:
            Name: Qogir-light
            Location: .local/share/plasma/
* **Colors:**
        Name:Qogirlight/inverse-dark
        Location: .local/share/color-schemes
* **Fonts:**
        Name: Manjari 12pt
* **Icons:**
        Name: Flat-remix-blue    
        Location: .local/share/icons
* **Application Style**
  1. Widget style:
            Name: Breeze
            settings: Transperancy change
            Main toolbar : Below Icons
            Secondary : Beside icons
  2. Window Decoration:
            Name: Aritim light/Aritim Dark
            Location: .local/share/aurorae/themes
            buttons: menu, keepabove others
  3. Gtk style:
            Name: Aritim Dark
            Icon: flat remix
            Cursor theme: PearDarkCursors

### WorkSpace:
* **Desktop Behaviour**
  1. Desktop Effects:
            Background Contrast
            Blur
            Desaturate unresponsive application
            Desktop cube
            Desktop cube animation
            Dim screen for administrator mode
            Eye on screen
            Fading popups
            Flip Switch
            Glide
            Login
            Logout
            Magic lamp
            Maximize
            Mouse click animation
            Rubberband Maximize
            Slide back
            Sliding popups
            Sliding tooltips
            Translucency
* **Windows Management**
  1. Window Behaviour:
            Focus: click
            moving: geometry on
  2. Task Switcher:
            cover switch
            recently used
            others off
* **Shortcuts:**
    Clementine: music cut
* Startup
  1. Login Screen
            theme peardarkcursors
            location: /usr/share/sddm/themes
            auto login
  2. Desktop Session
            end session
            start new session
* **Search:**   
        File search:Disable

### Personalization:
* **Account Details:**
        Disable all
        Auto login
* **Regional Settings:**
        locale: indian format
* **Applications:**
        default applications:
        web browser: Firefox
        Launch Feedback: Blinking
* **Accesibility:**
        Bell: Custom Oxygen Sys Special modifier keys
        Sticky keys ctrl,alt,shift
        one press key and other later for a working combo
        lock keys double press the key to activate it and key combo press the key again to
        deactivate (don't turn off) don't turn this on
        locking keys
        lock activated or deactivated
        use the system bell with a gesture

### Network:
(included in linux kernel no need of additional drivers)
* **Connections:**
        ipv4: 192.168.1.2
        1.1.1.1
        duplex: full
        speed:1000
  1. check network  
        >ifconfig  

        edit /etc/resolv.conf  
        comment everything add   
        >nameserver 1.1.1.1   
        >nameserver 8.8.8.8  
        >nameserver 9.9.9.9   

        edit /etc/network/interfaces   
        add  
        >auto enp2s0  
        >iface enp2s0 inet static   
        >address 192.168.1.2    
        >netmask 255.255.255.0    
        >gateway 192.168.1.1    
        >dns-nameservers 1.1.1.1 9.9.9.9 8.8.8.8       

       **to restart network interface**    
        >sudo ip a flush interfacename  
        >sudo systemctl restart networking.service 

        then use to turn on   
        >sudo ifup interfacename   

* **Settings:**
        preferences: 2seconds all options
        Cache: off
        Browser identification:
        add operating system: off

### Hardware:
* **Input Devices:**
        Keyboard: Numlock On
        Mouse:
        double click to open
        speed: 3
        acceleration: flat
* **Display and Monitor:**
        60hz
        Compositor:
        4 points
        accurate
        opengl 3.1
        automatic
        only for shown windows
* **Kde Connect:**
        pair android phone on same network
        send notifications , screen saver-->Off
* **Drives:**
  1. Mounting Drives:  
    for all the devices attached and its details  
    >sudo blkid     

    edit this   
    >sudo nano /etc/fstab    
    >paste uuid=" " /mount location(preferred /mnt/C(directory name) ) ntfs users,defaults 0 0   

  2. Network Sharing(samba):      
    Take a drive and copy its location (C D mounted)    
    To Restart:   
    >sudo service smbd restart    

    edit file      
    >/etc/samba/smb.conf    

    add these lines at the end of the file    
    >[Name to be displayed for the user ]   
    >path = Path of the folder to share      
    >writeable = yes(permission)     
    >browseable = yes(permission)         
    >comment = Sharing D drive(Description)      

    Add a samba password to access on network       
    >sudo ufw allow samba       
    >sudo smbpasswd -a usernametologinby( to add new user)         

    type the new password    
    access on network with the user name and password    
    restart service:   
    >sudo service smbd restart   
  3. Audio:    
    edit this file    
    >sudo nano /etc/pulse/daemon.conf         

    paste these lines        
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
    
    This file also     
    >sudo nano /etc/asound.conf    

    add these lines     
    >\#Use PulseAudio plugin hw    
    >pcm.!default {     
    >type plug     
    >slave.pcm hw      
    >} 

    `pulseaudio -k` (to restart pavucontrol service)    

## Applications UI:
**Terminal:**    
>trigger blur effect and background transperancy     
>use monospaced fonts to have better ui     
>shortcut f10 for yakuake and ctrl alt t for konsole      
>manage profiles: use konsole profile     
>width 100    
>height 100      
>position middle    
>focus mouse on     
>shorcuts ctrl tab for session shift  

**Desktop:**
>Configure desktop
    folder view slideshow   
    folder location   
    align columns    
    sorting type   
    size 4   
    tooltips   
    preview panes all files   
    desktop toolbox off   

**Desktop configure:**   
* add a new empty panel on top   
    add widgets   
    (in order to look good)   
    * application dashboard:(shortcut alt+f1 for windows key)   
            sort alphbetically   
            all others off   
    * global menu   
        (push to the end for clean look)     
    * panel spacer   
    * network speed   
            one above   
            show upload      
    * system tray:      
  	audio    
        bluetooth    
        device    
        kde connect    
        network    
        updates    
        * Entries:    
            bluetooth:hidden    
            audio:shown    
            networks:shown    
    * digital clock:    
        show seconds    
        use 24 hour    
        comicsans font    
        show week numbers    
        holidays    
    * lock widgets    
* add a side panel and add home icon to it
    * add icon only task manager
    * pin folder icon, firefox, brave, vs code
    * recycle bin at the end    
   
## Software:

1. Gparted(Works)
2. Browsers:    
    Use Firefox with the settings files and extension zip in it's profile location.     
    Use Brave as Chrome Based Browser as alternative.   
    * Brave:
        1. settings:
     	* open new tab page
     	* use gtk(to be consistent with desktop ui)
     	* use wideaddress bar
     	* hide rewards
     	* all logins off
     	* all extension off
     	* autocomplete search 
     	* send private info off
     	* send do not track
     	* payment off
     	* download location
     	* background apps off
     	* Extensions:(hide everything in menu)
     		*   awesome screenshot
     		*  browsec
     		*  browser clean pro
     		*	enhancer youtube:
     			1. detach player on
     			2. pin to bottom left
     			3. remove ads,annotations
     			4. enlarge player,pause background videos,quality 720p auto
     			5. disable autoplay,enable theatre mode , comments,description
     		*	google dictionary
     		*	grammerly
     		*	https
     		*	keepa
     		*	lastpass
     		*	momentum:
     			1. weather,focus,quotes	
     		*	pop up blocker 
     		*	selection context search:
     			1. google,youtube,maps,wikipedia,amazon to show on menu
     		*	tab session manager:
     		*	ublock origin
     		*	webrtc control
     		*	wikiwand
     		*	wot
        1. rewards off

3. nvidia drivers(nvidia-smi version check)
4. Java
    location of install
    >/usr/lib/jvm/java-versionnumber-openjdk-amd64/bin/ 
    
    add it to Environment variables

    >nano ~/.bashrc

    (effects after logout and login) or use (`. ~/.bashrc`)

    >export JAVA_HOME=/usr/lib/jvm/java-versionnumber-openjdk-amd64/   
    >export PATH=$PATH:JAVA_HOME/bin   
    
    to verify
    >echo \$JAVA_HOME   
    >echo $PATH   

5. Android
    * check pc info
        >egrep -c '(vmx|svm)' /proc/cpuinfo

    * to add user to kvm group
        >sudo adduser <username> kvm

    * to take permission of kvm
        >sudo chown <username> /dev/kvm

        store all files in home/android/sdk folder   
        setup finish and let it download all needed files   
        go to avd manager and download two images one latest to work on one old to test on   
        (android 10 and android 9)   
        Pixel 2 android 10 device frame off   
        pixel 2 android 9 device frame off   
        create a desktop shortcut with android studio setting:   
        * Configuring Studio(no need if installed with snap)   
        export ANDROID=/opt/android-studio/   
        export PATH=ANDROID/bin:$PATH   
        this is the format to add any Environment variables   
        into ~/.bashrc   
6. copyq   
   * preferences:   
            autostart   
            select with mouse   
            paste   
            windows insert shortcut for tray data   
7. albert(everything alternative)   
    * search files easy and fast   
    >curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
    
    download albert deb package from [here](https://software.opensuse.org/download.html?project=home:manuelschneid3r&package=albert) then install with gdebi
    * files index /home,/mnt,/opt,/usr,/var   
8. pulseeffects   
9. conky   
    >wget --no-check-certificate https://github.com/teejee2008/conky-manager/releases/download/v2.4/conky-manager-v2.4-amd64.run   
    >chmod +x conky-manager-v2.4-amd64.run   
    >sudo ./conky-manager-v2.4-amd64.run   

    paste conky custom file in .conky folder   
10. Okulus/foxit(Default Pdf Reader,but foxit is a bit better)   
11. Vscode:
        install settings sync and paste this   
        gist:c31cf461cee0ac43c2f6604cad9afe87   
        token:6372bf5c8850949ffed188a5dc4c32edb2802929  
12. Talking Clock:   
    >run a cronjob to say time in telugu     
    > date +"ఇపుడు సమయం, %_I గంటల %M నిమిషాలు" | espeak-ng -s 120 -p 75 -v te              
13. qbittorrent
        how splash
        start qbittorent
        minimize to tray
        downloads folder qbittorent
        use different port
        tcp
        max global 900
        prefer encryption
        anonymous mode
        no queuing
        torrent columns
        name size done seeds peers down up eta
14. clementine
15. wireshark
16. Vlc   
    settings need to change 
18. TeamViewer
19. LibreOffice/MsOffice
    install playonlinux and download 32bit 2007 msoffice with key   
    install in playonlinux and run them twice. associate files to them and use normally.    
 
20. xdm
    download and install        
21. dolphin file manager        
    folder size        
    undo delete        
22. yakuake        
    f10 shortcut        
23. activity watch
        download latest and extract
        starting ./aw-qt
        running localhost:5600
        autostart
        in settings autostart select app
        location/./aw-qt
24. Peazip        
    Download peazip gtk version of 64bit and install        
    install following to make it display        
    `sudo apt install libgtk2.0-0:i386 libgdk-pixbuf2.0-0:i386`        
25.Smplayer    
    one ini file mpv    
    postprocessing driver gpu    
    5.1 surround no pitch yes    
    global volume off    
    threads decoding 8    
    hardware decoding on    
    cache manual local to 30000    
    show subtitle on screenshots    
    encoding utf-8        
    font manjari 30    
    prevent window to get outside        
    icon set breeze dark    
    show only when moving the mouse to the bottom of screen onle    
    one instance    
    close ctrl+w    
    ctrl left/right 1 minute    
    mouse wheel volume    
    playlist add files consecutive    
    info auto auto sort        
    .config/smplayer/themes themes downloaded    
    breeze dark    

26. Sublime text     
    Install with snap and just change ui to light     
    increase font and use it just for text editing     
   
27. PhotoShop
	Install latest photoshop using the github [link](https://github.com/Gictorbit/photoshopCClinux)	
	
## Testing Softwares:
* openvpn    
* softether vpn new good
* logme1n hamachi
* protonvpn
* wireguard
* windscribe
* i2p
* cyberghost
* purevpn
* wine
* lutrix
* crossover
* darling
* affinity photo
* corel draw suite
* autodesk suite





