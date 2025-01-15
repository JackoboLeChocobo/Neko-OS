#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install filezilla

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Internet"
echo "- Nom suggéré : Filezilla"
echo "- Executable : /usr/bin/filezilla"
echo "- Icone : /etc/neko/openbox-icons/filezilla.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
