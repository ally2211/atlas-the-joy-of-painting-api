import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

function parseMonthYear(dateStr) {
  // Assumes format like: (January 11 1983)
  const match = dateStr.match(/\(?([A-Za-z]+)\s+\d{1,2}\s+(\d{4})\)?/);
  if (!match) return null;
  const [, month, year] = match;
  return { month, year };
}

async function getEpisodesByMonthYear(targetMonth, targetYear) {
  const allEpisodes = await prisma.episodeDates.findMany({
    where: {
      datepublish: {
        not: null,
      },
    },
    select: {
      title: true,
      datepublish: true,
    },
  });

  const filtered = allEpisodes.filter((ep) => {
    const parsed = parseMonthYear(ep.datepublish);
    return (
      parsed &&
      parsed.month.toLowerCase() === targetMonth.toLowerCase() &&
      parsed.year === targetYear
    );
  });

  console.log(`🎨 Episodes aired in ${targetMonth} ${targetYear}:`);
  filtered.forEach((ep) =>
    console.log(`- ${ep.title} ${ep.datepublish}`)
  );
}

// Example: filter by January 1983
getEpisodesByMonthYear("January", "1983");
