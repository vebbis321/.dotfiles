# Fedora i3

# what to do after installing Fedora 42


**default fedora stuff for better experience:**

```bash
# faster downloads
printf "max_parallel_downloads=10\nfastestmirror=true\n" | sudo tee -a /etc/dnf/dnf.conf > /dev/null

sudo dnf upgrade

sudo fwupdmgr refresh --force
sudo fwupdmgr get-devices # Lists devices with available updates.
sudo fwupdmgr get-updates # Fetches list of available updates.
sudo fwupdmgr update

reboot
```

```bash
# enabling the rpm repositories
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf group upgrade core

## if NVIDIA!!
https://github.com/Comprehensive-Wall28/Nvidia-Fedora-Guide?tab=readme-ov-file#encrypted-drives

# fix sleep
sudo vi /etc/systemd/logind.conf

# add
HandleLidSwitch=ignore  # If it's a laptop
HandlePowerKey=ignore
IdleAction=ignore
IdleActionSec=0
sudo systemctl restart systemd-logind

# fix ssh
sudo vi /etc/ssh/sshd_config
# uncomment
ClientAliveInterval 60
ClientAliveCountMax 5
TCPKeepAlive yes
sudo systemctl restart sshd


# enbale flatpak
sudo dnf install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-modify --enable flathub

# codecs 
sudo dnf4 group install multimedia
sudo dnf swap 'ffmpeg-free' 'ffmpeg' --allowerasing # Switch to full FFMPEG.
sudo dnf upgrade @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin # Installs gstreamer components. Required if you use Gnome Videos and other dependent applications.
sudo dnf group install -y sound-and-video # Installs useful Sound and Video complementary packages.`

# H/W Video Acceleration
sudo dnf install ffmpeg-libs libva libva-utils

# intel stuff (if not NVIDIA)
sudo dnf swap libva-intel-media-driver intel-media-driver --allowerasing
sudo dnf install libva-intel-driver
```

**fix stuff to clone dev-env:**

- setup default directories:

```bash
mkdir $HOME/repos
cd $HOME/repos
mkdir assembly  bash  c  js_ts  keyboards  python
cd
```

```bash
# fix firefox (just in case)
sudo dnf install -y openh264 gstreamer1-plugin-openh264 mozilla-openh264
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
```

**get the dotfiles**
- setup passwords directory

```bash
# install necessary programs
sudo dnf install syncthing git keepassxc neovim

# syncthing setup
sudo systemctl start syncthing@$(whoami)
systemctl --user is-enabled syncthing.service || sudo systemctl enable syncthing@$(whoami)
```

- setup keepassxc
- setup ssh in git in the browser and in keepassxc
- clone this repo
- run install scripts: 
    - installs/default
    - installs/zsh
    - installs/ghostty
    - installs/font

