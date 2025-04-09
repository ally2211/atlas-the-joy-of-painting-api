import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function getPaintingsWith(subject) {
  const results = await prisma.subjectMatter.findMany({
    where: {
      [subject]: true
    },
    select: {
      title: true,
      episode: true
    }
  });

  console.log(`🎨 Paintings with subject: ${subject}`);
  results.forEach(p => console.log(`- ${p.title} (${p.episode})`));
}

getPaintingsWith("mountain");
