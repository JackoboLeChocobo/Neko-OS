#!/bin/bash

apt install python3-apt
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb -P /etc/usagi/openbox-scripts -c
dpkg -i /etc/usagi/openbox-scripts/steam.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Jeux"
echo "- Nom suggéré : Steam"
echo "- Executable : /usr/bin/steam"
echo "- Icone : /etc/usagi/openbox-icons/steam.svg"

read -p "Appuyer sur une touche pour quitter... " -n1 -s

/etc/usagi/Usagi-OS/packages/setup.sh &