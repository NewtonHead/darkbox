#!/bin/bash        
packages='grub efibootmgr networkmanager base-devel sudo xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk alacritty ttf-font-awesome alsa-utils alsa-firmware '
windowsPackages='ntfs-3g os-prober mtools dosfstools '
otherSoftware='keepassxc vlc feh scrot gimp audacity htop discord steam telegram-desktop qbittorrent libreoffice virtualbox pulseaudio pulseaudio-alsa neofetch'

echo 'Please, tell me your username'
read user
echo 'Do you have windows installed? (1 yes, 2 no)'
isValid=false
while [ $isValid = false ]; do
	read windowsInstalled
	if [[ "$windowsInstalled" = "1" ]]; then
		packages="$packages$windowsPackages"
		isValid=true
	elif [[ "$windowsInstalled" = "2" ]]; then
		isValid=true
	else
		echo 'Wrong input, please, try again.'
	fi
done
echo 'Do you want a clean installed, or you want to install some useful software? (Like Discord, Telegram, etc)'
echo '1=clean'
echo '2=install software'
isValid=false
while [ $isValid = false ]; do
	read cleanInstall
	if [[ "$cleanInstall" = "1" ]]; then
		isValid=true
	elif [[ "$cleanInstall" = "2" ]]; then 
		packages="$packages$otherSoftware"
		isValid=true
	else
		echo 'Wrong input, please, try again.'
	fi
done

ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
echo 'LANG=en_US.UTF-8' >> /etc/locale.conf
echo 'KEYMAP=en_US.UTF-8' >> /etc/vconsole.conf
echo 'darkbox' >> /etc/hostname
echo '127.0.0.1       localhost' >> /etc/hosts
echo '::1             localhost' >> /etc/hosts
echo '127.0.1.1       darkbox.localdomain     darkbox' >> /etc/hosts
echo '[multilib]' >> /etc/pacman.conf
echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf
hwclock --systohc
locale-gen
pacman -Syu $packages
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager.service
echo 'PUT YOUR ROOT PASSWORD'
echo 'PUT YOUR ROOT PASSWORD'
echo 'PUT YOUR ROOT PASSWORD'
passwd
echo 'PUT YOUR USER PASSWORD'
echo 'PUT YOUR USER PASSWORD'
echo 'PUT YOUR USER PASSWORD'
useradd -mG wheel $user
passwd $user
touch /home/$user/.xinitrc
touch /home/$user/.bash_profile
touch /home/$user/.bashrc
echo 'dwmstatus 2>&1 >/dev/null &' >> /home/$user/.xinitrc
echo 'exec dwm' >> /home/$user/.xinitrc
echo 'startx' >> /home/$user/.bash_profile
echo neofetch >> /home/$user/.bashrc
mkdir /home/$user/.config
git clone https://github.com/NewtonHead/mydwm /darkbox/mydwm
cd mydwm/dwm
make clean install
cd /darkbox/mydwm/dwmstatus
make
make PREFIX=/usr install
cd /darkbox/mydwm/dmenu
make clean install
cp -r /darkbox/configs/.alacritty.yml /home/$user/.alacritty.yml
cp -r /darkbox/configs/neofetch /home/$user/.config/neofetch
cp -r /darkbox/configs/xorg.conf.d /etc/X11/xorg.conf.d/00-keyboard.conf
echo 'INSTALLATION COMPLETE, PLEASE, REBOOT YOUR PC'
echo 'INSTALLATION COMPLETE, PLEASE, REBOOT YOUR PC'
echo 'INSTALLATION COMPLETE, PLEASE, REBOOT YOUR PC'
echo 'REMEMBER TO EDIT /etc/sudoers FILE'
echo 'REMEMBER TO EDIT /etc/sudoers FILE'
echo 'REMEMBER TO EDIT /etc/sudoers FILE'


