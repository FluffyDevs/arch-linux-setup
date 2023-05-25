#Setup File / Install Script
#By: Fluffy

#Into message
echo "Fluffys Install Script"
read -p "Press ENTER to start!"
echo

#Check if run with sudo
if [ "$EUID" != 0 ]
then
	echo "Please run as root or with sudo."
	exit 2
fi

#Installing packages 
echo "Installing Packages!"
sudo true #To not need to request password again

echo
echo "[STEP] Base Packages"
echo
sudo pacman -S xorg-server xorg-xinit xorg-apps i3 dmenu pulseaudio conky feh dolphin

echo
echo "[STEP] Terminal Packages"
echo
sudo pacman -S man-db neofetch

echo
echo "[STEP] Programs and Applications Packages"
echo 
sudo pacman -S firefox vlc audacity discord blender arduino libreoffice-still

echo
echo "[STEP] Installation Done!"
