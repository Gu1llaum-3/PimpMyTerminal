#!/bin/bash

clear
echo "Mise à jour de la liste des paquets"
sudo apt update
clear

echo "Installation de Nala - Bien mieux que aptitude"
sleep 3
#echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
#wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
sudo apt update && sudo apt install -y nala
clear

echo "Installation de Neofetch"
sleep 3
sudo apt install -y neofetch
touch /home/${USER}.hughlogin # Cacher motd ubuntu
ls /home/${USER}/.config || echo "Création du dossier .config" && mkdir /home/${USER}/.config
cp -vr ./neofetch /home/${USER}/.config
echo "### Personnalisation ###" >> /home/${USER}/.bashrc
echo "clear" >> /home/${USER}/.bashrc
echo "neofetch --config /home/${USER}/.config/neofetch/.neofetch.conf --source /home/${USER}/.config/neofetch/ASCII/harrypotter.txt --ascii_distro garuda" >> /home/${USER}/.bashrc
clear
neofetch --config /home/${USER}/.config/neofetch/.neofetch.conf
sleep 5
clear


echo "Installation de Bat"
sleep 3
sudo apt install -y bat
echo "alias cat=batcat" >> /home/${USER}/.bashrc
clear

echo "Installation de NCDU/DUF"
sleep 3
sudo apt install -y ncdu duf
clear
duf
sleep 5
clear

echo "Installation de Btop"
sleep 3
sudo apt install btop
#sudo apt install make -y
#wget https://github.com/aristocratos/btop/releases/download/v1.2.5/btop-x86_64-linux-musl.tbz -P ./.temp
#cd ./.temp
#tar -xf ./btop-x86_64-linux-musl.tbz
#sudo make install
#cd ..
clear

echo "Nano en couleur"
sleep 3
sudo git clone https://github.com/serialhex/nano-highlight.git /home/${USER}/.nano
cp ./nano/.nanorc /home/${USER}/
clear

echo "Games"
echo "Installation de Nudoku"
sleep 3
sudo apt install nudoku
clear

echo "Mise en place des Alias"
sleep 3
echo "## Alias ##" >> /home/${USER}/.bashrc
echo "alias neofetch='neofetch --config /home/${USER}/.config/neofetch/.neofetch.conf --source /home/${USER}/.config/neofetch/ASCII/harrypotter.txt --ascii_distro garuda'" >> /home/${USER}/.bashrc
echo "alias cat=batcat" >> /home/${USER}/.bashrc
echo "alias sudoku=nudoku" >> /home/${USER}/.bashrc
