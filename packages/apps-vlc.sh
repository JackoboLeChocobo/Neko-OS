#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install vlc

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Multimédia"
echo "- Nom suggéré : VLC Media Player"
echo "- Executable : /usr/bin/vlc"
echo "- Icone : /etc/neko/openbox-icons/vlc.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
