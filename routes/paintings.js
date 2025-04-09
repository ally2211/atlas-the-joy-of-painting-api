import express from 'express';
import { PrismaClient } from '@prisma/client';

const router = express.Router();
const prisma = new PrismaClient();

router.get('/', async (req, res) => {
  const { color } = req.query;

  if (!color) {
    return res.status(400).json({ error: 'Color is required' });
  }

  try {
    const paintings = await prisma.painting.findMany({
      where: {
        colors: {
          some: {
            colorName: {
              name: color
            }
          }
        }
      },
      select: {
        title: true
      }
    });

    res.json(paintings);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Server error' });
  }
});

export default router;
