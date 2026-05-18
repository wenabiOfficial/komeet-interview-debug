import { Router, Request, Response } from 'express';
import { generateMissionsExport } from '../services/missionsExportService.js';

const router = Router();

router.get('/missions', (req: Request, res: Response) => {
  const companyId = Number(req.query.companyId);

  if (!companyId || isNaN(companyId)) {
    res.status(400).json({ error: 'companyId query param is required' });
    return;
  }

  console.log(
    JSON.stringify({
      level: 'info',
      msg: 'Export requested',
      companyId,
      ts: new Date().toISOString(),
    })
  );

  try {
    const csv = generateMissionsExport(companyId);
    const lineCount = csv.split('\n').length - 1;

    console.log(
      JSON.stringify({
        level: 'info',
        msg: 'Export generated',
        companyId,
        rows: lineCount,
        ts: new Date().toISOString(),
      })
    );

    res.setHeader('Content-Type', 'text/csv');
    res.setHeader(
      'Content-Disposition',
      `attachment; filename="missions-export-company-${companyId}.csv"`
    );
    res.send(csv);
  } catch (err) {
    console.error(
      JSON.stringify({
        level: 'error',
        msg: 'Export failed',
        companyId,
        error: String(err),
        ts: new Date().toISOString(),
      })
    );
    res.status(500).json({ error: 'Internal server error' });
  }
});

export default router;
