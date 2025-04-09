import express from 'express';
import { PrismaClient } from '@prisma/client';
const router = express.Router();
const prisma = new PrismaClient();

router.get('/', async (req, res) => {
  const subject = req.query.subject;

  if (!subject) {
    return res.status(400).json({ error: 'Missing subject param' });
  }

  try {
    const results = await prisma.subjectMatter.findMany({
      where: {
        [subject]: true
      },
      select: {
        title: true,
        episode: true
      }
    });

    res.json(results);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Invalid subject or query error' });
  }
});

export default router;
