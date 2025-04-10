import express from 'express';
import { PrismaClient } from '@prisma/client';

const router = express.Router();
const prisma = new PrismaClient();

router.get('/', async (req, res) => {
  const subject = req.query.subject;
  if (!subject) return res.status(400).json({ error: 'Missing subject parameter' });

  try {
    const paintings = await prisma.subjectMatter.findMany({
      where: {
        [subject]: true
      },
      select: {
        title: true,
        episode: true
      }
    });

    res.json(paintings);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

export default router;
