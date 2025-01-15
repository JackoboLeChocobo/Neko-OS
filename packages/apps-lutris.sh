#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install python3-yaml python3-lxml python3-requests python3-magic gir1.2-webkit2-4.1 cabextract fluid-soundfont-gs vulkan-tools
wget https://github.com/lutris/lutris/releases/download/v0.5.17/lutris_0.5.17_all.deb -P /etc/neko/openbox-scripts -c
dpkg -i /etc/neko/openbox-scripts/lutris_0.5.17_all.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Jeux"
echo "- Nom suggéré : Lutris"
echo "- Executable : /usr/games/lutris"
echo "- Icone : /etc/neko/openbox-icons/lutris.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
