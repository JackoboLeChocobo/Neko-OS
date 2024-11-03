#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

wget https://github.com/upscayl/upscayl/releases/download/v2.11.5/upscayl-2.11.5-linux.AppImage -P /etc/usagi/openbox-scripts -c
chmod +x /etc/usagi/openbox-scripts/upscayl-2.11.5-linux.AppImage

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Graphisme"
echo "- Nom suggéré : Upscayl"
echo "- Executable : /etc/usagi/openbox-scripts/upscayl-2.11.5-linux.AppImage"
echo "- Icone : /etc/usagi/openbox-icons/upscayl.png"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
