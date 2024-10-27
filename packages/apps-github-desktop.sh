#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
apt update && apt install github-desktop

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Programmation"
echo "- Nom suggéré : Github Desktop"
echo "- Executable : /usr/bin/github-desktop"
echo "- Icone : /etc/usagi/openbox-icons/github.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
