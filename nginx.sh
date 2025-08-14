#!/bin/bash
# Analyseur de logs Nginx

LOG_FILE="nginx-access.log"

# Vérification que le fichier existe
if [ ! -f "$LOG_FILE" ]; then
    echo "Erreur: Fichier $LOG_FILE introuvable"
    exit 1
fi

display_top() {
    local title=$1
    local awk_cmd=$2
    local count=1
    
    echo -e "\nTop 5 $title:"
    echo "-------------------------------------"
    
    eval "$awk_cmd" | sort | uniq -c | sort -nr | head -5 | while read -r count item; do
        printf "%s - %d requêtes\n" "$item" "$count"
    done
    
    echo "-------------------------------------"
}

# 1. Top 5 des adresses IP
display_top "des adresses IP avec le plus de demandes" "awk '{print \$1}' \"$LOG_FILE\""

# 2. Top 5 des chemins demandés
display_top "des chemins les plus demandés" "awk -F'\"' '{print \$2}' \"$LOG_FILE\" | awk '{print \$2}'"

# 3. Top 5 des codes de statut
display_top "des codes d'état de réponse" "awk '{print \$9}' \"$LOG_FILE\""

# 4. Top 5 des agents utilisateurs
display_top "des agents utilisateurs" "awk -F'\"' '{print \$6}' \"$LOG_FILE\""