#!/bin/bash
echo "y" | pacman -Sy archlinux-keyring && pacman -Syy
pacman-db-upgrade
echo "y" | pacman -S git
echo "y" | pacman -S python
echo "y" | pacman -S python-pip
echo "y" | pacman -S pkgfile
echo "y" | pacman -S fakeroot
pkgfile --update

echo "y" | pacman -Sy archlinux-keyring && pacman -Syy
printf "1-25\nY" | pacman -S base-devel
echo "y" | pacman -S namcap

useradd -m -G wheel -s /bin/bash kol

su kol -c 'cd /home/kol/ && git clone https://github.com/anntzer/pypi2pkgbuild.git && cd /home/kol/pypi2pkgbuild/ && git reset --hard 3089def2bdb7444ffb6bb86803fe7634a5de3515'

