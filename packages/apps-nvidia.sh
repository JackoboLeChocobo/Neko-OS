#!/bin/bash

apt install nvidia-driver firmware-misc-nonfree

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Système"
echo "- Nom suggéré : Configuration NVIDIA"
echo "- Executable : /usr/bin/nvidia-settings"
echo "- Icone : /etc/usagi/openbox-icons/nvidia-settings.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
