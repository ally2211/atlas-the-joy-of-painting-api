import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function getPaintingsWithColor(colorName) {
  const results = await prisma.rawColorsUsed.findMany({
    where: {
      colors: {
        has: colorName
      }
    },
    select: {
      title: true,
      colors: true
    }
  });

  console.log(`🎨 Paintings that use color: ${colorName}`);
  results.forEach(p =>
    console.log(`- ${p.title} (${p.colors.join(', ')})`)
  );
}

// Example: Find all paintings with Bright Red
getPaintingsWithColor('Bright Red');
