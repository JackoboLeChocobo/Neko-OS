#!/bin/bash

apt install inkscape

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Graphisme"
echo "- Nom suggéré : Inkscape"
echo "- Executable : /usr/bin/inkscape"
echo "- Icone : /etc/usagi/openbox-icons/inkscape.svg"

read -p "Appuyer sur une touche pour quitter... " -n1 -s

/etc/usagi/Usagi-OS/packages/setup.sh