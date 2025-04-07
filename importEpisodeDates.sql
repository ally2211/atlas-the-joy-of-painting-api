drop table if exists EpisodeDates;
drop table if exists episodedates;
create table episodedates(
    IDRow Int Primary Key,
    Title Text,
    datePublish Text,
    notes Text
);

COPY EpisodeDates(IDRow, Title, datePublish, notes) 
FROM '/home/codeelisa/atlas-the-joy-of-painting-api/EpisodeDates.csv' 
DELIMITER ','
CSV
HEADER;
