#!/bin/bash

curl -s "https://archlinux.org/mirrorlist/?country=ES&country=PT&country=FR&country=GB&country=IT&country=US&country=CH&protocol=http&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 10 - >> /etc/pacman.d/mirrorlist &