import express from 'express';

const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello World!');
});
console.log('✅ About to listen...');

app.listen(PORT, () => {
  console.log(`✅ Test server running at http://localhost:${PORT}`);
});
setInterval(() => {}, 1000); // Keeps Node process alive artificially
