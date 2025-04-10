import express from 'express';
import { PrismaClient } from '@prisma/client';

const router = express.Router();
const prisma = new PrismaClient();

router.get('/', async (req, res) => {
  const color = req.query.color;
  if (!color) return res.status(400).json({ error: 'Missing color parameter' });

  try {
    const paintings = await prisma.rawColorsUsed.findMany({
      where: {
        colors: { has: color }
      },
      select: {
        title: true,
        colors: true
      }
    });

    res.json(paintings);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

export default router;
