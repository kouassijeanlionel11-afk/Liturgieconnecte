# Liturgieconnecté

Application de programmation des servants de messe — Paroisse Saint Marc des Toits-Rouges.
Site statique (aucun build) + base partagée optionnelle Supabase.

## 1. Base partagée (Supabase, gratuit)
1. supabase.com → New project.
2. SQL Editor → coller le contenu de `supabase.sql` → Run.
3. Authentication → Providers → Email : **désactiver « Allow new users to sign up »** (seuls vos comptes pourront entrer).
4. Authentication → Users → Add user : créer un compte (e-mail + mot de passe) pour chaque responsable.
5. Project Settings → API : copier **Project URL** et la clé **anon public**.
6. Dans `index.html`, remplir la ligne :
   `const LC_CONFIG={url:'https://xxxx.supabase.co',key:'eyJ...'};`
   (la clé anon est publique par conception ; la sécurité vient des règles RLS du fichier SQL).

Sans cette configuration, l'application fonctionne en mode local (données dans le navigateur).

## 2. Déploiement Vercel
Dépôt GitHub avec `index.html`, `vercel.json`, `supabase.sql`, `README.md` → Vercel : Add New → Project → Framework « Other », Build/Output vides → Deploy.

## Notes
- Le premier responsable qui se connecte, si la base est vide, y envoie ses données locales.
- Tous les comptes connectés ont les mêmes droits (pas de rôles distincts pour l'instant).
