#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install obs-studio

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Multimédia"
echo "- Nom suggéré : OBS Studio"
echo "- Executable : /usr/bin/obs"
echo "- Icone : /etc/neko/openbox-icons/obs-studio.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
