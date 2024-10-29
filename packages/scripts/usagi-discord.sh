#!/bin/bash

pkexec 'wget "https://discord.com/api/download?platform=linux&format=deb" -O /etc/usagi/openbox-scripts/discord.deb'
pkexec 'dpkg -i /etc/usagi/openbox-scripts/discord.deb'
/usr/bin/discord
