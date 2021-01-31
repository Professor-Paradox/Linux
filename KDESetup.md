Dark Theme based on toggle/time.


# KDE Guide:

## lookAndFeel:(globalTheme)
 The way desktop will look,will trigger all other settings related( if present).
* themes located in `~/.local/share/plasma/look-and-feel/theme-name` and `/usr/share/plasma/look-and-feel`
* to change through command `lookandfeeltool -a theme-name`

## DesktopTheme(plasmaStyle) 
the way the panel,menus,widgets look.
* located in `~/.local/share/plasma/desktoptheme/theme-name` and `/usr/share/plasma/desktoptheme`
* to change use `kwriteconfig5 --file ~/.config/plasmarc --group Theme --key name theme-name`

## applicationStyle
buttons,scrollbars,boxes color and theme
* change from terminal `kwriteconfig5 --file ~/.config/kdeglobals --group KDE --key widgetStyle "style-name"`

## windowdecorations
* installed location `~/.local/share/aurorae/themes/` and `/usr/share/kwin/decorations/`
* change from terminal `kwriteconfig5 --file ~/.config/kwinrc --group org.kde.kdecoration2 --key theme __aurorae__svg__cursor-value`


## plasmoids(widgets/applets)
the user installed widgets for small tasks/trigger relaying on big things.like weather,calendar
* located in `~/.local/share/plasma/plasmoids/` and `/usr/share/plasma/plasmoids/`

## colorScheme
colors of text,background of text,apps sides,menus etc
* located in `~/.local/share/color-schemes/color-schemes/color-name` and `/usr/share/color-schemes/` 
* change file `~/.config/kdeglobals`
* from terminal `kwriteconfig5 --file ~/.config/kdeglobals --group General --key ColorScheme "Theme-name"`

## Icons
icons of applications
* located in `~/.local/share/icons/icons/icons-name` and `/usr/share/icons/`
* change from terminal `kwriteconfig5 --file ~/.config/kdeglobals --group Icons --key Theme "icons-name`

## Cursor
Cursor for Desktop Environmnet
* located in `~/.icons/cursor-name` and `/usr/share/icons/`
* change from terminal `kwriteconfig5 --file ~/.config/kcminputrc --group Mouse --key cursorTheme cursor-value`

## splash screen
located in `~/.local/share/plasma/lookandfeel/theme-name` and `/usr/share/plasma/look-and-feel/`
change from terminal `kwriteconfig5 --file ~/.config/kwinrc --group KSplash --key Theme value`

## applying kvantum theme 
* `kvantummanager --set themename`
* kvantum config detail file ./config/Kvantum/kvantum.kvconfig
