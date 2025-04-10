import express from 'express';
import { PrismaClient } from '@prisma/client';

const router = express.Router();
const prisma = new PrismaClient();

router.get('/', async (req, res) => {
  const { color } = req.query;

  if (!color) {
    return res.status(400).json({ error: 'Missing color query parameter' });
  }

  try {
    const paintings = await prisma.rawColorsUsed.findMany({
      where: {
        colors: {
          has: color,
        },
      },
      select: {
        title: true,
        colors: true,
        subjectMatter: {
          select: {
            episode: true,
          },
        },
      },
    });

    // Optional: flatten results if needed
    const flattened = paintings.map((p) => ({
      title: p.title,
      colors: p.colors,
      episode: p.subjectMatter?.episode ?? null,
    }));

    res.json(flattened);
  } catch (error) {
    console.error('❌ Error in /by-color route:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
});

export default router;
