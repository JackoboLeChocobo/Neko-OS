#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb -P /etc/neko/openbox-scripts -c
dpkg -i /etc/neko/openbox-scripts/onlyoffice-desktopeditors_amd64.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Bureautique"
echo "- Nom suggéré : OnlyOffice"
echo "- Executable : /usr/bin/onlyoffice-desktopeditors %U"
echo "- Icone : /etc/neko/openbox-icons/onlyoffice.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
