# Pre-reboot
This document has commands for Archlinux, if you use another distro, use the corresponding package
## User
```
useradd -m moffinguer
passwd moffinguer
usermod -aG wheel,video,audio,storage moffinguer
```
## Boot managment
```
efibootmgr --create --disk /dev/sdX --part Y --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=Z rw initrd=\initramfs-linux.img'
```
Being:
- X: Letter of the device where the boot partition is. Ex 'a'
- Y: Number of the device it containts the boot partition. Ex '1'
- Z: Is the combination of /dev/sdXY but it has the root partition. Ex '/dev/sda3'
For more kernel parameters, we can add them manually on config, or via removing the entry and adding them on the `--unicode` parameter
## Networking
Uses NetworkManager:
```
systemctl enable --now networkmanager.service
nmcli device wifi list
nmcli device wifi connect YOUR_SSID password YOUR_PASSWORD
```
For eduroam:
```
nmcli device wifi connect eduroam
nmcli connection modify eduroam 802-1x.eap "tls" wifi-sec.key-mgmt "wpa-eap" 802-1x.ca-cert "" 802-1x.inner-auth "pap" 802-1x.identity "UVUS" 802-1x.password "PASSWORD"
```
# Programs Minimal Install
| Programs | Description |
|-|-|
| git | Version control |
| sudo | Privileges |
| neovim | Text editor |
| networkmanager | Control network |
| xorg-server| Launch graphical interface |
| pulseaudio | Sound |
| xorg-xinit | Script for graphical interface |
```
pacman -S git sudo neovim networkmanager xorg-server pulseaudio xorg-xinit
```

## Interface
| Programs | Alternatives | Description | 
|-|-|-| 
| bspwm sxhdk polybar | qtile | Window manager |
| rofi | None | Program selectors |
| lsd | None | Improvement of |
| xbindkeys | None | Shortcut manager |
| feh | None | Images |
| picom | None | Compositor |
| dunst | None | Notifications |
| thunar | None | File manager |
| udiskie | None | Load external devices |
## Software
This are programs that I use on a daily basis, like net browsers, terminal emulators, shells, and other programs
| Programs | Alternatives | Description |
|-|-|-|
| firefox-developer-edition | firefox | Browser |
| vlc | None | Video viewer |
| discord | None | Communication
| btop | None | Task manager |
| rxvt-unicode | None | Terminal emulator |
| zsh | None | Shell |
| xorg-xbacklight | None | Control light of the screen |
| flameshot | None | Screenshots |
| unzip | None | Compress/Decompress files |
## Program tasks
I use Cron in order to create tasks that I want to run on certain periods
```
sudo pacman -S fcron
```
Copy the content of `cron` so the tasks are saved

## AUR
Right now I only use one package not oficial repos *visual-studio-code-bin*, it will be installed manually

# Folder struct
The `git` folder contains the global configuration for git. Move it to *$HOME*

The `main` folder contains the generic files and folder that reside on *$HOME*

The `.config` contains the local configuration files. Move it to *$HOME*

The `.local` contains fonts and custom scripts. Move it to *$HOME*

# Extra
There might be some packages that might not have been included, they will be included over the time.
