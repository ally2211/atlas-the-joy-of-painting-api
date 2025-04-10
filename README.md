## ETL - Extract Transform and Load data

### README: **The Joy of Painting Episode Database and API**

---

### **Overview**

This project creates a database and API for a local public broadcasting station to filter episodes of _The Joy of Painting_. The application processes raw data from CSV and Excel files, normalizes it into a database, and provides a robust API for querying episodes by:

- **Month of Original Broadcast**
- **Subject Matter**
- **Color Palette**

---

### **RUN the API**

npx nodemon server.js

### \*\*\* Endpoints

Filter By Date / Subject / Color Sampling
• http://localhost:3000/
![Alt text](WebFilterPage.jpg?raw=true "Filter All")

Filter By DATE
• http://localhost:3000/api/paintings/by-date?month=January&year=1983
![Alt text](FilterByDate.jpg?raw=true "FilterByDate")

Filter By Subject
• http://localhost:3000/api/paintings/by-subject?subject=mountain
![Alt text](FilterBySubject.jpg?raw=true "FilterBySubject")

Filter By Color
• http://localhost:3000/api/paintings/by-color?color=Bright%20Red
![Alt text](FilterByColor.jpg?raw=true "FilterByColor")

### **Project Workflow**

1. **ETL Process**:

   - Extracts raw data from multiple files (CSV and Excel).
   - Transforms inconsistent fields (e.g., varying quotation styles in titles).
   - I used Regex since this is data that does not change once imported.
     ![Alt text](Regex.jpg?raw=true "Regex")

2. **Database Design**:

   - Implements a schema optimized for episode filtering and relationships between data points (e.g., subject matter, color palette).
   - Use Scripts to import csv files into postgres database
   - sudo -u postgres psql joyofpainting< /home/atlas-the-joy-of-painting-api/importEpisodeDates.sql
   - sudo -u postgres psql joyofpainting< /home/atlas-the-joy-of-painting-api/importColorsUsed.sql
   - sudo -u postgres psql joyofpainting< /home/atlas-the-joy-of-painting-api/importSubjectMatter.sql
   - sudo -u postgres psql joyofpainting< /home/atlas-the-joy-of-painting-api/importscripttoalter.sql

   After importing csv files and creating tables via script, create schema.prisma

   - npx prisma db pull
     ![Alt text](createmodels.jpg?raw=true "dbpull")

   - npx prisma generate
     This command generates the Prisma Client — a type-safe database client that you can use in your Node.js app to query your database using JavaScript/TypeScript.

   - Scripts that test filtering.

     - example: node scripts/filterByColors.js

   - ERD Diagram
     ![Alt text](ERDDiagram.jpg?raw=true "ERD Diagram")

## ✅ Tech Stack Overview

- **PostgreSQL** – database to store painting and episode metadata
- **Prisma** – type-safe ORM for querying PostgreSQL
- **Node.js** – JavaScript runtime
- **Express.js** – API server for handling routes and filters
- **HTML/CSS/JavaScript** – simple static frontend UI (no React)
- **pgAdmin 4** – optional GUI for managing PostgreSQL

## 🧩 Key Dependencies

- `@prisma/client` – generated database client for querying models
- `prisma` – CLI for managing schema and generating types
- `express` – lightweight server and API routing
- `nodemon` – auto-restarts the server during development

## ⚙️ Installation

Install with `pnpm`, `npm`, or `yarn`:

````bash
# Required dependencies
pnpm add express @prisma/client

# Dev dependencies
pnpm add -D prisma nodemon

#  version 5 created problems
pnpm remove express && pnpm add express@4

```bash

````

## ⚙️ PostgreSQL Installation

````bash
sudo apt update
sudo apt install postgresql postgresql-contrib
sudo systemctl start postgresql
sudo systemctl enable postgresql
Switch to Postgres user:  sudo -i -u postgres
Open the PostgreSQL shell: sudo -u postgres psql
List all databases: \l
Connect to a database: \c joyofpainting
List tables in your current database: \dt
```bash
````
