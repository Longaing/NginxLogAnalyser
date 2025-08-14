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

1. Téléchargez le fichier :
```
wget https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log
```

2. Rendre le fichier exécutable

```
    chmod +x nginx.sh
```

# Exécute

```
    ./nginx.sh

```