import express from 'express';
import path from 'path';
import paintingsRoute from './routes/paintings.js';

const app = express();
const PORT = process.env.PORT || 3000;

// Serve static files like index.html
app.use(express.static('public'));

// API route
app.use('/api/paintings', paintingsRoute);

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
