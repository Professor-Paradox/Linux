## Burning DVD/USB

To Install Windows We need a Bootable USB or DVD with the Windows ISO.  
To download the latest Windows 10 Officially visit [this link](https://www.microsoft.com/en-in/software-download/windows10ISO).  
go to inspect and change the device to any mobile device, to view the iso download screen and download the relavant ISO.  
file size Will be around 5GB.

After Downloading the ISO, download rufus software from [here](https://rufus.ie/).  
Insert the pendrive and Burn the ISO in to it using rufus.

If using Ubuntu follow these steps to make USB bootable

-   Format USB with NTFS or ExFAT.
    -   open KDEPartition and select the USB, Delete all partitions of the drive, then create a ExFAT partition.
-   Create a root folder for mounting the iso with `sudo mkdir /mnt/iso`
-   Mount the iso to extract all its files `sudo mount -o loop <path/to/iso/file/YOUR_ISO_FILE.ISO> /mnt/iso`
-   copy the files in this folder and paste them in the USB
-   Reboot and install Windows as usual.

If the above option doesn't work follow these steps.

-   Format USB with NTFS or ExFAT.
    -   open KDEPartition and select the USB, Delete all partitions of the drive, then create a ExFAT partition.
-   Install WoeUSB software

```bash
sudo add-apt-repository ppa:tomtomtom/woeusb && sudo apt update && sudo apt install woeusb
```

-   Open WoeUSB, Select the Device and ISO, it will start flashing the iso to USB.
-   Reboot and Install the Windows as usual.

## After OS Installation

After Windows is done Installing, follow these steps.

-   Disconnect Internet
-   Create a User Account, no need of microsoft account any where
-   After Installation is done, Remove the USB.
-   Install Audio Drivers in the folder and reboot
-   From now on when ever any software asks us to **reboot** it is preferred to reboot to avoid any future compatibility errors.
-   Then connect Internet and download **Latest nvidia drivers** and install them.
-   Now go to windows update and update everything and reboot
-   After everything is updated, download and install **latest Driver Booster by Iobit** and update all the drivers of PC.
-   Now We have to disable windows defender temporarily to install required Software
-   Go to windows defender dashboard and virus protection tab and disable all realtime protection file scanning.
-   Keep firewall settings intact they shouldn't be modified.

## Software Installation

There is an opensource tool called **Ninite** that can be used to install multiple open source and free software in a single click.  
Go to Ninite.com and configure the softwares you need from there and download the setup, When click on this file it will ask for Admin rights, give it.  
It will then download and install all the Software you selected on the website.  
Saves a lot of time.

1. **7zip**
    - Download the latest version and install
    - Make 7zip the default archive manager
2. **Adobe Photoshop**
    - Disconnect the internet to install the cracked version and follow the readme to install.
    - Make sure Windows Defender is turned off.\
3. **Adobe Dream Viewer**
4. **Adobe Premiere Pro**

5. **AutoHotKey**
    - Download the latest version and install
6. **Chocolatey**  
   Chocolatey is a packages manager for windows which can be used to install softwares from command line.  
   Install chocolatey package from (here)[https://chocolatey.org/docs/installation]  
   Run these in PowerShell Admin To Install Chocolatey.

```bash
Get-ExecutionPolicy
# if the above command returns "Restricted" run this
Set-ExecutionPolicy AllSigned

# Run this to install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# After installing choco, install all the needed packages like this
choco install clementine everything git googlechrome imageglass lavfilters openjdk --force -y
choco install peazip potplayer python3 qbittorrent --force -y
choco install sumatrapdf virtualbox vscode wiztree --force -y
```

5. **Strawberry**
    - Download the latest version and install
    - double clicking on a song will > add to queue and play if there is nothing playing already
    - buffer duration 40,000
    - Enable 1 second fadeout
    - fade on pause or resume
    - continue to next song if item is unavailable
    - metadata enable both options
    - show mood bar happy
    - Change Stop after current track to `media stop`
    - Modify the Columns Order to this
    - Title,Artist,Album,Album Artist, Genre, Play count
    - Assign music player shortcut
6. **Comfort Clipboard**
    - Install the Setup then paste the key in the software
    - Theme - Office 2007 Silver
    - Native Window Style
    - Background and Common Transparency -> Opaque
    - Font -> Comic Sans,Regular,8
    - Keyboard Shortcut -> Windows + Insert
    - Maximum fragments 5000
    - Preview Text Font -> Comic Sans,Regular,8
    - Item height 80
7. **Daum Potplayer**
    - Download the latest version and install
8. **Dolby atmos**
    - To install Dolby atmos Reboot to Safe Mode with Driver Signature Disabled
    - go to device manager and select your audio device, then update the driver with hdconfig.inf file
    - reboot and double click the appx package
    - done
9. **Spring Tool Suite**
    - download the latest version
    - have java instlled and ready to use, extract the jar file and paste the contents in C: make a shortcut to access
    - Settings to change 
    - 



10. **ElectroMail**
    - Download the latest Version and Install
11. **Everything**
    - Download the latest Version and Install
    - Shortcut fn+f10
    - Exclude Hidden Folders
12. **Firefox**
    - Download the latest Version and Install
    - Install all the extensions you need for safe and ad free browsing
13. **Git**
    - Download the latest Version and Install
14. **Google Chrome**
    - Download the latest Version and Install
    - Install all the extensions and Change the settings and Sync with your google account for backup.
15. **Internet Download Manager**
    - Extract the crack folder and install the idm setup
    - then close idm and crack it with given patch tool
    - Make sure Windows Defender is disabled.
16. **Iobit Uninstaller**
    - Download and Install the latest version
    - Uninstall all the Thirdparty applications from microsoft store.
    - Uninstall any extra software we installed till now
    - Disable all notifications
17. **Java**
    - Download and install Latest Oracle Jdk or LTS Oracle JDK
    - If using Open JDK then extract the downloaded zip and paste them in program files/Java folder
    - then Edit the Environment variables
    - In system Variables add new variable `JAVA_HOME` and paste the path of jdk, in my case `C:\Program Files\Java\jdk-15.0.2`
    - Then Add bin path in Path variable in my case it is `%JAVA_HOME%\bin`
    - Verify if everything is working by running `java -version` and `javac -version` in command prompt.
18. **KDE Connect**
    - Download the latest Exe file and install it and link it with Android phone
19. **Moo Monitor**
    - Download and install the latest Monitor and change the layout to following options
    - moo0
    - layout B
    - skin velvet BB
    - fields
    - cpu
    - cpu C
    - gpu
    - gpu c
    - mem used
    - mem swap
    - hdd io
    - hdd busy
    - network ip up time
20. **MSI Afterburner**
    - Download the latest version and Install it
    - update the riva tuner statistics software if prompted
    - it will download the needed directx tools may take some time
    - Add 200MHZ to core and memory and save it as the default profile and lock it
    - unlock fan speed control and change speed to 50% from 30 degrees, modify further as needed
    - monitor theses settings
    - gpu usage,gpu temperature,memory usage,cpu temperature,cpu usage,ram usage,framerate,frametime(text and graph)
    - 2d profile and 3d profile to 200mhz profile
    - skin transparency opaque
    - Don't autostart, run when playing games, as it keeps showing the stats on media players also
21. **Microsoft tools**
    - Install all the needed Office applications directly from the store
    - Login with Credentials and use them
    - These tools are web based so can't read local Documents
    - Download additional microsoft tools from internet like vscode and teams
22. **Microsoft Office**
    - Mount the drive and run Autorun file
    - Select Word,PowerPoint,Excel and Run the installation after it is done
    - Run the Activate office option
    - Verify by opening a blank Word document and visit the account page in file menu.
23. **Nox Player**
    - Android Emulator
    - Enable root support
    - Install Adblock,
24. **Network Monitor**
    - Install by changing the compatibility version to windows 7
    - kB/s, 0.0 Precision
    - Arial,9,ClearType,ShowBitrate,7 Width
25. **PowerShell**
    - Install the latest Windows Powershell from Store
26. **Python3**
    - Install the latest Python 3
    - Add to path
27. **qBittorrent**
    - Download and Install the latest Version
    - Show splash, start minimized
    - Download Path D:\Downloads\qBittorrent
    - Different port on each startup
    - global maximum 2000
    - Per Torrent 200
    - Anonymous Mode
    - No Torrent Queue
    - Stop Seeding When Torrent Reaches 2.0 or seeded for 2500 Min, remove torrent
    - Change the order of columns to this
    - Name,Size,Progress,Seeds,Peers,Down Speed, Up Speed,ETA,Ratio
    - paste the trackers in the trackerslist file in add trackers option
28. **qTTabBar**

    - Best ctrl+tab for windows
    - Install latest version and go to explorer -> View -> Options(click on the down arrow) -> qttabbar options will be visible
    - restore the settings in xml file

29. **Smart Defrag**
    - Install the Setup then apply Patch
30. **Speaking Clock**
    - Install Speaking Clock
    - Announce Every 20 Minutes
    - Start minimized, Show clock in Taskbar, Start clock
    - Volume High
    - Language American Male
31. **Spotify**
    - Install the latest version of spotify
32. **StarDock Fences**
    - Install the Fences Setup then Patch the Fences.exe and Reboot
    - After reboot Change the following Features
    - No Translucent
    - Outline Fences
    - Show with Rounded Corners
    - Automatically Hide after 2 minutes
    - Automatically Show When using
    - Put all Folder files in a single folder
33. **SumatraPDF**
    - Install Latest Version
34. **TeamViewer**
    - Use portable version
35. **VLC**
    - Download and Install the latest Version
36. **VSCode**
    - Download and install the latest version
    - Sync settings with your Github account for easy backups
37. **Volume Taskbar**
    - Install the latest Version
    - Changing steps 100
    - Sound_01
    - Disable fullscreen control
    - Windows 10 v2 OSD
    - Center
    - Remove all Shortcuts except default ones
38. **Windows Terminal**
    - Download latest version from store and select Powershell installed as the default shell
    - create a desktop shortcut of windows terminal and go to properties edit the shortcut option, assign ctrl+alt+T as the shortcut to open it
    - if shortcut is deleted the keybind will also be deleted
    - create a shortcut on desktop and go to its settings and add ctrl + alt + t as a keybind

## Windows Tweaks

To make windows Truly ours use the following tweaks, all tweaks won't be necessary.

### Windows Settings

Open Windows Settings and Tweak as you like.  
Below are some suggestions you can use.

-   night settings times 5-8
-   disable notifications
-   focus assist off all
-   screen 15minute times
-   power options
-   high performance
    -   harddisk off never
-   power button
    -   turn off fastmode
-   storage sense on
-   show timeline off
-   Advanced System Settings
    -   change name to "T_Windows"
    -   best appearance
    -   virtual memory manual 16000
    -   system protection turn on 10%
    -   create one every major version
-   disable mouse acceleration
    -   middle accuracy
    -   3 lines horizontal and vertical movement
    -   mouse theme
-   share off
-   typing off all
-   Open Folder to view Contents PenDrive1
-   adapter settings
    -   ipv4 192.168.0.2
        1.1.1.1
        9.9.9.9
    -   gateway 192.168.0.1
-   network sharing
    -   private on all
    -   Go to all drives properties
    -   change the sharing to everyone and full write access
-   personalize
    -   wallpaper
    -   icons This PC
    -   color mint dark
    -   unpin all start
        -   folders settings
        -   app list
        -   added apps
        -   use smalltaskbar
-   programs
    -   turn windows features off
        .net 3 4
-   Search
    -   All Off
-   privacy all off
-   check for updates
-   Disable Delivery Optimization
-   enable developer mode
-   Install the OperatorMonoGlib Font by double clicking it set it up in VSCode

-   Windows Explorer

    -   Goto File -> Change Folder Options
        -   file explorer into this pc/show most used in quick access
        -   can change properties off all sub folder to take the parent options apply folders
        -   ctrl shift 1 to increase icon size
        -   search all off

-   TO **Open An Application on Boot** copy the shortcut of that application to `C:\Users\T\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` folder. or type shell:startup in terminal to open this path.

### Windows Registry Tweaks

Open registry editor and backup the settings to a file

Now open the Registry file(EditThisFile.reg) in this directory and understand each setting before applying it.  
Create a new text with notepad and save it as `test.reg` and copy paste the line for the setting you like to apply.

The content in the test.reg file should be in the following format

```bash
Windows Registry Editor Version 5.00
# this is needed to specify we are editing registry
# Commands to execute
```

### Windows Group Policy

go to gpedit.  
go to Computer Configuration > Administrative Templates > Windows Components > Microsoft Defender Antivirus and enable the turn off defender option.  
this will disable windows defender permanently.

### Windows Services Tweaks

We can disable the following services and more depending on our need.  
Be careful before disabling a service and search about and see if it is needed for your daily workload.

-   Windows Defender & Firewall
-   Windows Mobile Hotspot Service
-   Bluetooth Support Service
-   Print Spooler
-   Fax
-   Remote Desktop Configuration
-   Remote Desktop Services
-   Windows Insider Service
-   Secondary Logon
-   Downloaded Maps Manager
-   Offline Files
-   Windows Connect Now
-   Remote Registry
-   Application Layer Gateway Service
-   Smart Card
-   Windows Image Acquisition
-   Security Center
-   Connected User Experiences and Telemetry
-   Retail Demo Service
-   Windows Media Player Network Sharing Service
-   AllJoyn Router Service
-   Geolocation Service
-   Windows Biometric Service
-   Program Compatibility Assistant Service
-   Enterprise App Management Service

Reboot the pc

## Errors and Solutions

1. **You don't have access to this folder**  
   This occurs if the current user doesn't have read write access to that drive or folder.  
   We can solve this by giving the user permissions or by changing the ownership of the folder.

    - Goto folder/drive **Properties**
    - Goto **Security** -> **Advanced**
    - Click on Change the Ownership button
    - Search for your username and click OK
    - Then click on two checkboxes, which will give the current selected user the ownership of the folder and its contents.
    - It may take some time, during the process if it asks for any confirmations hit **yes**.
    - Verify if the above problem still exists by opening the folder.

2. **The Recycle Bin on E:\ is corrupted. Do you want to empty the Recycle Bin for this drive**
    - This occurs when we accidentally delete the hidden recylce bin folder.
    - To fix open **cmd(run as administrator)**, type `rd /s /q <drive letter>:\$Recycle.bin`
    - In my case the command is `rd /s /q D:\$Recycle.bin`
    - Verify if the error still exists

Windows Default Keybinds

| Keybinds                     | usage                                                                                               |
| ---------------------------- | --------------------------------------------------------------------------------------------------- |
| Ctrl + Backspace             | Application Specific (Mostly Delete word before the cursor)                                         |
| Ctrl + Tab                   | Application Specific, Mostly switch between open tabs                                               |
| Ctrl + w                     | Application Specific, Mostly Close the Active Win + Shiftdow, tab                                   |
| Ctrl + e                     | Application Specific, Mostly use default search of application                                      |
| Ctrl + r                     | Application Specific, Mostly reload the application window, tab                                     |
| Ctrl + y                     | Redo an action(un-undo)                                                                             |
| Ctrl + o                     | Application Specific, Mostly Open a document or page                                                |
| Ctrl + p                     | Application Specific, Mostly Print the current window, tab, document                                |
| Ctrl + a                     | Select All                                                                                          |
| Ctrl + s                     | Save the Document                                                                                   |
| Ctrl + d                     | Application Specific, Mostly Bookmark a page or document                                            |
| Ctrl + f                     | find content in current doc or page                                                                 |
| Ctrl + g                     | Application Specific, Mostly Goto next finding of search                                            |
| Ctrl + h                     | Application Specific, Mostly Find and Replace or history of application                             |
| Ctrl + j                     | Application Specific, Mostly Downloads tab in browsers                                              |
| Ctrl + l                     | Application Specific, Mostly go to search bar in browsers                                           |
| Ctrl + z                     | Undo previous action                                                                                |
| Ctrl + x                     | Cut selected content                                                                                |
| Ctrl + c                     | copy selected content                                                                               |
| Ctrl + v                     | paste clipboard content                                                                             |
| Ctrl + n                     | New Doc or new page                                                                                 |
| Ctrl + /                     | Application Specific, Mostly Comment code in development                                            |
| Ctrl + Escape                | Start Menu                                                                                          |
| Ctrl + Home                  | Go to the beginning of the document or Page                                                         |
| Ctrl + Delete                | Application Specific, Mostly used to delete the next word after the cursor or delete an entire line |
| Ctrl + End                   | Go to the End of the Document or Page                                                               |
| Ctrl + Up Arrow              | Application Specific, Mostly Media control volume up                                                |
| Ctrl + Left Arrow            | Application Specific, Mostly Media Control seek backwards                                           |
| Ctrl + Down Arrow            | Application Specific, Mostly Media Control volume down                                              |
| Ctrl + Right Arrow           | Application Specific, Mostly Media Control Seek upwards                                             |
| Shift + Tab                  | Move Backwards in selection order                                                                   |
| Shift + Enter                | Go Back in menu selection                                                                           |
| Shift + Space                | Select contents                                                                                     |
| Shift + F10                  | show right click menu for a file, folder                                                            |
| Shift + Home                 | Select Items                                                                                        |
| Shift + Page Up              | Select Items                                                                                        |
| Shift + Delete               | Permanently delete files                                                                            |
| Shift + End                  | select items                                                                                        |
| Shift + Page Down            | Select Items                                                                                        |
| Shift + Up Arrow             | Select Items                                                                                        |
| Shift + Down Arrow           | Select Items                                                                                        |
| Alt + 1                      | Application specific, Mostly properties of file                                                     |
| Alt + Tab                    | Switch between applications                                                                         |
| Alt + e                      | Edit menu                                                                                           |
| Alt + t                      | Tools Menu                                                                                          |
| Alt + p                      | Application specific, Mostly Preview                                                                |
| Alt + Enter                  | Application specific, file or folder properties                                                     |
| Alt + Space                  | Application Window property                                                                         |
| Alt + Escape                 | Switch to previous applications                                                                     |
| Alt + F4                     | Close the application                                                                               |
| Alt + Up Arrow               | Back one level                                                                                      |
| Alt + Left Arrow             | Back one level                                                                                      |
| Alt + Right Arrow            | Forward one level                                                                                   |
| Ctrl + Alt + 1               | Windows Explorer icon size Extra Large                                                              |
| Ctrl + Alt + 2               | Windows Explorer icon size Large                                                                    |
| Ctrl + Alt + 3               | Windows Explorer icon size Medium                                                                   |
| Ctrl + Alt + 4               | Windows Explorer icon size small                                                                    |
| Ctrl + Alt + 5               | Windows Explorer icon list                                                                          |
| Ctrl + Alt + 6               | Windows Explorer icon details                                                                       |
| Ctrl + Alt + 7               | Windows Explorer icon tiles                                                                         |
| Ctrl + Alt + 8               | Windows Explorer icon content                                                                       |
| Ctrl + Alt + -               | Windows Explorer decrease icon size                                                                 |
| Ctrl + Alt + =               | Windows Explorer increase icon size                                                                 |
| Ctrl + Alt + Tab             | Hold the applications list to switch easily with tab                                                |
| Ctrl + Alt + Escape          | Switch to previous applications                                                                     |
| Ctrl + Alt + Delete          | Signout menu/ system interrupt                                                                      |
| Ctrl + Shift + 1             | Windows Explorer icon size Extra Large                                                              |
| Ctrl + Shift + 2             | Windows Explorer icon size Large                                                                    |
| Ctrl + Shift + 3             | Windows Explorer icon size Medium                                                                   |
| Ctrl + Shift + 4             | Windows Explorer icon size small                                                                    |
| Ctrl + Shift + 5             | Windows Explorer icon list                                                                          |
| Ctrl + Shift + 6             | Windows Explorer icon details                                                                       |
| Ctrl + Shift + 7             | Windows Explorer icon tiles                                                                         |
| Ctrl + Shift + 8             | Windows Explorer icon content                                                                       |
| Ctrl + Shift + Tab           | Cycle throw tabs in explorer in reverse order                                                       |
| Ctrl + Shift + w             | Application Specific, Mostly Close the application                                                  |
| Ctrl + Shift + t             | Application Specific, restore previous tabs in browser, new text file creation                      |
| Ctrl + Shift + i             | Application Specific, inspect in browser                                                            |
| Ctrl + Shift + o             | Application Specific, bookmarks menu in browser                                                     |
| Ctrl + Shift + p             | Application Specific, shortcut helper pop up                                                        |
| Ctrl + Shift + a             | Application Specific, search in browser tabs                                                        |
| Ctrl + Shift + f             | Application Specific, create a new folder                                                           |
| Ctrl + Shift + j             | Application Specific, console in browsers                                                           |
| Ctrl + Shift + c             | Application Specific, Inspect in browser, copy file path                                            |
| Ctrl + Shift + b             | Application Specific, toggle bookmarks bar in browsers                                              |
| Ctrl + Shift + n             | Application Specific, create a new folder, incognito in browsers                                    |
| Ctrl + Shift + Escape        | Taskmanager                                                                                         |
| Ctrl + Shift + Delete        | Application Specific, clear browser history in browsers                                             |
| Shift + Alt + Tab            | Switch to applications in reverse order                                                             |
| Shift + Alt + Space          | application shortcut menu                                                                           |
| Shift + Alt + Escape         | Switch applications in cycle                                                                        |
| Shift + Alt + Print Screen   | Toggle High Contrast Mode                                                                           |
| Win + 1                      | Open the 1 application in taskbar                                                                   |
| Win + 2                      | Open the 2 application in taskbar                                                                   |
| Win + 3                      | Open the 3 application in taskbar                                                                   |
| Win + 4                      | Open the 4 application in taskbar                                                                   |
| Win + 5                      | Open the 5 application in taskbar                                                                   |
| Win + 6                      | Open the 6 application in taskbar                                                                   |
| Win + 7                      | Open the 7 application in taskbar                                                                   |
| Win + 8                      | Open the 8 application in taskbar                                                                   |
| Win + 9                      | Open the 9 application in taskbar                                                                   |
| Win + 0                      | Open the 10 application in taskbar                                                                  |
| Win + -                      | zoom in                                                                                             |
| Win + =                      | zoom out                                                                                            |
| Win + Tab                    | open task view                                                                                      |
| Win + e                      | open windows explorer                                                                               |
| Win + r                      | windows run                                                                                         |
| Win + t                      | cycle through taskbar applications                                                                  |
| Win + i                      | open system settings                                                                                |
| Win + p                      | Open project connection settings                                                                    |
| Win + a                      | open action center                                                                                  |
| Win + s                      | windows search                                                                                      |
| Win + d                      | show desktop                                                                                        |
| Win + k                      | open connect to projector panel                                                                     |
| Win + l                      | lock pc                                                                                             |
| Win + x                      | Open context menu on windows button                                                                 |
| Win + b                      | focus on task bar notification area                                                                 |
| Win + m                      | Minimize all windows                                                                                |
| Win + ,                      | Peek at desktop                                                                                     |
| Win + .                      | Emoji Panel                                                                                         |
| Win + Pause                  | Break open system settings about section directly                                                   |
| Win + Up Arrow               | Maximize window                                                                                     |
| Win + Left Arrow             | Put window to left                                                                                  |
| Win + Down Arrow             | Minimize window                                                                                     |
| Win + Right Arrow            | Put window to right                                                                                 |
| Win + Shift + 1              | Open the 1 application in taskbar                                                                   |
| Win + Shift + 2              | Open the 2 application in taskbar                                                                   |
| Win + Shift + 3              | Open the 3 application in taskbar                                                                   |
| Win + Shift + 4              | Open the 4 application in taskbar                                                                   |
| Win + Shift + 5              | Open the 5 application in taskbar                                                                   |
| Win + Shift + 6              | Open the 6 application in taskbar                                                                   |
| Win + Shift + 7              | Open the 7 application in taskbar                                                                   |
| Win + Shift + 8              | Open the 8 application in taskbar                                                                   |
| Win + Shift + 9              | Open the 9 application in taskbar                                                                   |
| Win + Shift + 0              | Open the 10 application in taskbar                                                                  |
| Win + Shift + s/ printscreen | take a screenshot                                                                                   |
| Win + Alt + d                | Toggle task bar calendar                                                                            |
| Win + Ctrl + d               | create a new virtual desktop                                                                        |
| Win + Ctrl + Left Arrow      | go to previous virtual desktop                                                                      |
| Win + Ctrl + Right Arrow     | go to next virtual desktop                                                                          |
