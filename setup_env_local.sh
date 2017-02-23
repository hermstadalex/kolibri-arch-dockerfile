#echo "Y" | pacman -Syu
#pacman -S archlinux-keyring
#echo "Y" | pacman -Syu

echo "y" | pacman -Sy archlinux-keyring && pacman -Syy

pacman-db-upgrade

echo "y" | pacman -S git

echo "y" | pacman -S python
echo "y" | pacman -S python-pip
echo "y" | pacman -S pkgfile
echo "y" | pacman -S fakeroot
echo "y" | pacman -S makepkg

pkgfile --update



echo "y" | pacman -Sy archlinux-keyring && pacman -Syy
printf "1-25\nY" | pacman -S base-devel
echo "y" | pacman -S namcap

useradd -m -G wheel -s /bin/bash kol
