#!/bin/bash

curl -sS https://minecraft-linux.github.io/pkg/deb/pubkey.gpg | tee -a /etc/apt/trusted.gpg.d/minecraft-linux-pkg.asc
echo "deb [arch=amd64,arm64,armhf] https://minecraft-linux.github.io/pkg/deb bookworm main" | tee /etc/apt/sources.list.d/minecraft-linux-pkg.list
apt update && apt install mcpelauncher-ui-manifest mcpelauncher-manifest-glfw

echo " "
echo "Vous pouvez ajouter ces informations pour configurer votre menu désormais."
echo "- Menu > Configurer Le Menu"
echo " "
echo "- Catégorie suggérée : Jeux"
echo "- Nom suggéré : Minecraft Bedrock Edition"
echo "- Executable : /usr/bin/mcpelauncher-ui-qt"
echo "- Icone : /etc/usagi/openbox-icons/minecraft.svg"

read -p "Appuyer sur une touche pour quitter... " -n1 -s