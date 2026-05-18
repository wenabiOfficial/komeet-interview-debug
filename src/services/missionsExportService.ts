import { getDb } from '../db.js';

interface ParticipationRow {
  participation_id: number;
  email: string;
  full_name: string;
  mission_title: string;
  starts_at: string;
  status: string;
}

function toCSV(rows: ParticipationRow[]): string {
  const header = 'participation_id,user_email,user_full_name,mission_title,starts_at,status';
  const lines = rows.map((r) =>
    [
      r.participation_id,
      r.email,
      `"${r.full_name}"`,
      `"${r.mission_title}"`,
      r.starts_at,
      r.status,
    ].join(',')
  );
  return [header, ...lines].join('\n');
}

// TODO: handle soft-deleted users (deleted_at not null)
export function generateMissionsExport(companyId: number): string {
  const db = getDb();

  const rows = db
    .prepare<[number], ParticipationRow>(
      `
      SELECT
        p.id          AS participation_id,
        u.email,
        u.first_name || ' ' || u.last_name AS full_name,
        m.title       AS mission_title,
        m.starts_at,
        p.status
      FROM participations p
      JOIN users u         ON u.id = p.user_id
      JOIN missions m      ON m.id = p.mission_id
      LEFT JOIN mission_roles mr ON mr.participation_id = p.id
      WHERE m.company_id = ?
        AND p.registered_at >= date('now', '-30 days')
      ORDER BY m.starts_at DESC
    `
    )
    .all(companyId);

  return toCSV(rows);
}
