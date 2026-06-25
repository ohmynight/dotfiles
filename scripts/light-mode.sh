#!/bin/bash
gsettings set org.gnome.desktop.interface color-scheme prefer-light
sed -i 's/gtk-application-prefer-dark-theme=1/gtk-application-prefer-dark-theme=0/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=Adwaita-dark/gtk-theme-name=Adwaita/g' ~/.config/gtk-3.0/settings.ini
notify-send "☀️ Light Mode" "Tema diubah ke Light" -t 1500
