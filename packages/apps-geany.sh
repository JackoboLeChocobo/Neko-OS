#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install geany

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Programmation"
echo "- Nom suggéré : Geany"
echo "- Executable : /usr/bin/geany"
echo "- Icone : /etc/tatsuki/openbox-icons/geany.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
