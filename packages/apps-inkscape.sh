#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install inkscape

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Graphisme"
echo "- Nom suggéré : Inkscape"
echo "- Executable : /usr/bin/inkscape"
echo "- Icone : /etc/tatsuki/openbox-icons/inkscape.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
