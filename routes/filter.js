import express from 'express';
import { PrismaClient } from '@prisma/client';

const router = express.Router();
const prisma = new PrismaClient();

function parseMonthYear(dateStr) {
  const match = dateStr?.match(/\(?([A-Za-z]+)\s+\d{1,2}\s+(\d{4})\)?/);
  if (!match) return null;
  const [, month, year] = match;
  return { month, year };
}

router.get('/', async (req, res) => {
  //const { colors, subjects, month, year } = req.query;
  const { colors, subjects, startYear, endYear } = req.query;


  // Turn comma-separated lists into arrays
  const colorList = colors?.split(',') || [];
  const subjectList = subjects?.split(',') || [];

  try {
    const results = await prisma.episodeDates.findMany({
      where: {
        datepublish: {
          not: null,
        },
      },
      select: {
        title: true,
        datepublish: true,
        rawColorsUsed: {
          select: {
            colors: true,
            season: true,
            youtube_src: true,
          },
        },
        subjectmatter: {
          select: {
            episode: true,
            // Add all possible subject fields dynamically later
            mountain: true,
            tree: true,
            lake: true,
            beach: true,
            ocean: true,
            snow: true,
            cabin: true,
            sun: true,
            river: true,
            waterfall: true,
            clouds: true,
            barn: true,
            path: true,
            moon: true,
            flowers: true,
            // Add others as needed
          },
        },
      },
    });

  const filtered = results.filter((ep) => {
  const parsed = parseMonthYear(ep.datepublish);
  if (!parsed) return false;

  // Filter by year range
  const yearInt = parseInt(parsed.year, 10);
  if (startYear && yearInt < parseInt(startYear)) return false;
  if (endYear && yearInt > parseInt(endYear)) return false;

  const matchesColors =
    colorList.length === 0 ||
    colorList.some(color => ep.rawColorsUsed?.colors?.includes(color));

  const matchesSubjects =
    subjectList.length === 0 ||
    subjectList.some(subject => ep.subjectmatter?.[subject] === true);

  return matchesColors && matchesSubjects;
});

    const flattened = filtered.map((ep) => ({
      title: ep.title,
      datepublish: ep.datepublish,
      episode: ep.subjectmatter?.episode ?? null,
      season: ep.rawColorsUsed?.season ?? null,
      youtube_src: ep.rawColorsUsed?.youtube_src ?? null,
      colors: ep.rawColorsUsed?.colors ?? [],
      subject: Object.entries(ep.subjectmatter || {})
        .filter(([key, value]) => typeof value === 'boolean' && value === true)
        .reduce((acc, [key]) => ({ ...acc, [key]: true }), {})
    }));

    res.json(flattened);
  } catch (err) {
    console.error('❌ Error in /filter route:', err);
    res.status(500).json({ error: err.message });
  }
});

export default router;
