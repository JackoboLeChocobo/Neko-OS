#!/bin/bash

# Packages
# Projet Usagi OS

cp /etc/usagi/Usagi-OS/packages/icons/* /etc/usagi/openbox-icons/

packusagi=`zenity \
	--width=848 --height=480 \
	--title="Usagi OS - Installation" \
	--text="Choisissez l'application désirée" \
	--list \
	--column="Catégorie" \
	--column="Description" \
	"/apps-debreate" "Création de paquets Debian" \
	"/apps-geany" "Editeur de texte" \
	"/apps-gimp" "Logiciel de dessin" \
	"/apps-github-desktop" "Gestion de ses projets Github" \
	"/apps-inkscape" "Logiciel de dessin vectoriel" \
	"/apps-lutris" "Gestion de ses jeux Windows" \
	"/apps-minecraft-mcpe-launcher" "Launcher Minecraft non officiel sous Linux (vous devez posséder la version Android)" \
	"/apps-mozilla-firefox" "Navigateur Web" \
	"/apps-nvidia" "Installation du pilote graphique propriétaire" \
	"/apps-onlyoffice-desktop" "Suite Bureautique (Traitement de texte, Tableur, etc.)" \
	"/apps-steam" "Suite Bureautique ( Traitement de texte, Tableur, etc. )" \
	"/apps-upscayl" "Agrandir ses images en utilisant l'IA (nécessaite une bonne carte graphique)" \
	"/apps-vlc" "Lecteur Multimédia" 2> /dev/null`

if echo "$packusagi" | grep '/'; then
	chmod +x /etc/usagi/Usagi-OS/packages/${packusagi}.sh
	/usr/bin/lxterminal -e "sudo /etc/usagi/Usagi-OS/packages/${packusagi}.sh"
fi
