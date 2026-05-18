import Database from 'better-sqlite3';
import { readFileSync, unlinkSync, existsSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const DB_PATH = join(__dirname, '..', 'komeet.sqlite');
const SCHEMA_PATH = join(__dirname, '..', 'db', 'schema.sql');
const SEED_PATH = join(__dirname, '..', 'db', 'seed.sql');

if (existsSync(DB_PATH)) {
  unlinkSync(DB_PATH);
  console.log('Dropped existing database.');
}

const db = new Database(DB_PATH);
db.pragma('foreign_keys = ON');

const schema = readFileSync(SCHEMA_PATH, 'utf-8');
const seed = readFileSync(SEED_PATH, 'utf-8');

db.exec(schema);
console.log('Schema applied.');

db.exec(seed);
console.log('Seed data inserted.');

const stats = {
  companies: (db.prepare('SELECT COUNT(*) AS n FROM companies').get() as { n: number }).n,
  users: (db.prepare('SELECT COUNT(*) AS n FROM users').get() as { n: number }).n,
  missions: (db.prepare('SELECT COUNT(*) AS n FROM missions').get() as { n: number }).n,
  participations: (db.prepare('SELECT COUNT(*) AS n FROM participations').get() as { n: number }).n,
  mission_roles: (db.prepare('SELECT COUNT(*) AS n FROM mission_roles').get() as { n: number }).n,
};

console.log('Database ready:', stats);
db.close();
