#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

wget "https://discord.com/api/download?platform=linux&format=deb" -O /etc/usagi/openbox-scripts/discord.deb
dpkg -i /etc/usagi/openbox-scripts/discord.deb
cp /etc/usagi/Usagi-OS/packages/scripts/usagi-discord.sh /etc/usagi/openbox-scripts/usagi-discord.sh
chmod +x /etc/usagi/openbox-scripts/usagi-discord.sh

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Internet"
echo "- Nom suggéré : Discord"
echo "- Executable : /etc/usagi/openbox-scripts/usagi-discord.sh"
echo "- Icone : /etc/usagi/openbox-icons/discord.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
