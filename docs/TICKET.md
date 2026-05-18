# [P1] Export missions — doublons dans le CSV

**Client** : Acme Corp (plan Enterprise)  
**Remonté par** : Sophie Lambert (CSM)  
**Date** : hier 16h42  
**Priorité** : P1  
**Assigné à** : (toi)

---

## Description

Le client signale que son export hebdomadaire des participations aux missions
contient des doublons depuis hier. Sur les 80 lignes du CSV, il en compte
"plusieurs dizaines" en double exact ou quasi-exact.

Le client utilise cet export pour son reporting RSE mensuel, donc bloquant
pour eux. Sophie a précisé que le responsable RSE d'Acme prépare un board
demain matin — on a besoin d'une réponse avant 9h.

---

## Comportement attendu

Une ligne par participation dans le CSV, soit exactement autant de lignes
que d'inscriptions actives sur les 30 derniers jours.

## Comportement observé

Certaines participations apparaissent plusieurs fois (2 ou 3 fois) dans le
fichier exporté, avec des données identiques (même `participation_id`, même
email, même mission).

---

## Reproduction

```
GET /exports/missions?companyId=1
```

Aucune authentification requise en local. Le endpoint renvoie directement
le CSV.

---

## Questions à investiguer

1. Quelle est la cause technique des doublons ?
2. Depuis quand le problème existe-t-il réellement ? (le client dit "hier"
   mais est-ce exact ?)
3. D'autres clients sont-ils potentiellement touchés ?
4. Y a-t-il d'autres anomalies dans les données exportées ?

---

## Pièces jointes

Logs applicatifs récents : voir `LOGS.md`
