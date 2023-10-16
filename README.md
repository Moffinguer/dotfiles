# Pre-reboot

This document has commands for Archlinux, if you use another distro, use the
corresponding package

## User

```bash
useradd -m moffinguer
passwd moffinguer
usermod -aG wheel,video,audio,storage moffinguer
```

## Boot managment

```bash
efibootmgr --create --disk /dev/sdX --part Y --label \
"Arch Linux" --loader /vmlinuz-linux --unicode 'root=Z rw initrd=\initramfs-linux.img'
```

Being:

- X: Letter of the device where the boot partition is. Ex 'a'
- Y: Number of the device it containts the boot partition. Ex '1'
- Z: Is the combination of /dev/sdXY but it has the root partition. Ex '/dev/sda3'

For more kernel parameters, we can add them manually on config, or via removing
the entry and adding them on the `--unicode` parameter

## Networking

Uses NetworkManager:

```bash
systemctl enable --now networkmanager.service
nmcli device wifi list
nmcli device wifi connect YOUR_SSID password YOUR_PASSWORD

```

### Programs Minimal Install

| Programs | Description |
|-|-|
| git | Version control |
| sudo | Privileges |
| neovim | Text editor |
| networkmanager | Control network |
| xorg-server| Launch graphical interface |
| pulseaudio | Sound |
| xorg-xinit | Script for graphical interface |
| xorg-xsetroot | Cursor manager |
| xclip | Clipboard |

```bash
pacman -S git sudo neovim networkmanager xorg-server pulseaudio xorg-xinit
```

### Interface

| Programs | Alternatives | Description |
|-|-|-|
| bspwm sxhdk polybar | qtile | Window manager |
| rofi | None | Program selectors |
| lsd | None | Improvement of _ls_ |
| duf | None | Improvement of _df_ |
| bat | None | Improvement of _cat_ |
| xbindkeys | None | Shortcut manager |
| feh | None | Images |
| picom | None | Compositor |
| dunst | None | Notifications |
| thunar | None | File manager |
| udiskie | None | Load external devices |
| kvantum | None | Interface improvement |
| xlockmore | None | ScreenSaver |

### Software

This are programs that I use on a daily basis, like net browsers,
terminal emulators, shells, and other programs
| Programs | Alternatives | Description |
|-|-|-|
| firefox-developer-edition | firefox | Browser |
| vlc | None | Video viewer |
| discord | None | Communication
| btop | None | Task manager |
| rxvt-unicode | None | Terminal emulator |
| zsh | bash | Shell |
| xorg-xbacklight | None | Control light of the screen |
| flameshot | None | Screenshots |
| unzip | None | Compress/Decompress files |
| man-db man-pages | None | Manuals |
| noto-fonts-cjk | None | Special fonts |
| retroarch | None | Frontend of emulators |
| gamemode | None | Improve performance on games |
| bind | None | DNS Tools, administration |
| wireshark-qt | None | Wireshark |
| docker | podman | Container manager |
| gimp | None | image editor |

### Program tasks

I use Cron and at in order to create tasks that I want to run on certain periods

``` bash
sudo pacman -S fcron at
```

Copy the content of `cron` so the tasks are saved

### AUR

Right now I only use one package which is not from the oficial repos _visual-studio-code-bin_.
It will be installed manually

#### Folder struct

- The `git` folder contains the global configuration for git. Move it to *$HOME*
- The `main` folder contains the generic files and folder that reside on *$HOME*
- The `.config` contains the local configuration files. Move it to *$HOME*
- The `.local` contains fonts and custom scripts. Move it to *$HOME*

#### Extra

There might be some packages that might not have been included.
They will be included over the time.
