import express from 'express';
import byDate from './routes/byDate.js'; // This is your working route file

const app = express();
const PORT = 3000;

// ✅ Root route to test quickly
app.get('/', (req, res) => {
  res.send('🎨 Joy of Painting API is running!');
});

// ✅ Quick ping route to confirm server is alive
app.get('/ping', (req, res) => {
  res.send('pong');
});

// ✅ Mount your real API routes
app.use('/api/paintings/by-date', byDate);

// ✅ Start the server
app.listen(PORT, () => {
  console.log(`🎨 API server running at http://localhost:${PORT}`);
});
