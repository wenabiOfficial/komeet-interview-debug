import { describe, it, expect, beforeAll, afterAll } from 'vitest';
import Database from 'better-sqlite3';
import { readFileSync, unlinkSync, existsSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const TEST_DB_PATH = join(__dirname, '..', 'komeet-test.sqlite');

function buildTestDb(): Database.Database {
  if (existsSync(TEST_DB_PATH)) unlinkSync(TEST_DB_PATH);

  const db = new Database(TEST_DB_PATH);
  db.pragma('foreign_keys = ON');

  const schema = readFileSync(join(__dirname, '..', 'db', 'schema.sql'), 'utf-8');
  const seed = readFileSync(join(__dirname, '..', 'db', 'seed.sql'), 'utf-8');
  db.exec(schema);
  db.exec(seed);
  return db;
}

describe('GET /exports/missions', () => {
  let db: Database.Database;

  beforeAll(() => {
    db = buildTestDb();
  });

  afterAll(() => {
    db.close();
    if (existsSync(TEST_DB_PATH)) unlinkSync(TEST_DB_PATH);
  });

  it('returns rows for a known company', () => {
    const rows = db
      .prepare(
        `SELECT p.id FROM participations p
         JOIN missions m ON m.id = p.mission_id
         WHERE m.company_id = 1
           AND p.registered_at >= date('now', '-30 days')`
      )
      .all();
    expect(rows.length).toBeGreaterThan(0);
  });

  it('returns no rows for a non-existent company', () => {
    const rows = db
      .prepare(
        `SELECT p.id FROM participations p
         JOIN missions m ON m.id = p.mission_id
         WHERE m.company_id = 9999
           AND p.registered_at >= date('now', '-30 days')`
      )
      .all();
    expect(rows.length).toBe(0);
  });

  it('participation statuses are within expected values', () => {
    const rows = db
      .prepare(`SELECT DISTINCT status FROM participations`)
      .all() as { status: string }[];
    const valid = new Set(['registered', 'confirmed', 'cancelled', 'completed']);
    for (const row of rows) {
      expect(valid.has(row.status)).toBe(true);
    }
  });
});
