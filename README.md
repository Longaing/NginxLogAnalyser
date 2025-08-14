# Project Roadmap URL

https://roadmap.sh/projects/nginx-log-analyser

# Analyseur de Logs Nginx

Un script Bash pour analyser les fichiers de logs Nginx et extraire des statistiques utiles.

# Fonctionnalités

- Top 5 des adresses IP avec le plus de requêtes
- Top 5 des chemins les plus demandés
- Top 5 des codes de statut HTTP
- Top 5 des agents utilisateurs
- Formatage clair des résultats

# Prérequis

- awk, sort, uniq, head, Linux
- Un fichier de log Nginx au format standard

# Installation

1. Téléchargez le script :
```
wget https://example.com/analyze_nginx.sh
```
2. Éxécuter

```
    chmod +x analyze_nginx.sh
```

# Utilisation

```
./analyze_nginx.sh

```