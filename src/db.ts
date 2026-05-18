import Database from 'better-sqlite3';
import { readFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const DB_PATH = join(__dirname, '..', 'komeet.sqlite');

let _db: Database.Database | null = null;

export function getDb(): Database.Database {
  if (!_db) {
    _db = new Database(DB_PATH);
    _db.pragma('foreign_keys = ON');
    _db.pragma('journal_mode = WAL');
  }
  return _db;
}

export function initDb(): void {
  const db = new Database(DB_PATH);
  db.pragma('foreign_keys = ON');

  const schemaPath = join(__dirname, '..', 'db', 'schema.sql');
  const seedPath = join(__dirname, '..', 'db', 'seed.sql');

  const schema = readFileSync(schemaPath, 'utf-8');
  const seed = readFileSync(seedPath, 'utf-8');

  db.exec(schema);
  db.exec(seed);
  db.close();

  console.log(JSON.stringify({ level: 'info', msg: 'Database initialized', path: DB_PATH }));
}
