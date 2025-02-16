#!/bin/bash

load() {
    if [ -z "$1" ]; then
        echo "Provide a file name in parameters."
        echo "Usage: $0 <nom>"
        return 1
    fi

    NOM="$1"
    CHEMIN="$HOME/.env"

    if [ -f "${CHEMIN}/${NOM}" ]; then
        FICHIER="${NOM}"
    else
        echo "No file found for the name : ${NOM}"
        return 1
    fi

    # Charger le fichier
    source "$CHEMIN/$FICHIER"
    echo "Envrionment ${NOM} loaded"
}
