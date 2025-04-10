// scripts/listSubjectFields.js
import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

const getSubjectColumns = async () => {
  const result = await prisma.$queryRaw`
    SELECT column_name
    FROM information_schema.columns
    WHERE table_name = 'subjectmatter'
      AND data_type = 'boolean';
  `;

  const fields = result.map(row => row.column_name);
  console.log('Subject columns:', fields);
};

getSubjectColumns()
  .catch(console.error)
  .finally(() => prisma.$disconnect());
