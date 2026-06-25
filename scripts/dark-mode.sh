#!/bin/bash
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
sed -i 's/gtk-application-prefer-dark-theme=0/gtk-application-prefer-dark-theme=1/g' ~/.config/gtk-3.0/settings.ini
sed -i 's/gtk-theme-name=Adwaita/gtk-theme-name=Adwaita-dark/g' ~/.config/gtk-3.0/settings.ini
notify-send "🌙 Dark Mode" "Tema diubah ke Dark" -t 1500
