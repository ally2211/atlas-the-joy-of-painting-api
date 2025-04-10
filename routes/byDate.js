import express from 'express';
import { PrismaClient } from '@prisma/client';

console.log("📅 byDate route loaded"); // Debugging info

const router = express.Router();
const prisma = new PrismaClient(); // Initialize Prisma client

function parseMonthYear(dateStr) {
  const match = dateStr?.match(/\(?([A-Za-z]+)\s+\d{1,2}\s+(\d{4})\)?/);
  if (!match) return null;
  const [, month, year] = match;
  return { month, year };
}

router.get('/', async (req, res) => {
  const { month, year } = req.query;

  if (!month || !year) {
    return res.status(400).json({ error: 'Missing month or year in query' });
  }

  try {
    const episodes = await prisma.episodeDates.findMany({
      where: {
        datepublish: {
          not: null,
        },
      },
      select: {
        title: true,
        datepublish: true,
        subjectmatter: {
            select: {
                episode: true
            }
        }
      },
    });

    const filtered = episodes.filter((ep) => {
      const parsed = parseMonthYear(ep.datepublish);
      return (
        parsed &&
        parsed.month.toLowerCase() === month.toLowerCase() &&
        parsed.year === year
      );
    })
    .map((ep) => ({
        title: ep.title,
        datepublish: ep.datepublish,
        episode: ep.subjectmatter?.episode ?? null,
      }));

    res.json(filtered);
  } catch (err) {
    console.error("🔥 Error in /by-date route:", err);
    res.status(500).json({ error: err.message });
  }
});

// To prevent clean exit, ensure express keeps running
router.use((req, res, next) => {
  next();
});

export default router;
