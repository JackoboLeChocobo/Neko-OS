#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install gimp

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Graphisme"
echo "- Nom suggéré : GIMP"
echo "- Executable : /usr/bin/gimp"
echo "- Icone : /etc/tatsuki/openbox-icons/gimp.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
