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
echo "[STEP] Installing Packages!"
sudo true #To not need to request password again

echo
echo "[STEP] Base Packages"
echo
sudo pacman -S xorg-server xorg-xinit xorg-apps i3 dmenu pulseaudio feh pcmanfm kitty xrandr polybar
echo
echo "[STEP] Base Packages Finished"

echo
echo "[STEP] Terminal Packages"
echo
sudo pacman -S man-db neofetch conky pulsemixer
echo
echo "[STEP] Terminal Packages Finished"

echo
echo "[STEP] Programs and Applications Packages"
echo 
sudo pacman -S firefox vlc audacity discord arduino libreoffice-still inkscape geogebra
echo
echo "[STEP] Programs and Applications Packages Finished"

echo
echo "[STEP] Installation Done!"

#Setting up folder structure
echo
echo "[STEP] Making Folders!"

mkdir ~/downloads
mkdir ~/images
mkdir ~/music
mkdir ~/documents
mkdir ~/code
mkdir ~/programs

mkdir ~/.config/

echo
echo "[STEP] Folder Structure done making!"

echo
echo "[STEP] Install Script is done! Have fun!"
echo "Not installed:"
echo "	Blender"
echo "	Antares"
echo "	Aseprite"
