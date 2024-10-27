#!/bin/bash

apt install geany

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Programmation"
echo "- Nom suggéré : Geany"
echo "- Executable : /usr/bin/geany"
echo "- Icone : /etc/usagi/openbox-icons/geany.svg"

read -p "Appuyer sur une touche pour quitter... " -n1 -s