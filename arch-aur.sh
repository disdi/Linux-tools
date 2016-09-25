
#!/bin/bash 

pacman -Syu --noconfirm 

pacman -S --noconfirm sudo 

sudo pacman -Syu --noconfirm 

sudo pacman -S --noconfirm binutils 

sudo pacman -S --noconfirm gcc 

sudo pacman -S --noconfirm git 

curl http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz -o pkgconfig.tgz

tar -zxf pkgconfig.tgz 

cd pkg-config-0.28 

./configure 

make install 

sudo git clone https://aur.archlinux.org/package-query.git 

sudo chown -R $(whoami) package-query/ 

sudo chmod -R 775 package-query 

cd package-query 

makepkg -si 

cd .. 

sudo git clone https://aur.archlinux.org/yaourt.git 

cd yaourt 

sudo chown -R $(whoami) yaourt 

sudo chmod 775 -R yaourt 

makepkg -si 

cd .. 

sudo pacman -Syu --noconfirm 









