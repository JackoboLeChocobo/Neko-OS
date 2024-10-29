#!/bin/bash

/usr/bin/wget "https://discord.com/api/download?platform=linux&format=deb" -O /etc/usagi/openbox-scripts/discord.deb
/usr/bin/dpkg -i /etc/usagi/openbox-scripts/discord.deb
