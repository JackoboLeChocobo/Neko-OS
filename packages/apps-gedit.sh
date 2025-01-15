#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install gedit

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Programmation"
echo "- Nom suggéré : Gedit"
echo "- Executable : /usr/bin/gedit"
echo "- Icone : /etc/neko/openbox-icons/gedit.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
