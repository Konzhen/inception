# Inception

Mise en place d’une infrastructure de services conteneurisés avec Docker Compose, comprenant notamment WordPress et MariaDB.

## Configuration

Les scripts attendent `SQL_DATABASE`, `SQL_USER` et `SQL_ROOT_PASSWORD`. Créer `.env` à partir de `.env.example`, puis remplacer les valeurs d’exemple par des mots de passe choisis localement. Le fichier `.env` n’est pas publié.

## Commandes

Le Makefile fournit notamment `make build`, `make up`, `make down`, `make stop` et `make clean`.

## Sujet 42

Le sujet officiel est consultable sur la [page Projets de l’intranet 42](https://projects.intra.42.fr/) après connexion. Le PDF n’est pas recopié dans ce dépôt.
