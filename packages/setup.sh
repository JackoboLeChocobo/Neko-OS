#!/bin/bash

# Packages
# Projet Tatsuki OS

cp /etc/tatsuki/Tatsuki-OS/packages/icons/* /etc/tatsuki/openbox-icons/

packtatsuki=`zenity \
	--width=848 --height=480 \
	--title="Tatsuki OS - Installation" \
	--text="Choisissez l'application désirée" \
	--list \
	--column="Catégorie" \
	--column="Description" \
	"/apps-debreate" "Création de paquets Debian" \
	"/apps-discord" "Communication Audio/Vidéo par Internet" \
	"/apps-filezilla" "Client FTP" \
	"/apps-geany" "Editeur de texte" \
	"/apps-gedit" "Editeur de texte" \
	"/apps-gimp" "Logiciel de dessin" \
	"/apps-github-desktop" "Gestion de ses projets Github" \
	"/apps-gpu-screen-recorder" "Capture et Streaming Vidéo de son environnement Linux" \
	"/apps-inkscape" "Logiciel de dessin vectoriel" \
	"/apps-lutris" "Gestion de ses jeux Windows" \
	"/apps-minecraft-mcpe-launcher" "Launcher Minecraft non officiel sous Linux (vous devez posséder la version Android)" \
	"/apps-mozilla-firefox" "Navigateur Web" \
	"/apps-nvidia" "Installation du pilote graphique propriétaire" \
	"/apps-obs-studio" "Capture et Streaming Vidéo de son environnement Linux" \
	"/apps-onlyoffice-desktop" "Suite Bureautique (Traitement de texte, Tableur, etc.)" \
	"/apps-steam" "Client officiel Steam (Jeux)" \
	"/apps-upscayl" "Agrandir ses images en utilisant l'IA (vous devez avoir une bonne carte graphique)" \
	"/apps-vlc" "Lecteur Multimédia" 2> /dev/null`

if echo "$packtatsuki" | grep '/'; then
	chmod +x /etc/tatsuki/Tatsuki-OS/packages/${packtatsuki}.sh
	/usr/bin/lxterminal -e "sudo /etc/tatsuki/Tatsuki-OS/packages/${packtatsuki}.sh"
fi
