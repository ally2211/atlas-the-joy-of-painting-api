import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';

import filter from './routes/filter.js';
import byDate from './routes/byDate.js';
import byColor from "./routes/byColor.js"
import bySubject from "./routes/bySubject.js"

const app = express();
const PORT = 3000;

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Serve static files from /public
app.use(express.static(path.join(__dirname, 'public')));



// ✅ Root route to test quickly
app.get('/', (req, res) => {
  res.send('🎨 Joy of Painting API is running!');
});

// ✅ Quick ping route to confirm server is alive
app.get('/ping', (req, res) => {
  res.send('pong');
});


app.use('/api/paintings/filter', filter);
// ✅ Mount your real API routes
app.use('/api/paintings/by-date', byDate);
app.use('/api/paintings/by-color', byColor);
app.use('/api/paintings/by-subject', bySubject);
app.use('/api/paintings/filter', filter);

// ✅ Start the server
app.listen(PORT, () => {
  console.log(`🎨 API server running at http://localhost:${PORT}`);
});
