drop table if exists ColorsUsed;

create table ColorsUsed(
    IDRow integer,
    painting_index text,
    img_src text,
    Title text,
    season text,
    episode text,
    num_colors text,
    youtube_src text,
    colors text,
    color_hex text,
    Black_Gesso text,
    Bright_Red text,
    Burnt_Umber text,
    Cadmium_Yellow text,
    Dark_Sienna text,
    Indian_Red text,
    Indian_Yellow text,
    Liquid_Black text,
    Liquid_Clear text,
    Midnight_Black text,
    Phthalo_Blue text,
    Phthalo_Green text,
    Prussian_Blue text,
    Sap_Green text,
    Titanium_White text,
    Van_Dyke_Brown text,
    Yellow_Ochre text,
    Alizarin_Crimson text
);

COPY ColorsUsed(IDRow,painting_index,img_src,Title,season,episode,num_colors,youtube_src,colors,color_hex,Black_Gesso,Bright_Red,Burnt_Umber,Cadmium_Yellow,Dark_Sienna,Indian_Red,Indian_Yellow,Liquid_Black,Liquid_Clear,Midnight_Black,Phthalo_Blue,Phthalo_Green,Prussian_Blue,Sap_Green,Titanium_White,Van_Dyke_Brown,Yellow_Ochre,Alizarin_Crimson) 
FROM '/home/codeelisa/atlas-the-joy-of-painting-api/ColorsUsed.csv' 
DELIMITER ','
CSV
HEADER;
