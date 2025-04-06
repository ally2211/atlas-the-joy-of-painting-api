drop table if exists EpisodeDates;

create table EpisodeDates(
    IDRow integer,
    Title text,
    datePublish text,
    notes text
);

COPY EpisodeDates(IDRow, Title, datePublish, notes) 
FROM '/home/codeelisa/atlas-the-joy-of-painting-api/EpisodeDates.csv' 
DELIMITER ','
CSV
HEADER;
