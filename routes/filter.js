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
  //const { colors, subjects, startYear, endYear } = req.query;
  const { colors, subjects, startMonth, startYear, endMonth, endYear } = req.query;


  // Turn comma-separated lists into arrays
  const colorList = colors?.split(',') || [];
  const subjectList = subjects?.split(',') || [];
  const monthNameToIndex = {
    january: 1,
    february: 2,
    march: 3,
    april: 4,
    may: 5,
    june: 6,
    july: 7,
    august: 8,
    september: 9,
    october: 10,
    november: 11,
    december: 12,
    };

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


    const episodeMonthIndex = monthNameToIndex[parsed.month.toLowerCase()];
    const episodeYear = parseInt(parsed.year, 10);
  // Filter by year range
  // Convert start and end to comparable numbers
    const start = startMonth && startYear
    ? parseInt(startYear) * 100 + monthNameToIndex[startMonth.toLowerCase()]
    : null;

    const end = endMonth && endYear
    ? parseInt(endYear) * 100 + monthNameToIndex[endMonth.toLowerCase()]
    : null;

    const episodeValue = episodeYear * 100 + episodeMonthIndex;

    if (start && episodeValue < start) return false;
    if (end && episodeValue > end) return false;

  const matchesColors =
    colorList.length === 0 ||
    colorList.some(color => ep.rawColorsUsed?.colors?.includes(color));

  const matchesSubjects =
    subjectList.length === 0 ||
    subjectList.some(subject => ep.subjectmatter?.[subject] === true);

  return matchesColors && matchesSubjects;
});


    const flattened = filtered.map((ep) => {
    const { subjectmatter } = ep;

    const subjects = Object.entries(subjectmatter || {})
        .filter(([key, value]) => typeof value === 'boolean' && value)
        .map(([key]) => key);

    return {
        title: ep.title,
        episode: subjectmatter?.episode ?? null,
        datepublish: ep.datepublish ?? null,
        season: ep.rawColorsUsed?.season ?? null,
        youtube_src: ep.rawColorsUsed?.youtube_src ?? null,
        colors: ep.rawColorsUsed?.colors ?? [],
        subjects, // ✅ now an array like ["mountain", "lake"]
    };
    });


    res.json(flattened);
  } catch (err) {
    console.error('❌ Error in /filter route:', err);
    res.status(500).json({ error: err.message });
  }
});

export default router;
