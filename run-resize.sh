#!/bin/bash
#
# Copie du fichier "50-x-resize.rules" vers l'emplacement "/etc/udev/rules.d/"
cp 50-x-resize.rules /etc/udev/rules.d/
#
# Copie du fichier "x-resize" vers l'emplacement "/usr/local/bin/"
cp x-resize /usr/local/bin/
#
# Rendre le script "x-resize" exécutable
chmod +x /usr/local/bin/x-resize
