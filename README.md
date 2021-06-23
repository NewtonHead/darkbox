# Darkbox
This is my own Arch Linux installation, i love customizing and i love minimalism, so i hope you like it!
Some features about Darkbox:

Multi lib32 is enabled
Window Manager: dwm

# Installation.

In order to install it, you have to mount all partitions and installing: base linux linux-firmware (a text editor: i recommend neovim) git
After doing that, you generate fstab and switch root to /mnt
Clone this repository (git clone https://github.com/NewtonHead/Darkbox)
<b>Remember adding your user to the .sh file :)</b>
and run the bash script (./installation.sh)
You'll be asked to input a root and user password.
Also, you have to config sudoers file (/etc/sudoers) in order to allow wheel group to perform root commands.
You can edit installation.sh file and change some packages that you might not need, you can find some useful comments inside the code
Full darkbox installation includes a dual boot with windows

Thanks for the opportuniy, i love customizing arch linux!!
