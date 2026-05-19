import { Router, Request, Response } from 'express';
import { readFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';
import { getDb } from '../db.js';

const __dirname = dirname(fileURLToPath(import.meta.url));
const router = Router();

const HTML = readFileSync(join(__dirname, '..', 'views', 'sql-editor.html'), 'utf-8');

const MUTATION_RE = /\b(INSERT|UPDATE|DELETE|DROP|ALTER|CREATE|REPLACE|TRUNCATE|ATTACH|DETACH|PRAGMA)\b/i;
const MAX_ROWS = 1000;

router.get('/', (_req: Request, res: Response) => {
  res.setHeader('Content-Type', 'text/html; charset=utf-8');
  res.send(HTML);
});

router.post('/run', (req: Request, res: Response) => {
  const { query } = req.body as { query?: string };

  if (!query || !query.trim()) {
    res.status(400).json({ error: 'Query is empty.' });
    return;
  }

  const trimmed = query.replace(/^[\s\-\-.*\n]*/m, '').trim();

  if (!/^SELECT\b/i.test(trimmed)) {
    res.status(400).json({ error: 'Only SELECT queries are allowed.' });
    return;
  }

  if (MUTATION_RE.test(query)) {
    res.status(400).json({ error: 'Only SELECT queries are allowed.' });
    return;
  }

  const db = getDb();
  const start = Date.now();

  let timedOut = false;
  const timer = setTimeout(() => {
    timedOut = true;
  }, 5000);

  try {
    const stmt = db.prepare(query);
    const allRows = stmt.all() as Record<string, unknown>[];
    clearTimeout(timer);

    if (timedOut) {
      res.status(408).json({ error: 'Query timed out after 5 seconds.' });
      return;
    }

    const durationMs = Date.now() - start;
    const truncated = allRows.length > MAX_ROWS;
    const rows = truncated ? allRows.slice(0, MAX_ROWS) : allRows;
    const columns = rows.length > 0 ? Object.keys(rows[0]) : [];
    const rowData = rows.map((r) => columns.map((c) => r[c] ?? null));

    console.log(
      JSON.stringify({
        level: 'info',
        msg: 'SQL query executed',
        rowCount: rows.length,
        durationMs,
        ts: new Date().toISOString(),
      })
    );

    res.json({ columns, rows: rowData, rowCount: rows.length, durationMs, truncated });
  } catch (err: unknown) {
    clearTimeout(timer);
    const message = err instanceof Error ? err.message : String(err);
    res.status(400).json({ error: message });
  }
});

export default router;
