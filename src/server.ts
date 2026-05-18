import express from 'express';
import exportsRouter from './routes/exports.js';

const app = express();
const PORT = process.env.PORT ?? 3000;

app.use(express.json());

app.get('/health', (_req, res) => {
  res.json({ status: 'ok', ts: new Date().toISOString() });
});

app.use('/exports', exportsRouter);

app.listen(PORT, () => {
  console.log(
    JSON.stringify({
      level: 'info',
      msg: `Server listening on http://localhost:${PORT}`,
      ts: new Date().toISOString(),
    })
  );
});

export default app;
