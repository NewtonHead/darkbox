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
pacman -Syu grub networkmanager base-devel linux-headers firefox git neofetch sudo xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk alacritty ttf-font-awesome alsa-utils alsa-firmware # IF YOU HAVE WINDOWS INSTALLED, INSTALL: ntfs-3g os-prober mtools dosfstools #OPTIONAL SOFTWARE: keepassxc vlc feh scrot gimp audacity htop discord steam telegram-desktop qbittorrent libreoffice
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager
echo 'PUT YOUR ROOT PASSWORD'
echo 'PUT YOUR ROOT PASSWORD'
echo 'PUT YOUR ROOT PASSWORD'
passwd
echo 'PUT YOUR USER PASSWORD'
echo 'PUT YOUR USER PASSWORD'
echo 'PUT YOUR USER PASSWORD'
useradd -mG wheel user
passwd user
echo 'dwmstatus 2>&1 >/dev/null &' >> /home/user/.xinitrc
echo 'exec dwm' >> /home/user/.xinitrc
echo 'startx' >> /home/user/.bash_profile
echo neofetch >> /home/user/.bashrc
mkdir /home/user/.config
git clone https://github.com/NewtonHead/mydwm /mylinux/mydwm
cd mydwm/dwm
make clean install
cd /Darkbox/mydwm/dwmstatus
make
make PREFIX=/usr install
cd /Darkbox/mydwm/dmenu
make clean install
cp -r /Darkbox/configs/alacritty.yml /home/user/.alacritty.yml
cp -r /Darkbox/configs/neofetch /home/user/.config/neofetch
cp -r /Darkbox/configs/xorg.conf.d /etc/X11/xorg.conf.d/00-keyboard.conf
echo 'INSTALLATION COMPLETE, PLEASE, REBOOT YOUR PC'
echo 'INSTALLATION COMPLETE, PLEASE, REBOOT YOUR PC'
echo 'INSTALLATION COMPLETE, PLEASE, REBOOT YOUR PC'
echo 'REMEMBER TO EDIT /etc/sudoers FILE'
echo 'REMEMBER TO EDIT /etc/sudoers FILE'
echo 'REMEMBER TO EDIT /etc/sudoers FILE'


