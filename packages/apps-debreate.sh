#!/bin/bash

cp ./debs/debreate_0.8-dev9_all.deb /etc/usagi/openbox-scripts/debreate_0.8-dev9_all.deb
dpkg -i /etc/usagi/openbox-scripts/debreate_0.8-dev9_all.deb

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Programmation"
echo "- Nom suggéré : Debreate"
echo "- Executable : /usr/bin/debreate"
echo "- Icone : /etc/usagi/openbox-icons/debreate.svg"

read -p "Appuyer sur une touche pour quitter... " -n1 -s