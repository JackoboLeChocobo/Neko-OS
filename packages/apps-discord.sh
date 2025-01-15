#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

wget "https://discord.com/api/download?platform=linux&format=deb" -O /etc/neko/openbox-scripts/discord.deb
dpkg -i /etc/neko/openbox-scripts/discord.deb
cp /etc/neko/Usagi-OS/packages/scripts/usagi-discord.sh /etc/neko/openbox-scripts/usagi-discord.sh
chmod +x /etc/neko/openbox-scripts/usagi-discord.sh
cp /etc/neko/Usagi-OS/packages/scripts/usagi-discord-update.sh /etc/neko/openbox-scripts/usagi-discord-update.sh
chmod +x /etc/neko/openbox-scripts/usagi-discord-update.sh

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Internet"
echo "- Nom suggéré : Discord"
echo "- Executable : /etc/neko/openbox-scripts/usagi-discord.sh"
echo "- Icone : /etc/neko/openbox-icons/discord.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
