#!/bin/bash

# Applications : Bureautique
# Projet Usagi OS
#
# Applications nécessaires :
# - GIMP
# - Inkscape
# - Mozilla Firefox
# - OnlyOffice
# - VLC Media Player
#
# Applications optionnelles :
# - Upscayl
#
# Variables modifiables ( 1=Oui, 0=Non )
INSTALLER_UPSCAYL=1



# GIMP
apt install gimp

# INKSCAPE
apt install inkscape

# MOZILLA FIREFOX
install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
rm /etc/apt/sources.list.d/mozilla.list
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | tee /etc/apt/preferences.d/mozilla
apt update && apt install firefox firefox-l10n-fr

# ONLYOFFICE DESKTOP
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb -P /etc/usagi/openbox-scripts -c
dpkg -i /etc/usagi/openbox-scripts/onlyoffice-desktopeditors_amd64.deb

# UPSCAYL 
if [[ "$INSTALLER_UPSCAYL" -eq 1 ]]; then
	wget https://github.com/upscayl/upscayl/releases/download/v2.11.5/upscayl-2.11.5-linux.AppImage -P /etc/usagi/openbox-scripts -c
	chmod +x /etc/usagi/openbox-scripts/upscayl-2.11.5-linux.AppImage
fi

# VLC
apt install vlc

cp apps-bureautique-icones/* /etc/usagi/openbox-icons/

echo " "
echo "###################################"
echo "# APPS INSTALLEES"
echo "###################################"
echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo "Puis dans l'application, ouvrir le fichier '.config/openbox/debian-menu.xml' de votre dossier Utilisateur."
echo " "
echo "GIMP :"
echo "- Catégorie suggérée : Graphisme"
echo "- Nom suggéré : GIMP"
echo "- Executable : /usr/bin/gimp"
echo "- Icone : /etc/usagi/openbox-icons/gimp.svg"
echo " "
echo "Inkscape :"
echo "- Catégorie suggérée : Graphisme"
echo "- Nom suggéré : Inkscape"
echo "- Executable : /usr/bin/inkscape"
echo "- Icone : /etc/usagi/openbox-icons/inkscape.svg"
echo " "
echo "Mozilla Firefox :"
echo "- Catégorie suggérée : Internet"
echo "- Nom suggéré : Mozilla Firefox"
echo "- Executable : /usr/bin/firefox"
echo "- Icone : /etc/usagi/openbox-icons/firefox.svg"
echo " "
echo "OnlyOffice Desktop :"
echo "- Catégorie suggérée : Bureautique"
echo "- Nom suggéré : OnlyOffice"
echo "- Executable : /usr/bin/onlyoffice-desktopeditors %U"
echo "- Icone : /etc/usagi/openbox-icons/onlyoffice.svg"
if [[ "$INSTALLER_UPSCAYL" -eq 1 ]]; then
	echo " "
	echo "Upscayl :"
	echo "- Catégorie suggérée : Graphisme"
	echo "- Nom suggéré : Upscayl"
	echo "- Executable : /etc/usagi/openbox-scripts/upscayl-2.11.5-linux.AppImage"
	echo "- Icone : /etc/usagi/openbox-icons/upscayl.png"
fi
echo " "
echo "VLC :"
echo "- Catégorie suggérée : Multimédia"
echo "- Nom suggéré : VLC Media Player"
echo "- Executable : /usr/bin/vlc"
echo "- Icone : /etc/usagi/openbox-icons/vlc.svg"
