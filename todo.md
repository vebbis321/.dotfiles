# Arch setup - the boring way

## archinstall
- no swap or home partition
- just boot and the rest as encrypted with LUKS
- LUKS on LVM
- set up users, root later
- systemd-boot instead of grub
- NetworkManager

## default stuff:
- install sshd 
- start sshd
- fix root
- `sudo pacman -Syu`
- AUR:
    - build tools: `sudo pacman -S --needed base-devel git`
    - build yay from AUR
- if nvidia: `sudo pacman -S nvidia-utils nvidia-settings`

