PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS companies (
  id         INTEGER PRIMARY KEY,
  name       TEXT    NOT NULL,
  plan       TEXT    NOT NULL CHECK (plan IN ('starter', 'pro', 'enterprise')),
  created_at TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
  id         INTEGER PRIMARY KEY,
  company_id INTEGER NOT NULL REFERENCES companies(id),
  email      TEXT    NOT NULL UNIQUE,
  first_name TEXT    NOT NULL,
  last_name  TEXT    NOT NULL,
  status     TEXT    NOT NULL CHECK (status IN ('active', 'invited', 'disabled')),
  created_at TEXT    NOT NULL,
  deleted_at TEXT
);

CREATE TABLE IF NOT EXISTS missions (
  id         INTEGER PRIMARY KEY,
  company_id INTEGER NOT NULL REFERENCES companies(id),
  title      TEXT    NOT NULL,
  starts_at  TEXT    NOT NULL,
  ends_at    TEXT    NOT NULL,
  created_at TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS participations (
  id            INTEGER PRIMARY KEY,
  user_id       INTEGER NOT NULL REFERENCES users(id),
  mission_id    INTEGER NOT NULL REFERENCES missions(id),
  status        TEXT    NOT NULL CHECK (status IN ('registered', 'confirmed', 'cancelled', 'completed')),
  registered_at TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS mission_roles (
  id               INTEGER PRIMARY KEY,
  participation_id INTEGER NOT NULL REFERENCES participations(id),
  role             TEXT    NOT NULL CHECK (role IN ('volunteer', 'leader', 'mentor')),
  assigned_at      TEXT    NOT NULL
);
