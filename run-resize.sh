#!/bin/bash

# ==============================================================================
# TITRE: Installation des fichiers x-resize (udev et script)
# DESCRIPTION:
#   Copie un fichier de règles Udev et un script exécutable dans les répertoires
#   système appropriés pour la gestion dynamique de la résolution d'affichage.
# ==============================================================================

# --- Configuration et Préparation ---

# Mode strict: Quitte en cas d'erreur (-e), variable non définie (-u), ou échec
# dans un pipe (-o pipefail).
set -euo pipefail

# Couleurs pour une sortie utilisateur claire
VERT='\033[0;32m'
ROUGE='\033[0;31m'
JAUNE='\033[0;33m'
CYAN='\033[0;36m'
FIN='\033[0m'

# Fichiers et chemins
RULES_FILE="50-x-resize.rules"
SCRIPT_FILE="x-resize"
UDEV_DEST_DIR="/etc/udev/rules.d/"
SCRIPT_DEST_DIR="/usr/local/bin/"

# Vérification des droits root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "${ROUGE}ERREUR : Ce script doit être exécuté avec 'sudo' ou en tant que root.${FIN}"
    exit 1
fi

echo -e "${CYAN}*** Début de l'installation de ${SCRIPT_FILE} et des règles Udev ***${FIN}"

# --- Étape 1: Vérification des fichiers sources ---

echo -e "${JAUNE}1. Vérification des fichiers locaux...${FIN}"
if [ ! -f "${RULES_FILE}" ] || [ ! -f "${SCRIPT_FILE}" ]; then
    echo -e "${ROUGE}ERREUR : Les fichiers source ('${RULES_FILE}' et/ou '${SCRIPT_FILE}') sont introuvables dans le répertoire courant.${FIN}"
    exit 1
fi
echo -e "${VERT}Fichiers source trouvés.${FIN}"

# --- Étape 2: Copie et Permissions ---

echo -e "${JAUNE}2. Copie du fichier de règles Udev...${FIN}"
# Utilisation de cp -v (verbose) pour confirmation
cp -v "${RULES_FILE}" "${UDEV_DEST_DIR}"

echo -e "${JAUNE}3. Copie du script exécutable...${FIN}"
cp -v "${SCRIPT_FILE}" "${SCRIPT_DEST_DIR}"

echo -e "${JAUNE}4. Rendre le script ${SCRIPT_FILE} exécutable...${FIN}"
# Définir explicitement les permissions pour l'exécution
chmod 755 "${SCRIPT_DEST_DIR}${SCRIPT_FILE}"

echo -e "${VERT}Script et règles installés et configurés.${FIN}"

# --- Étape 3: Rechargement d'Udev (Crucial) ---

echo -e "${JAUNE}5. Rechargement des règles Udev pour prendre en compte les changements...${FIN}"
# Commande nécessaire pour que le système prenne immédiatement en compte la nouvelle règle
udevadm control --reload-rules
udevadm trigger

echo -e "${VERT}*** Installation terminée ! ***${FIN}"
echo ""
echo "Le script '${SCRIPT_FILE}' est disponible dans le PATH."
echo "La règle Udev est active."
