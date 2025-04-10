process.on('SIGINT', async () => {
  await prisma.$disconnect();
  console.log('🔥 Disconnected from database');
  process.exit(0); // Exit gracefully
});
