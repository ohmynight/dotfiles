#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}🚀 Installing dotfiles...${NC}"

mkdir -p ~/.config

# Symlink config
echo -e "${YELLOW}📁 Linking configs...${NC}"
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/waybar ~/.config/waybar
ln -sf ~/dotfiles/wlogout ~/.config/wlogout
ln -sf ~/dotfiles/dunst ~/.config/dunst 2>/dev/null

# Copy scripts
mkdir -p ~/.local/bin
echo -e "${YELLOW}📋 Copying scripts...${NC}"
cp ~/dotfiles/scripts/* ~/.local/bin/ 2>/dev/null
chmod +x ~/.local/bin/* 2>/dev/null

# Copy wallpaper
mkdir -p ~/Pictures/Wallpapers
echo -e "${YELLOW}🖼️ Copying wallpapers...${NC}"
cp ~/dotfiles/wallpapers/* ~/Pictures/Wallpapers/ 2>/dev/null

echo -e "${GREEN}✅ Done! Restart Hyprland: hyprctl dispatch exit${NC}"
