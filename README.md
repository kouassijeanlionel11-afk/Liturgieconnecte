# Liturgieconnecté

Application de programmation des servants de messe — Paroisse Saint Marc des Toits-Rouges.
Site statique : aucun build requis.

## Déploiement sur Vercel
1. Mettre ces 3 fichiers (index.html, vercel.json, README.md) dans un dossier, puis sur GitHub.
2. Sur vercel.com : Add New → Project → importer le dépôt.
3. Framework Preset : Other. Laisser Build Command et Output Directory vides. Deploy.

(Alternative : `npm i -g vercel` puis `vercel --prod` dans le dossier.)

## Données
Stockées dans le navigateur (localStorage). Utiliser l'onglet « Sauvegarde » pour exporter/importer en JSON.
