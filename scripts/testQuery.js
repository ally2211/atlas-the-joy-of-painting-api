import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

async function getPaintingsByColor(colorName) {
  const paintings = await prisma.painting.findMany({
    where: {
      colors: {
        some: {
          colorName: {
            name: colorName
          }
        }
      }
    },
    select: {
      title: true // only select title
    }
  });

  console.log(`🎨 Paintings that use "${colorName}":`);
  paintings.forEach(p => console.log('- ' + p.title));
}

getPaintingsByColor('Bright Red');
