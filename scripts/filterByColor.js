import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function getPaintingsWith(color) {
  const results = await prisma.rawColorsUsed.findMany({
    where: {
      [color]: true
    },
    select: {
      title: true
    }
  });

  console.log(`🎨 Paintings with subject: ${color}`);
  results.forEach(p => console.log(`- ${p.title}`));
}

getPaintingsWith("Prussian_Blue");
