#!/bin/bash
# Analyseur de logs Nginx

LOG_FILE="nginx-access.log"

echo "Analyse du fichier de log: $LOG_FILE"

echo -e "\nTop 5 des adresses IP:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5 

# awk '{print $1}': Extrait le 1er champ (IP)
# sort: Trie les IPs
# uniq -c: Compte les occurrences
# sort -nr: Trie par nombre (décroissant)
# head -5: Prend les 5 premiers

echo -e "\nTop 5 des chemins demandés:"
awk -F'"' '{print $2}' "$LOG_FILE" | awk '{print $2}' | sort | uniq -c | sort -nr | head -5

echo -e "\nTop 5 des codes de statut:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

echo -e "\nTop 5 des agents utilisateurs:"
awk -F'"' '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5

