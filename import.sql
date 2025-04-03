create table EpisodeDates(
    Title text,
    datePublish text
);

COPY EpisodeDates(Title, EpisodeDates) 
FROM '/home/codeelisa/atlas-the-joy-of-painting-api/ColorsUsed.csv' 
DELIMITER ','
CSV
HEADER;
