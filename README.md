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

#### Extra

There might be some packages that might not have been included.
They will be included over the time.

