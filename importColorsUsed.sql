ALTER TABLE subjectmatter DROP CONSTRAINT fk_subject_id;
ALTER TABLE episodedates DROP CONSTRAINT fk_episode_id;
drop table if exists colorsused;

create table colorsused(
    IDRow Int Primary Key,
    painting_index Int,
    img_src Text,
    Title Text,
    season Int,
    episode Int,
    num_colors Int,
    youtube_src Text,
    colors TEXT[],
    color_hex TEXT[],
    Black_Gesso Boolean,
    Bright_Red Boolean,
    Burnt_Umber Boolean,
    Cadmium_Yellow Boolean,
    Dark_Sienna Boolean,
    Indian_Red Boolean,
    Indian_Yellow Boolean,
    Liquid_Black Boolean,
    Liquid_Clear Boolean,
    Midnight_Black Boolean,
    Phthalo_Blue Boolean,
    Phthalo_Green Boolean,
    Prussian_Blue Boolean,
    Sap_Green Boolean,
    Titanium_White Boolean,
    Van_Dyke_Brown Boolean,
    Yellow_Ochre Boolean,
    Alizarin_Crimson Boolean
);

COPY ColorsUsed(IDRow,painting_index,img_src,Title,season,episode,num_colors,youtube_src,colors,color_hex,Black_Gesso,Bright_Red,Burnt_Umber,Cadmium_Yellow,Dark_Sienna,Indian_Red,Indian_Yellow,Liquid_Black,Liquid_Clear,Midnight_Black,Phthalo_Blue,Phthalo_Green,Prussian_Blue,Sap_Green,Titanium_White,Van_Dyke_Brown,Yellow_Ochre,Alizarin_Crimson) 
FROM '/home/codeelisa/atlas-the-joy-of-painting-api/ColorsUsed.csv' 
DELIMITER ','
CSV
HEADER;
