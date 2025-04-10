import express from 'express';
import byColor from './routes/byColor.js';
import bySubject from './routes/bySubject.js';
import byDate from './routes/byDate.js';

const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send(`
    <h2>🎨 Joy of Painting API</h2>
    <ul>
      <li><a href="/api/paintings/by-color?color=Bright%20Red">Filter by Color</a></li>
      <li><a href="/api/paintings/by-subject?subject=mountain">Filter by Subject</a></li>
      <li><a href="/api/paintings/by-date?month=January&year=1983">Filter by Date</a></li>
    </ul>
  `);
});


app.use('/api/paintings/by-color', byColor);
app.use('/api/paintings/by-subject', bySubject);
app.use('/api/paintings/by-date', byDate);


process.on('uncaughtException', err => {
  console.error('🔥 Uncaught Exception:', err);
});

process.on('unhandledRejection', err => {
  console.error('🔥 Unhandled Rejection:', err);
});
app.listen(PORT, () => {
  console.log(`🎨 API server running at http://localhost:${PORT}`);
});