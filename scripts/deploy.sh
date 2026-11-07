#!/bin/bash
# Indique que ce fichier doit être exécuté avec Bash.

set -e
# Arrête le script dès qu'une commande rencontre une erreur.

PROJECT_DIR="$HOME/serveur/site-equipe"
# Stocke le chemin du dossier du projet sur le serveur.

if [ ! -d "$PROJECT_DIR" ]; then
# Vérifie si le dossier du projet n'existe pas.

    echo "Erreur : le dossier $PROJECT_DIR n'existe pas."
    # Affiche un message pour expliquer pourquoi le déploiement s'arrête.

    exit 1
    # Arrête le script avec un code d'erreur.

fi
# Termine la vérification de l'existence du dossier.

cd "$PROJECT_DIR"
# Se place dans le dossier du projet sur le serveur.

git pull
# Récupère les dernières modifications depuis le dépôt distant Git.

sudo cp index.html style.css /var/www/html/
# Copie les fichiers HTML et CSS dans le dossier du serveur web.

echo "Déploiement terminé avec succès !"
# Affiche un message lorsque toutes les opérations sont terminées.