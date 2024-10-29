#!/bin/bash

#Sécurité si echec 
apt --fix-broken install

wget "https://discord.com/api/download?platform=linux&format=deb" -O /etc/usagi/openbox-scripts/discord.deb
dpkg -i /etc/usagi/openbox-scripts/discord.deb
/usr/bin/discord
