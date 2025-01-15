#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install python3-apt curl xterm
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb -P /etc/tatsuki/openbox-scripts -c
dpkg -i /etc/tatsuki/openbox-scripts/steam.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Jeux"
echo "- Nom suggéré : Steam"
echo "- Executable : /usr/bin/steam"
echo "- Icone : /etc/tatsuki/openbox-icons/steam.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
