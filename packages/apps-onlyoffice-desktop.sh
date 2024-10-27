#!/bin/bash

wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb -P /etc/usagi/openbox-scripts -c
dpkg -i /etc/usagi/openbox-scripts/onlyoffice-desktopeditors_amd64.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Bureautique"
echo "- Nom suggéré : OnlyOffice"
echo "- Executable : /usr/bin/onlyoffice-desktopeditors %U"
echo "- Icone : /etc/usagi/openbox-icons/onlyoffice.svg"

read -p "Appuyer sur une touche pour quitter... " -n1 -s

/etc/usagi/Usagi-OS/packages/setup.sh