# komeet-interview-debug

Mini-repo support pour l'entretien technique Solutions Engineer.

## Prérequis

- Node.js 22 (voir `.nvmrc`)

## Setup

```bash
npm install
npm run db:init      # crée la base SQLite à partir de schema.sql + seed.sql
npm run dev          # démarre le serveur sur http://localhost:3000
```

## Test du endpoint

```bash
curl "http://localhost:3000/exports/missions?companyId=1" -o export.csv
```

## Éditeur SQL

Une fois le serveur lancé, l'éditeur SQL est accessible sur :

http://localhost:3000/sql

Permet d'écrire des requêtes SELECT sur la base directement depuis ton navigateur, sans installation. Le schéma est rappelé en haut de la page.

## Tests

```bash
npm test
```

## Structure

```
src/               Code applicatif (Express + TypeScript)
  routes/          Handlers HTTP
  services/        Logique métier
db/                Schéma SQL et données de test
docs/              Contexte du ticket support (TICKET.md, LOGS.md)
tests/             Tests unitaires (Vitest)
scripts/           Scripts utilitaires (init DB)
```

## Contexte

Tu trouveras dans `docs/TICKET.md` le ticket support qui t'a été assigné,
et dans `docs/LOGS.md` les logs applicatifs des 4 derniers jours.
