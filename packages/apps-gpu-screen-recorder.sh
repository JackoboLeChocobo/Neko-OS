#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

cp /etc/neko/Usagi-OS/packages/debs/gpu-sceen-recorder_4.2.5_amd64.deb /etc/neko/openbox-scripts/gpu-sceen-recorder_4.2.5_amd64.deb
dpkg -i /etc/neko/openbox-scripts/gpu-sceen-recorder_4.2.5_amd64.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Multimédia"
echo "- Nom suggéré : GPU Screen Recorder"
echo "- Executable : /usr/bin/gpu-screen-recorder-gtk"
echo "- Icone : /etc/neko/openbox-icons/gpu-screen-recorder-gtk.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
