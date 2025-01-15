#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

apt install nvidia-driver firmware-misc-nonfree libnvidia-fbc1

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Système"
echo "- Nom suggéré : Configuration NVIDIA"
echo "- Executable : /usr/bin/nvidia-settings"
echo "- Icone : /etc/tatsuki/openbox-icons/nvidia-settings.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
