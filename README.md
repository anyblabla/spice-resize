# 🖥️ `spice-resize`

## Script d'Activation du Redimensionnement Automatique pour Xfce et Mate

-----

### 🇫🇷 Description du Projet

Ce projet fournit un script d'installation pour activer le **redimensionnement automatique de l'écran** des machines virtuelles (VM) qui utilisent l'agent **`spice-vdagent`** avec un client comme **`virt-viewer`** ou **`spicy`**.

Cette fonctionnalité est souvent inactive ou nécessite une configuration manuelle dans les environnements de bureau légers tels que **Xfce** et **Mate**. Le script automatise cette configuration, permettant à la résolution de votre VM de s'adapter dynamiquement à la taille de la fenêtre de votre hôte.

### 🇬🇧 Project Description

This project provides an installation script to enable **automatic screen resizing** for virtual machines (VMs) that use the **`spice-vdagent`** with a client such as **`virt-viewer`** or **`spicy`**.

This feature is often inactive or requires manual configuration in lightweight desktop environments like **Xfce** and **Mate**. The script automates this configuration, allowing your VM's resolution to dynamically adapt to the size of your host's window.

-----

### 🛠️ Installation et Utilisation / Installation and Usage

Ce projet est distribué sous forme d'archive. Voici comment procéder à l'installation :

1.  **Télécharger et Décompresser / Download and Unzip**
    Téléchargez l'archive du dépôt (ex: format ZIP/tar.gz) et décompressez-la sur votre machine virtuelle.
    *Download the repository archive (e.g., ZIP/tar.gz format) and unzip it on your virtual machine.*

2.  **Accéder au Répertoire / Access the Directory**
    Ouvrez une instance de Terminal dans le répertoire décompressé (ex: `spice-resize-main`).
    *Open a Terminal instance in the unzipped directory (e.g., `spice-resize-main`).*

3.  **Rendre le Script Exécutable / Make the Script Executable**

    ```bash
    chmod +x run-resize.sh
    ```

4.  **Lancer l'Installation / Launch the Installation**

    ```bash
    sudo ./run-resize.sh
    ```

    Le script `run-resize.sh` appliquera toutes les modifications nécessaires et finalisera la configuration pour vous.

-----

### 📺 Démonstration et Note Importante

La vidéo ci-dessous montre la configuration et le résultat final.

**⚠️ NOTE :** Dans la vidéo, toutes les étapes d'installation sont effectuées **manuellement** à titre d'exemple et de pédagogie. Le script **`run-resize.sh`** est fourni pour que ce processus s'effectue automatiquement.

| Plateforme | Contenu | Lien |
| :--- | :--- | :--- |
| **PeerTube** | Démonstration du redimensionnement automatique (configuration manuelle montrée). | [Regarder la Démonstration](https://peertube-blablalinux.be/w/wgTSt8X9MpSFrpDuMjyXjj) |

-----

### 📝 Licence

Ce projet est sous licence **[À compléter - Ex: MIT, GPL, etc.]**.
