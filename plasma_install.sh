@echo OFF

echo "This script only works on Void Linux."

echo "Update package repositories"
sudo xbps-install -Syy

echo "Install X.org package"
sudo xbps-install xorg

echo "Install KDE Plasma workspace package"
sudo xbps-install plasma-workspace

echo "Install KDE Plasma wallpaper package"
sudo xbps-install plasma-workspace-wallpapers

echo "Install KDE Plasma base package"
sudo xbps-install kde5

echo "Install KDE Plasma base apps package"
sudo xbps-install kde5-baseapps

echo "Install recommended applications"
sudo xbps-install firefox libreoffice octoxbps neofetch

echo "Enable services"
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/sddm /var/service

echo "KDE is fully installed, you should be redirected to the SDDM login prompt soon..."



