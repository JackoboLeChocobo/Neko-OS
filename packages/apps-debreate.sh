#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

cp /etc/neko/Usagi-OS/packages/debs/debreate_0.8-dev9_all.deb /etc/neko/openbox-scripts/debreate_0.8-dev9_all.deb
dpkg -i /etc/neko/openbox-scripts/debreate_0.8-dev9_all.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Programmation"
echo "- Nom suggéré : Debreate"
echo "- Executable : /usr/bin/debreate"
echo "- Icone : /etc/neko/openbox-icons/debreate.svg"
echo " "
read -p "Appuyer sur une touche pour quitter... " -n1 -s
