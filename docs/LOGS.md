# Logs applicatifs — komeet-api (dernières 96h)

> Extraits du service `komeet-api`, environnement production.  
> Format : logfmt / JSON structuré selon les modules.

---

## J-4 (il y a 4 jours)

```
ts=2026-05-14T08:12:03Z level=info service=api msg="Deploy started" version=v2.14.0
ts=2026-05-14T08:14:51Z level=info service=api msg="Deploy complete" version=v2.14.0 duration_ms=168000
ts=2026-05-14T08:14:52Z level=info service=api msg="Deployed feature: multi-role assignments on participations" version=v2.14.0
ts=2026-05-14T08:15:10Z level=info service=api msg="Health check OK" version=v2.14.0
ts=2026-05-14T08:31:44Z level=info service=api msg="Export requested" companyId=3 ts=2026-05-14T08:31:44Z
ts=2026-05-14T08:31:44Z level=info service=api msg="Export generated" companyId=3 rows=4 ts=2026-05-14T08:31:44Z
ts=2026-05-14T09:17:02Z level=warn service=worker msg="Job queue lag detected" queue=notifications lag_ms=4200
ts=2026-05-14T10:00:00Z level=info service=cron msg="Scheduled digest sent" recipients=312
ts=2026-05-14T11:44:18Z level=info service=api msg="Export requested" companyId=2 ts=2026-05-14T11:44:18Z
ts=2026-05-14T11:44:18Z level=info service=api msg="Export generated" companyId=2 rows=14 ts=2026-05-14T11:44:18Z
ts=2026-05-14T14:55:30Z level=error service=api msg="DB timeout" route=GET /users duration_ms=5012 error="SQLITE_BUSY: database is locked"
ts=2026-05-14T14:55:31Z level=info service=api msg="DB timeout" route=GET /users msg="Retry succeeded" duration_ms=210
ts=2026-05-14T16:30:00Z level=info service=cron msg="Scheduled digest sent" recipients=289
```

---

## J-3

```
ts=2026-05-15T07:58:11Z level=info service=api msg="Export requested" companyId=1 ts=2026-05-15T07:58:11Z
ts=2026-05-15T07:58:11Z level=info service=api msg="Export generated" companyId=1 rows=38 ts=2026-05-15T07:58:11Z
ts=2026-05-15T09:22:44Z level=info service=api msg="Export requested" companyId=2 ts=2026-05-15T09:22:44Z
ts=2026-05-15T09:22:44Z level=info service=api msg="Export generated" companyId=2 rows=16 ts=2026-05-15T09:22:44Z
ts=2026-05-15T11:03:27Z level=warn service=worker msg="Slow query detected" table=participations duration_ms=1840
ts=2026-05-15T13:00:00Z level=info service=cron msg="Scheduled digest sent" recipients=318
ts=2026-05-15T14:41:09Z level=info service=api msg="Export requested" companyId=3 ts=2026-05-15T14:41:09Z
ts=2026-05-15T14:41:09Z level=info service=api msg="Export generated" companyId=3 rows=5 ts=2026-05-15T14:41:09Z
ts=2026-05-15T17:20:00Z level=info service=cron msg="Scheduled digest sent" recipients=301
```

---

## J-2

```
ts=2026-05-16T08:05:14Z level=info service=api msg="Export requested" companyId=1 ts=2026-05-16T08:05:14Z
ts=2026-05-16T08:05:14Z level=info service=api msg="Export generated" companyId=1 rows=54 ts=2026-05-16T08:05:14Z
ts=2026-05-16T10:10:00Z level=info service=cron msg="Scheduled digest sent" recipients=322
ts=2026-05-16T11:30:01Z level=error service=api msg="DB timeout" route=POST /participations duration_ms=6001 error="SQLITE_BUSY: database is locked"
ts=2026-05-16T11:30:02Z level=info service=api msg="DB timeout" route=POST /participations msg="Retry succeeded" duration_ms=180
ts=2026-05-16T14:00:00Z level=info service=cron msg="Scheduled digest sent" recipients=310
ts=2026-05-16T15:44:33Z level=info service=api msg="Export requested" companyId=2 ts=2026-05-16T15:44:33Z
ts=2026-05-16T15:44:33Z level=info service=api msg="Export generated" companyId=2 rows=18 ts=2026-05-16T15:44:33Z
```

---

## J-1 (hier — jour signalé par le client)

```
ts=2026-05-17T07:44:12Z level=info service=api msg="Export requested" companyId=1 ts=2026-05-17T07:44:12Z
ts=2026-05-17T07:44:12Z level=info service=api msg="Export generated" companyId=1 rows=81 ts=2026-05-17T07:44:12Z
ts=2026-05-17T09:00:00Z level=info service=cron msg="Scheduled digest sent" recipients=331
ts=2026-05-17T10:18:55Z level=info service=api msg="Export requested" companyId=3 ts=2026-05-17T10:18:55Z
ts=2026-05-17T10:18:55Z level=info service=api msg="Export generated" companyId=3 rows=6 ts=2026-05-17T10:18:55Z
ts=2026-05-17T14:04:22Z level=warn service=worker msg="Job queue lag detected" queue=emails lag_ms=3800
ts=2026-05-17T14:04:45Z level=info service=worker msg="Job queue lag resolved" queue=emails
ts=2026-05-17T16:42:11Z level=info service=api msg="Export requested" companyId=1 ts=2026-05-17T16:42:11Z
ts=2026-05-17T16:42:11Z level=info service=api msg="Export generated" companyId=1 rows=83 ts=2026-05-17T16:42:11Z
ts=2026-05-17T16:43:02Z level=info service=support msg="Ticket created" ticketId=P1-4471 client=acme priority=P1
ts=2026-05-17T18:00:00Z level=info service=cron msg="Scheduled digest sent" recipients=329
```

---

## Aujourd'hui (J+0)

```
ts=2026-05-18T06:01:00Z level=info service=cron msg="Scheduled digest sent" recipients=334
ts=2026-05-18T08:30:15Z level=info service=api msg="Health check OK" version=v2.14.0
```

---

> **Note** : Les erreurs `SQLITE_BUSY` sur J-4 et J-2 concernent des routes
> différentes de l'export et ont toutes été résolues au retry suivant.
> Elles ne sont pas liées au ticket P1-4471.
