--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Name: colorsused; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colorsused (
    idrow integer NOT NULL,
    painting_index integer,
    img_src text,
    title text,
    season integer,
    episode integer,
    num_colors integer,
    youtube_src text,
    colors text[],
    color_hex text[],
    black_gesso boolean,
    bright_red boolean,
    burnt_umber boolean,
    cadmium_yellow boolean,
    dark_sienna boolean,
    indian_red boolean,
    indian_yellow boolean,
    liquid_black boolean,
    liquid_clear boolean,
    midnight_black boolean,
    phthalo_blue boolean,
    phthalo_green boolean,
    prussian_blue boolean,
    sap_green boolean,
    titanium_white boolean,
    van_dyke_brown boolean,
    yellow_ochre boolean,
    alizarin_crimson boolean
);


ALTER TABLE public.colorsused OWNER TO postgres;

--
-- Name: episodedates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.episodedates (
    idrow integer NOT NULL,
    title text,
    datepublish text,
    notes text
);


ALTER TABLE public.episodedates OWNER TO postgres;

--
-- Name: subjectmatter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjectmatter (
    idrow integer NOT NULL,
    episode text,
    title text,
    apple_frame boolean,
    aurora_borealis boolean,
    barn boolean,
    beach boolean,
    boat boolean,
    bridge boolean,
    building boolean,
    bushes boolean,
    cabin boolean,
    cactus boolean,
    circle_frame boolean,
    cirrus boolean,
    cliff boolean,
    clouds boolean,
    conifer boolean,
    cumulus boolean,
    deciduous boolean,
    diane_andre boolean,
    dock boolean,
    double_oval_frame boolean,
    farm boolean,
    fence boolean,
    fire boolean,
    florida_frame boolean,
    flowers boolean,
    fog boolean,
    framed boolean,
    grass boolean,
    guest boolean,
    half_circle_frame boolean,
    half_oval_frame boolean,
    hills boolean,
    lake boolean,
    lakes boolean,
    lighthouse boolean,
    mill boolean,
    moon boolean,
    mountain boolean,
    mountains boolean,
    night boolean,
    ocean boolean,
    oval_frame boolean,
    palm_trees boolean,
    path boolean,
    person boolean,
    portrait boolean,
    rectangle_3d_frame boolean,
    rectangular_frame boolean,
    river boolean,
    rocks boolean,
    seashell_frame boolean,
    snow boolean,
    snowy_mountain boolean,
    split_frame boolean,
    steve_ross boolean,
    structure boolean,
    sun boolean,
    tomb_frame boolean,
    tree boolean,
    trees boolean,
    triple_frame boolean,
    waterfall boolean,
    waves boolean,
    windmill boolean,
    window_frame boolean,
    winter boolean,
    wood_framed boolean
);


ALTER TABLE public.subjectmatter OWNER TO postgres;

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
\.


--
-- Data for Name: colorsused; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colorsused (idrow, painting_index, img_src, title, season, episode, num_colors, youtube_src, colors, color_hex, black_gesso, bright_red, burnt_umber, cadmium_yellow, dark_sienna, indian_red, indian_yellow, liquid_black, liquid_clear, midnight_black, phthalo_blue, phthalo_green, prussian_blue, sap_green, titanium_white, van_dyke_brown, yellow_ochre, alizarin_crimson) FROM stdin;
1	282	https://www.twoinchbrush.com/images/painting282.png	A Walk in the Woods	1	1	8	https://www.youtube.com/embed/oh5p5f5_-7A	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
2	283	https://www.twoinchbrush.com/images/painting283.png	Mt. McKinley	1	2	8	https://www.youtube.com/embed/RInDWhYceLU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
3	284	https://www.twoinchbrush.com/images/painting284.png	Ebony Sunset	1	3	9	https://www.youtube.com/embed/UOziR7PoVco	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	t	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
4	285	https://www.twoinchbrush.com/images/painting285.png	Winter Mist	1	4	3	https://www.youtube.com/embed/0pwoixRikn4	{"'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#021E44','#FFFFFF','#221B15'}	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f
5	286	https://www.twoinchbrush.com/images/painting286.png	Quiet Stream	1	5	8	https://www.youtube.com/embed/DFSIQNjKRfk	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
6	287	https://www.twoinchbrush.com/images/painting287.png	Winter Moon	1	6	4	https://www.youtube.com/embed/loAzRUzx1wI	{"'Black Gesso'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#000000','#021E44','#FFFFFF','#221B15'}	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f
7	288	https://www.twoinchbrush.com/images/painting288.png	Autumn Mountain	1	7	8	https://www.youtube.com/embed/sDdpc8uisD0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
8	289	https://www.twoinchbrush.com/images/painting289.png	Peaceful Valley	1	8	8	https://www.youtube.com/embed/kQlFwTOkYzg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
9	290	https://www.twoinchbrush.com/images/painting290.png	Seascape	1	9	8	https://www.youtube.com/embed/QxcS7p1VHyQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
10	291	https://www.twoinchbrush.com/images/painting291.png	Mountain Lake	1	10	8	https://www.youtube.com/embed/wDnLlywAL5I	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
11	292	https://www.twoinchbrush.com/images/painting292.png	Winter Glow	1	11	8	https://www.youtube.com/embed/Q03YvknOVe0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
12	293	https://www.twoinchbrush.com/images/painting293.png	Snow Fall	1	12	4	https://www.youtube.com/embed/4E35-8x_y04	{"'Alizarin Crimson'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#021E44','#FFFFFF','#221B15'}	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	t
13	294	https://www.twoinchbrush.com/images/painting294.png	Final Reflections	1	13	8	https://www.youtube.com/embed/IEQWfszfRlA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	f	f	f	f	t	t	t	t	t	f	t
14	269	https://www.twoinchbrush.com/images/painting269.png	Meadow Lake	2	1	12	https://www.youtube.com/embed/GARWowi0QXI	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
15	270	https://www.twoinchbrush.com/images/painting270.png	Winter Sun	2	2	12	https://www.youtube.com/embed/VPfYRj4DDco	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
43	246	https://www.twoinchbrush.com/images/painting246.png	Winter Sawscape	4	4	7	https://www.youtube.com/embed/lmKAwKrONmE	{"'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Midnight Black'","'Prussian Blue'","'Titanium White'"}	{'#000000','#DB0000','#8A3324','#FFEC00','#000000','#021E44','#FFFFFF'}	t	t	t	t	f	f	f	f	f	t	f	f	t	f	t	f	f	f
16	271	https://www.twoinchbrush.com/images/painting271.png	Ebony Sea	2	3	13	https://www.youtube.com/embed/aOJsKNzO3i8	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
17	272	https://www.twoinchbrush.com/images/painting272.png	Shades of Grey	2	4	3	https://www.youtube.com/embed/I-ousb8-SD0	{"'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#021E44','#FFFFFF','#221B15'}	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f
18	273	https://www.twoinchbrush.com/images/painting273.png	Autumn Splendor	2	5	11	https://www.youtube.com/embed/rTTWw5Gd79I	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	f	f	f	f	t	t	t	t	t	t	t	t
19	274	https://www.twoinchbrush.com/images/painting274.png	Black River	2	6	11	https://www.youtube.com/embed/6O4sfJd8G_M	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	f	f	f	f	t	t	t	t	t	t	t	t
20	275	https://www.twoinchbrush.com/images/painting275.png	Brown Mountain	2	7	11	https://www.youtube.com/embed/Vx6v47gHBWM	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	f	f	f	f	t	t	t	t	t	t	t	t
21	276	https://www.twoinchbrush.com/images/painting276.png	Reflections	2	8	12	https://www.youtube.com/embed/0FYfo94qefg	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
22	277	https://www.twoinchbrush.com/images/painting277.png	Black and White Seascape	2	9	12	https://www.youtube.com/embed/PMDyPrE0puo	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
23	278	https://www.twoinchbrush.com/images/painting278.png	Lazy River	2	10	12	https://www.youtube.com/embed/BW2wKKFvH1g	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
24	279	https://www.twoinchbrush.com/images/painting279.png	Black Waterfall	2	11	12	https://www.youtube.com/embed/GzSqjyQUPZQ	{"'Alizarin Crimson'","'Black Gesso'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
25	280	https://www.twoinchbrush.com/images/painting280.png	Mountain Waterfall	2	12	12	https://www.youtube.com/embed/9jIt95PCFAA	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
26	281	https://www.twoinchbrush.com/images/painting281.png	Final Grace	2	13	12	https://www.youtube.com/embed/miJ19Kz_i3Y	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
27	256	https://www.twoinchbrush.com/images/painting256.png	Mountain Retreat	3	1	12	https://www.youtube.com/embed/hoimk4s8JoQ	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
28	257	https://www.twoinchbrush.com/images/painting257.png	Blue Moon	3	2	12	https://www.youtube.com/embed/loit61vLUMc	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
29	258	https://www.twoinchbrush.com/images/painting258.png	Bubbling Stream	3	3	12	https://www.youtube.com/embed/fuFalEXVN0k	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
30	259	https://www.twoinchbrush.com/images/painting259.png	Winter Night	3	4	7	https://www.youtube.com/embed/8ysFkNYwhAE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Liquid Black'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#000000','#102E3C','#FFFFFF','#221B15'}	f	t	f	t	f	f	f	t	f	f	f	t	f	f	t	t	f	t
31	260	https://www.twoinchbrush.com/images/painting260.png	Distant Hills	3	5	7	https://www.youtube.com/embed/8Zge88tVwjE	{"'Alizarin Crimson'","'Burnt Umber'","'Cadmium Yellow'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#8A3324','#FFEC00','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	t	t	t
32	261	https://www.twoinchbrush.com/images/painting261.png	Covered Bridge	3	6	10	https://www.youtube.com/embed/OHSm8kLE7js	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	f	f	f	t	f	f	t	t	t	t	t	t
33	262	https://www.twoinchbrush.com/images/painting262.png	Quiet Inlet	3	7	10	https://www.youtube.com/embed/9N5IWKzYIyU	{"'Alizarin Crimson'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#8A3324','#FFEC00','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	t	t	f	f	f	f	f	f	t	t	t	t	t	t	t	t
34	263	https://www.twoinchbrush.com/images/painting263.png	Night Light	3	8	9	https://www.youtube.com/embed/l141Y0x8om0	{"'Alizarin Crimson'","'Black Gesso'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#8A3324','#FFEC00','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	t	t	f	f	f	f	f	f	f	t	f	t	t	t	t	t
35	264	https://www.twoinchbrush.com/images/painting264.png	The Old Mill	3	9	10	https://www.youtube.com/embed/OFKFUJ9eDNs	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	f	f	f	f	t	f	t	t	t	t	t	t
36	265	https://www.twoinchbrush.com/images/painting265.png	Campfire	3	10	8	https://www.youtube.com/embed/L5bXkI0-pEg	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#FFB800','#221B15','#C79B00'}	t	t	t	t	f	f	t	f	f	f	f	f	f	f	f	t	t	t
37	266	https://www.twoinchbrush.com/images/painting266.png	Rustic Barn	3	11	12	https://www.youtube.com/embed/WJJwrnFhUUg	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
38	267	https://www.twoinchbrush.com/images/painting267.png	Hidden Lake	3	12	10	https://www.youtube.com/embed/P_DaqkFbnac	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	f	f	f	f	t	f	t	t	t	t	t	t
39	268	https://www.twoinchbrush.com/images/painting268.png	Peaceful Waters	3	13	9	https://www.youtube.com/embed/Z0vtjRLqXcQ	{"'Alizarin Crimson'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	f	f	f	f	f	f	t	t	t	t	t	t	t	t
40	243	https://www.twoinchbrush.com/images/painting243.png	Purple Splendor	4	1	4	https://www.youtube.com/embed/hP4GfMgsNVE	{"'Alizarin Crimson'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#0C0040','#FFFFFF','#221B15'}	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t
41	244	https://www.twoinchbrush.com/images/painting244.png	Tranquil Valley	4	2	10	https://www.youtube.com/embed/PbchoOWWCZs	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	f	t	t	t	t	t
42	245	https://www.twoinchbrush.com/images/painting245.png	Majestic Mountains	4	3	12	https://www.youtube.com/embed/NcVeRlPu_5w	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
44	247	https://www.twoinchbrush.com/images/painting247.png	Evening Seascape	4	5	10	https://www.youtube.com/embed/y5k4GXw_-yI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#0C0040','#102E3C','#021E44','#FFFFFF','#221B15'}	t	t	t	t	f	f	f	f	f	f	t	t	t	f	t	t	f	t
45	248	https://www.twoinchbrush.com/images/painting248.png	Warm Summer Day	4	6	11	https://www.youtube.com/embed/GBN9AIw3Ao4	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	t	t	t	t	t	t
46	249	https://www.twoinchbrush.com/images/painting249.png	Cabin in the Woods	4	7	11	https://www.youtube.com/embed/81QKellPA70	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
47	250	https://www.twoinchbrush.com/images/painting250.png	Wetlands	4	8	10	https://www.youtube.com/embed/2FpVyGanPwM	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	f	f	t	t	t	t	t	t
48	251	https://www.twoinchbrush.com/images/painting251.png	Cool Waters	4	9	12	https://www.youtube.com/embed/tJRvBcqQd5A	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
49	252	https://www.twoinchbrush.com/images/painting252.png	Quiet Woods	4	10	11	https://www.youtube.com/embed/wIZX57I4aDs	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
50	253	https://www.twoinchbrush.com/images/painting253.png	Northwest Majesty	4	11	10	https://www.youtube.com/embed/9DU6bunvD_g	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Liquid Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15'}	f	t	t	t	f	f	t	t	f	f	f	f	t	t	t	t	f	t
51	254	https://www.twoinchbrush.com/images/painting254.png	Autumn Days	4	12	12	https://www.youtube.com/embed/VAdMkf-AAPM	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
52	255	https://www.twoinchbrush.com/images/painting255.png	Mountain Challenge	4	13	10	https://www.youtube.com/embed/o2cjLA_wgIk	{"'Alizarin Crimson'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
53	230	https://www.twoinchbrush.com/images/painting230.png	Mountain Waterfall	5	1	11	https://www.youtube.com/embed/DqhzxdkdQS0	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
54	231	https://www.twoinchbrush.com/images/painting231.png	Twilight Meadow	5	2	12	https://www.youtube.com/embed/6evqNlOO7Bw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
55	232	https://www.twoinchbrush.com/images/painting232.png	Mountain Blossoms	5	3	5	https://www.youtube.com/embed/UVhhStJAJZc	{"'Alizarin Crimson'","'Liquid Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'"}	{'#4E1500','#000000','#0C0040','#102E3C','#FFFFFF'}	f	f	f	f	f	f	f	t	f	f	t	t	f	f	t	f	f	t
56	233	https://www.twoinchbrush.com/images/painting233.png	Winter Stillness	5	4	7	https://www.youtube.com/embed/qg9c1SqdRko	{"'Alizarin Crimson'","'Burnt Umber'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#8A3324','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15'}	f	f	t	f	f	f	t	f	f	f	t	f	f	t	t	t	f	t
136	155	https://www.twoinchbrush.com/images/painting155.png	Oval Barn	11	6	6	https://www.youtube.com/embed/HqBhCibidNM	{"'Bright Red'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#DB0000','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15'}	f	t	f	f	t	f	f	f	f	t	f	f	t	f	t	t	f	f
57	234	https://www.twoinchbrush.com/images/painting234.png	Quiet Pond	5	5	10	https://www.youtube.com/embed/aiK9xOIJtV8	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	f	t	t	t	t	t
58	235	https://www.twoinchbrush.com/images/painting235.png	Ocean Sunrise	5	6	6	https://www.youtube.com/embed/u0Bz6TNUK1Q	{"'Alizarin Crimson'","'Indian Yellow'","'Liquid Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#FFB800','#000000','#021E44','#FFFFFF','#221B15'}	f	f	f	f	f	f	t	t	f	f	f	f	t	f	t	t	f	t
59	236	https://www.twoinchbrush.com/images/painting236.png	Bubbling Brook	5	7	10	https://www.youtube.com/embed/LiKCzeqn-kg	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	f	t	t	t	t	t
60	237	https://www.twoinchbrush.com/images/painting237.png	Arizona Splendor	5	8	9	https://www.youtube.com/embed/spFwCh2616s	{"'Alizarin Crimson'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#8A3324','#FFEC00','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	t	t	f	f	t	f	f	f	t	f	f	t	t	t	t	t
61	238	https://www.twoinchbrush.com/images/painting238.png	Anatomy of a Wave	5	9	6	https://www.youtube.com/embed/DFQlu6eqrBo	{"'Alizarin Crimson'","'Cadmium Yellow'","'Liquid Clear'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'"}	{'#4E1500','#FFEC00','#FFFFFF','#0C0040','#102E3C','#FFFFFF'}	f	f	f	t	f	f	f	f	t	f	t	t	f	f	t	f	f	t
62	239	https://www.twoinchbrush.com/images/painting239.png	The Windmill	5	10	11	https://www.youtube.com/embed/xj8xsTSkbUk	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	t	f	f	f	f	f	f	f	t	t	t	t	t	t	t	t
63	240	https://www.twoinchbrush.com/images/painting240.png	Autumn Glory	5	11	8	https://www.youtube.com/embed/yTzlm_t0RmY	{"'Alizarin Crimson'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#8A3324','#FFEC00','#FFB800','#021E44','#0A3410','#FFFFFF','#221B15'}	f	f	t	t	f	f	t	f	f	f	f	f	t	t	t	t	f	t
64	241	https://www.twoinchbrush.com/images/painting241.png	Indian Girl	5	12	5	https://www.youtube.com/embed/2uXMx8Kjs8I	{"'Bright Red'","'Burnt Umber'","'Indian Yellow'","'Prussian Blue'","'Titanium White'"}	{'#DB0000','#8A3324','#FFB800','#021E44','#FFFFFF'}	f	t	t	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f
65	242	https://www.twoinchbrush.com/images/painting242.png	Meadow Stream	5	13	11	https://www.youtube.com/embed/87MMbN1bQCs	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
66	217	https://www.twoinchbrush.com/images/painting217.png	Blue River	6	1	12	https://www.youtube.com/embed/LygUyAb78oY	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	t	t	f	f	t	f	f	f	t	f	t	t	t	t	t	t
67	218	https://www.twoinchbrush.com/images/painting218.png	Nature's Edge	6	2	11	https://www.youtube.com/embed/Bcqyzo85A1o	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	t	t	t	t	t	t
68	219	https://www.twoinchbrush.com/images/painting219.png	Morning Mist	6	3	10	https://www.youtube.com/embed/wbZreRaE74k	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	f	t	t	t	t	t
69	220	https://www.twoinchbrush.com/images/painting220.png	Whispering Stream	6	4	11	https://www.youtube.com/embed/QglIjlqsUdU	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	f	t	t	t	t	t	t
70	221	https://www.twoinchbrush.com/images/painting221.png	Secluded Forest	6	5	12	https://www.youtube.com/embed/USkduOfwJok	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
71	222	https://www.twoinchbrush.com/images/painting222.png	Snow Trail	6	6	8	https://www.youtube.com/embed/n9EsFFtwZnE	{"'Alizarin Crimson'","'Burnt Umber'","'Cadmium Yellow'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#8A3324','#FFEC00','#0C0040','#102E3C','#FFFFFF','#221B15','#C79B00'}	f	f	t	t	f	f	f	f	f	f	t	t	f	f	t	t	t	t
72	223	https://www.twoinchbrush.com/images/painting223.png	Arctic Beauty	6	7	11	https://www.youtube.com/embed/UQ-RTZCOQn0	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
73	224	https://www.twoinchbrush.com/images/painting224.png	Horizons West	6	8	7	https://www.youtube.com/embed/m6UM-rN2D6s	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#021E44','#FFFFFF','#221B15'}	f	t	f	t	f	f	t	f	f	f	f	f	t	f	t	t	f	t
74	225	https://www.twoinchbrush.com/images/painting225.png	High Chateau	6	9	11	https://www.youtube.com/embed/dafH8ks9Zww	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
75	226	https://www.twoinchbrush.com/images/painting226.png	Country Life	6	10	10	https://www.youtube.com/embed/j8Jf7QVKLgQ	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	f	f	t	t	t	t	t	t
76	227	https://www.twoinchbrush.com/images/painting227.png	Western Expanse	6	11	11	https://www.youtube.com/embed/MTInkV5ODjk	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
77	228	https://www.twoinchbrush.com/images/painting228.png	Marshlands	6	12	11	https://www.youtube.com/embed/Ugiwi8uizpg	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	t	t	f	f	t	f	f	f	t	f	f	t	t	t	t	t
78	229	https://www.twoinchbrush.com/images/painting229.png	Blaze of Color	6	13	11	https://www.youtube.com/embed/se7wOprxRGs	{"'Alizarin Crimson'","'Bright Red'","'Burnt Umber'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#8A3324','#FFEC00','#FFB800','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	t	t	f	f	t	f	f	f	t	t	f	t	t	t	t	t
79	203	https://www.twoinchbrush.com/images/painting203.png	Winter Cabin	7	1	6	https://www.youtube.com/embed/kdlHV6ceI_gw	{"'Bright Red'","'Dark Sienna'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#DB0000','#5F2E1F','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	f	f	f	f	f	f	t	f	t	t	t	f
80	204	https://www.twoinchbrush.com/images/painting204.png	Secluded Lake	7	2	12	https://www.youtube.com/embed/2OxSJcFvpoU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	f	t	t	t	t	t
81	205	https://www.twoinchbrush.com/images/painting205.png	Evergreens at Sunset	7	3	7	https://www.youtube.com/embed/YQPEy3hYGo8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Sap Green'","'Titanium White'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0A3410','#FFFFFF'}	f	t	f	t	f	f	t	f	f	t	f	f	f	t	t	f	f	t
82	206	https://www.twoinchbrush.com/images/painting206.png	Mountain Cabin	7	4	12	https://www.youtube.com/embed/E3IAMvO8GyM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	f	t	t	t	t	t
83	208	https://www.twoinchbrush.com/images/painting208.png	Portrait of Sally	7	5	8	https://www.youtube.com/embed/MHJB0IBnuD4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Phthalo Blue'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#0C0040','#FFFFFF','#C79B00'}	f	t	f	t	t	f	t	f	f	f	t	f	f	f	t	f	t	t
84	209	https://www.twoinchbrush.com/images/painting209.png	Misty Waterfall	7	6	11	https://www.youtube.com/embed/530_cVmexiI	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	t	f	f	t	t	t	f	t	t	t	t	t
85	210	https://www.twoinchbrush.com/images/painting210.png	Barn at Sunset	7	7	10	https://www.youtube.com/embed/WT6n0K2zGnA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
86	211	https://www.twoinchbrush.com/images/painting211.png	Mountain Splendor	7	8	11	https://www.youtube.com/embed/GhOGZMpPUSE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
87	212	https://www.twoinchbrush.com/images/painting212.png	Lake by Mountain	7	9	11	https://www.youtube.com/embed/yAiYirlcq7o	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	f	f	t	f	f	f	t	t	t	t	t	t	t	t
88	213	https://www.twoinchbrush.com/images/painting213.png	Mountain Glory	7	10	11	https://www.youtube.com/embed/0M9pwLHRR2c	{"'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	f
89	214	https://www.twoinchbrush.com/images/painting214.png	Grey Winter	7	11	3	https://www.youtube.com/embed/sS-hNYgDUak	{"'Alizarin Crimson'","'Midnight Black'","'Titanium White'"}	{'#4E1500','#000000','#FFFFFF'}	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t
90	215	https://www.twoinchbrush.com/images/painting215.png	Dock Scene	7	12	9	https://www.youtube.com/embed/4KYxkqlzyqM	{"'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	f	t	t	t	t	f
91	216	https://www.twoinchbrush.com/images/painting216.png	Dark Waterfall	7	13	11	https://www.youtube.com/embed/VqMbL00eZqw	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	f	t	f	f	t	t	t	t	t
92	190	https://www.twoinchbrush.com/images/painting190.png	Misty Rolling Hills	8	1	10	https://www.youtube.com/embed/cC5ozePVKGI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	f	f	t	f	f	t	t	f	f	t	t	t	t	t
93	191	https://www.twoinchbrush.com/images/painting191.png	Lakeside Cabin	8	2	12	https://www.youtube.com/embed/CP6_5cQVZvQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	f	t	t	t	t	t
94	192	https://www.twoinchbrush.com/images/painting192.png	Warm Winter Day	8	3	10	https://www.youtube.com/embed/mUJoNLWQ1yI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
95	193	https://www.twoinchbrush.com/images/painting193.png	Waterside Way	8	4	11	https://www.youtube.com/embed/uj5FE70BcB0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
96	194	https://www.twoinchbrush.com/images/painting194.png	Hunter's Haven	8	5	11	https://www.youtube.com/embed/Da4SPyh1ATM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
97	195	https://www.twoinchbrush.com/images/painting195.png	Bubbling Mountain Brook	8	6	11	https://www.youtube.com/embed/U2_SKgM3f4A	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
299	307	https://www.twoinchbrush.com/images/painting307.png	Winter Bliss	23	13	7	https://www.youtube.com/embed/yInYwy6AsDQ	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
98	196	https://www.twoinchbrush.com/images/painting196.png	Winter Hideaway	8	7	10	https://www.youtube.com/embed/19oz9XHZNzA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
99	197	https://www.twoinchbrush.com/images/painting197.png	Foot of the Mountain	8	8	13	https://www.youtube.com/embed/cIUBUc_ITBc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
100	198	https://www.twoinchbrush.com/images/painting198.png	Majestic Pine	8	9	11	https://www.youtube.com/embed/x5CoQj9zr-c	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
101	199	https://www.twoinchbrush.com/images/painting199.png	Cactus at Sunset	8	10	10	https://www.youtube.com/embed/XBqD3QhKU24	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	f	f	f	f	t	t	t	t
102	200	https://www.twoinchbrush.com/images/painting200.png	Mountain Range	8	11	10	https://www.youtube.com/embed/V_l6olF3yHI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	f	f	t	f	f	f	t	f	t	t	t	t	t	t
103	201	https://www.twoinchbrush.com/images/painting201.png	Lonely Retreat	8	12	10	https://www.youtube.com/embed/qTDQt_PdlYc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
104	202	https://www.twoinchbrush.com/images/painting202.png	Northern Lights	8	13	9	https://www.youtube.com/embed/vgbMONXc9Cs	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#DB0000','#5F2E1F','#000000','#0C0040','#102E3C','#FFFFFF','#221B15'}	t	t	f	f	t	f	f	f	f	t	t	t	f	f	t	t	f	t
105	177	https://www.twoinchbrush.com/images/painting177.png	Winter Evergreens	9	1	9	https://www.youtube.com/embed/O6L5YPt9CeU	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	f	f	f	t	t	f	t	f	t	t	t	t
106	178	https://www.twoinchbrush.com/images/painting178.png	Surf's Up	9	2	11	https://www.youtube.com/embed/ZKxFvyyOBPQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	t	t	t	f	t	f	t	t	t	t
107	179	https://www.twoinchbrush.com/images/painting179.png	Red Sunset	9	3	11	https://www.youtube.com/embed/e5JhYi_G-l0	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
108	180	https://www.twoinchbrush.com/images/painting180.png	Meadow Road	9	4	11	https://www.youtube.com/embed/u5VT_WGM0kg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
109	181	https://www.twoinchbrush.com/images/painting181.png	Winter Oval	9	5	7	https://www.youtube.com/embed/pYWiLm_-sXw	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15'}	f	t	f	f	t	f	f	f	f	t	t	f	f	f	t	t	f	t
110	182	https://www.twoinchbrush.com/images/painting182.png	Secluded Beach	9	6	11	https://www.youtube.com/embed/WGUcw_kFvzU	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	f	f	f	t	t	f	t	f	t	t	t	t
111	183	https://www.twoinchbrush.com/images/painting183.png	Forest Hills	9	7	11	https://www.youtube.com/embed/E3XW_Zp238U	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
112	184	https://www.twoinchbrush.com/images/painting184.png	Little House by the Road	9	8	11	https://www.youtube.com/embed/3CDg_9gL-5M	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
113	185	https://www.twoinchbrush.com/images/painting185.png	Mountain Path	9	9	11	https://www.youtube.com/embed/e0VUprkc1n0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
114	186	https://www.twoinchbrush.com/images/painting186.png	Country Charm	9	10	11	https://www.youtube.com/embed/9wp8NRzCJnw	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
115	187	https://www.twoinchbrush.com/images/painting187.png	Nature's Paradise	9	11	11	https://www.youtube.com/embed/7yU55PUls2c	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
116	188	https://www.twoinchbrush.com/images/painting188.png	Mountain by the Sea	9	12	13	https://www.youtube.com/embed/so--opB-yuQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	t	t	t	t	t	t	t	t	t	t
117	189	https://www.twoinchbrush.com/images/painting189.png	Mountain Hideaway	9	13	12	https://www.youtube.com/embed/q48EWPrbzVs	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
118	163	https://www.twoinchbrush.com/images/painting163.png	Towering Peaks	10	1	13	https://www.youtube.com/embed/1s58rW0_LN4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
119	164	https://www.twoinchbrush.com/images/painting164.png	Cabin at Sunset	10	2	12	https://www.youtube.com/embed/a6Wil3OXNuI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
120	165	https://www.twoinchbrush.com/images/painting165.png	Twin Falls	10	3	12	https://www.youtube.com/embed/cMwkY8ojRik	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
121	166	https://www.twoinchbrush.com/images/painting166.png	Secluded Bridge	10	4	12	https://www.youtube.com/embed/vrAMRxBB5KI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
122	167	https://www.twoinchbrush.com/images/painting167.png	Ocean Breeze	10	5	12	https://www.youtube.com/embed/XZmdzfvXRuw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#102E3C','#021E44','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	f	f	f	t	t	t	t	f	t	t	t	t
123	168	https://www.twoinchbrush.com/images/painting168.png	Autumn Woods	10	6	12	https://www.youtube.com/embed/vKyMU5Z8cDI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
124	170	https://www.twoinchbrush.com/images/painting170.png	Winter Solitude	10	7	7	https://www.youtube.com/embed/ov4YaCQB9co	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15'}	f	t	f	f	t	f	f	f	f	t	t	f	f	f	t	t	f	t
125	171	https://www.twoinchbrush.com/images/painting171.png	Golden Sunset	10	8	12	https://www.youtube.com/embed/CiNDyckERXQ	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
126	172	https://www.twoinchbrush.com/images/painting172.png	Mountain Oval	10	9	11	https://www.youtube.com/embed/Qj6lMtnCt8o	{"'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	f
127	173	https://www.twoinchbrush.com/images/painting173.png	Ocean Sunset	10	10	12	https://www.youtube.com/embed/OJ_xqtvZf3o	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	f	t	f	t	t	t	t
128	174	https://www.twoinchbrush.com/images/painting174.png	Triple View	10	11	12	https://www.youtube.com/embed/zoTeyliLn5o	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
129	175	https://www.twoinchbrush.com/images/painting175.png	Winter Frost	10	12	9	https://www.youtube.com/embed/8satX-hLkuI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	t	f	t	t	f	f	f	f	t	t	f	t	f	t	t	f	t
130	176	https://www.twoinchbrush.com/images/painting176.png	Lakeside Cabin	10	13	12	https://www.youtube.com/embed/1l_TsfCIb_I	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
131	150	https://www.twoinchbrush.com/images/painting150.png	Mountain Stream	11	1	12	https://www.youtube.com/embed/xdFCj6BzQio	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
132	151	https://www.twoinchbrush.com/images/painting151.png	Country Cabin	11	2	7	https://www.youtube.com/embed/Dkww2nHpuZw	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15'}	f	t	f	f	t	f	f	f	f	t	f	f	t	f	t	t	f	t
133	152	https://www.twoinchbrush.com/images/painting152.png	Daisy Delight	11	3	10	https://www.youtube.com/embed/HuHC1RqtvDA	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	f	f	t	t	t	f	f	t	t	t	t	t
134	153	https://www.twoinchbrush.com/images/painting153.png	Hidden Stream	11	4	12	https://www.youtube.com/embed/JGzTg8fCj4w	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
135	154	https://www.twoinchbrush.com/images/painting154.png	Towering Glacier	11	5	12	https://www.youtube.com/embed/67vdGbA3Xkg	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
137	156	https://www.twoinchbrush.com/images/painting156.png	Lakeside Path	11	7	12	https://www.youtube.com/embed/1yjGoJokbZg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
138	157	https://www.twoinchbrush.com/images/painting157.png	Sunset Oval	11	8	11	https://www.youtube.com/embed/9xG6IzcGotI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
139	158	https://www.twoinchbrush.com/images/painting158.png	Winter Barn	11	9	6	https://www.youtube.com/embed/_xkn0ceDreo	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	f	f	t	t	f	t
140	159	https://www.twoinchbrush.com/images/painting159.png	Sunset over the Waves	11	10	10	https://www.youtube.com/embed/c4b_B2F1eZg	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15'}	t	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	f	t
141	160	https://www.twoinchbrush.com/images/painting160.png	Golden Glow	11	11	8	https://www.youtube.com/embed/aA8RhtaWACA	{"'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#021E44','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	t	f	f	f	t	f	t	t	t	f
142	161	https://www.twoinchbrush.com/images/painting161.png	Roadside Barn	11	12	11	https://www.youtube.com/embed/vJpKhiXvXdA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
143	162	https://www.twoinchbrush.com/images/painting162.png	Happy Accident	11	13	11	https://www.youtube.com/embed/Fw6odlNp7_8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
144	137	https://www.twoinchbrush.com/images/painting137.png	Golden Knoll	12	1	7	https://www.youtube.com/embed/-O0Bs65eN5w	{"'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#FFEC00','#5F2E1F','#FFB800','#000000','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	f	f	f	f	t	t	t	f
145	138	https://www.twoinchbrush.com/images/painting138.png	Mountain Reflections	12	2	12	https://www.youtube.com/embed/rzYpa4XGSnA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
146	139	https://www.twoinchbrush.com/images/painting139.png	Secluded Mountain	12	3	13	https://www.youtube.com/embed/3PZabdohLso	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
147	140	https://www.twoinchbrush.com/images/painting140.png	Bright Autumn Trees	12	4	13	https://www.youtube.com/embed/aR-C3h5zURM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Midnight Black'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#000000','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	t	f	t	t	t	t	t	t	t
148	141	https://www.twoinchbrush.com/images/painting141.png	Black Seascape	12	5	9	https://www.youtube.com/embed/P_aCan4cBwc	{"'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'"}	{'#000000','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#102E3C','#FFFFFF','#221B15'}	t	t	f	t	t	f	f	f	f	t	t	t	f	f	t	t	f	f
149	142	https://www.twoinchbrush.com/images/painting142.png	Steep Mountains	12	6	12	https://www.youtube.com/embed/fRK8_ioYWw4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
150	143	https://www.twoinchbrush.com/images/painting143.png	Quiet Mountains River	12	7	12	https://www.youtube.com/embed/Leiw-FtADZc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
151	144	https://www.twoinchbrush.com/images/painting144.png	Evening Waterfall	12	8	11	https://www.youtube.com/embed/PutvF_P4588	{"'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	f
152	145	https://www.twoinchbrush.com/images/painting145.png	Tropical Seascape	12	9	12	https://www.youtube.com/embed/RrBsbqO9aqI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	f	t	f	t	t	t	t
153	146	https://www.twoinchbrush.com/images/painting146.png	Mountain at Sunset	12	10	13	https://www.youtube.com/embed/HCsCatvigtw	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
154	147	https://www.twoinchbrush.com/images/painting147.png	Soft Mountain Glow	12	11	12	https://www.youtube.com/embed/gOGJYHWjXgE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
155	148	https://www.twoinchbrush.com/images/painting148.png	Mountain in an Oval	12	12	11	https://www.youtube.com/embed/1jRPshs27H8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
156	149	https://www.twoinchbrush.com/images/painting149.png	Winter Mountain	12	13	7	https://www.youtube.com/embed/46vI20697HI	{"'Alizarin Crimson'","'Bright Red'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	t	f	f	f	f	f	f	f	t	t	f	t	f	t	t	f	t
157	124	https://www.twoinchbrush.com/images/painting124.png	Rolling Hills	13	1	12	https://www.youtube.com/embed/H4GyGrT7lEQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
158	125	https://www.twoinchbrush.com/images/painting125.png	Frozen Solitude	13	2	5	https://www.youtube.com/embed/kNZssD9zWlw	{"'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#5F2E1F','#000000','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	f	f	t	f	t	t	f	f
159	126	https://www.twoinchbrush.com/images/painting126.png	Meadow Brook	13	3	13	https://www.youtube.com/embed/06W8GsWj2Yg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
160	127	https://www.twoinchbrush.com/images/painting127.png	Evening at Sunset	13	4	12	https://www.youtube.com/embed/7ZUQTXuDPaI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
161	128	https://www.twoinchbrush.com/images/painting128.png	Mountain View	13	5	11	https://www.youtube.com/embed/dJfnAyDLwPY	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
162	129	https://www.twoinchbrush.com/images/painting129.png	Hidden Creek	13	6	10	https://www.youtube.com/embed/KmoRz01bm0Y	{"'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#000000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	f
163	130	https://www.twoinchbrush.com/images/painting130.png	Peaceful Haven	13	7	13	https://www.youtube.com/embed/j20pZ96E_CE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
164	131	https://www.twoinchbrush.com/images/painting131.png	Mountain Exhibition	13	8	10	https://www.youtube.com/embed/bgI3_1quJ18	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
165	132	https://www.twoinchbrush.com/images/painting132.png	Emerald Waters	13	9	9	https://www.youtube.com/embed/lLunPQBzW6g	{"'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#000000','#FFEC00','#5F2E1F','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	f	f	f	t	f	f	t	t	t	t	t	f
166	133	https://www.twoinchbrush.com/images/painting133.png	Mountain Summit	13	10	12	https://www.youtube.com/embed/kasGRkfkiPM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
167	134	https://www.twoinchbrush.com/images/painting134.png	Cabin Hideaway	13	11	10	https://www.youtube.com/embed/NjTlW2NL1Lo	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	t	f	t	t	t	t
168	135	https://www.twoinchbrush.com/images/painting135.png	Oval Essence	13	12	8	https://www.youtube.com/embed/q7WXF_BSEXw	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#FFEC00','#5F2E1F','#000000','#0C0040','#102E3C','#FFFFFF','#221B15'}	f	f	f	t	t	f	f	f	f	t	t	t	f	f	t	t	f	t
169	136	https://www.twoinchbrush.com/images/painting136.png	Lost Lake	13	13	12	https://www.youtube.com/embed/9-ATP8xyDM0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
170	111	https://www.twoinchbrush.com/images/painting111.png	Distant Mountains	14	1	13	https://www.youtube.com/embed/GpA9UM7QGag	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
171	112	https://www.twoinchbrush.com/images/painting112.png	Meadow Brook Surprise	14	2	12	https://www.youtube.com/embed/Ov5oIHTAa10	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
172	113	https://www.twoinchbrush.com/images/painting113.png	Mountain Moonlight Oval	14	3	12	https://www.youtube.com/embed/CigXQtT6BPM	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
173	114	https://www.twoinchbrush.com/images/painting114.png	Snowy Solitude	14	4	7	https://www.youtube.com/embed/1ZriQGhSFTM	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	f	f	f	t	f	f	f	f	t	t	f	f	f	t	t	t	t
174	115	https://www.twoinchbrush.com/images/painting115.png	Mountain River	14	5	13	https://www.youtube.com/embed/CnMLKAGi0yM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
175	116	https://www.twoinchbrush.com/images/painting116.png	Graceful Mountains	14	6	12	https://www.youtube.com/embed/0uVe8T-vVVg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
176	117	https://www.twoinchbrush.com/images/painting117.png	Windy Waves	14	7	14	https://www.youtube.com/embed/y6GVVjG4HMg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	t	t	t	t	t	t	t	t	t
177	118	https://www.twoinchbrush.com/images/painting118.png	On a Clear Day	14	8	11	https://www.youtube.com/embed/e63Cgln6Yag	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	f	t	t	t	t
178	119	https://www.twoinchbrush.com/images/painting119.png	Riverside Escape Oval	14	9	13	https://www.youtube.com/embed/d83REwSGfGo	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
179	120	https://www.twoinchbrush.com/images/painting120.png	Surprising Falls	14	10	13	https://www.youtube.com/embed/QbclL1ca7_s	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
180	121	https://www.twoinchbrush.com/images/painting121.png	Shadow Pond	14	11	13	https://www.youtube.com/embed/BQWJ3kqonpA	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
181	122	https://www.twoinchbrush.com/images/painting122.png	Misty Forest Oval	14	12	12	https://www.youtube.com/embed/ddU9vQvSpw8	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
182	123	https://www.twoinchbrush.com/images/painting123.png	Natural Wonder	14	13	11	https://www.youtube.com/embed/knOutsaiKfU	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
183	98	https://www.twoinchbrush.com/images/painting98.png	Splendor of Winter	15	1	10	https://www.youtube.com/embed/oJvk7gPDHiE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	t	f	t	t	t	t
184	99	https://www.twoinchbrush.com/images/painting99.png	Colors of Nature	15	2	12	https://www.youtube.com/embed/Me9Ietooq4w	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
185	100	https://www.twoinchbrush.com/images/painting100.png	Grandpa's Barn	15	3	11	https://www.youtube.com/embed/IPPU49PyfEA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
186	101	https://www.twoinchbrush.com/images/painting101.png	Peaceful Reflections	15	4	13	https://www.youtube.com/embed/gYuH4Ilqdhs	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
187	102	https://www.twoinchbrush.com/images/painting102.png	Hidden Winter Moon Oval	15	5	8	https://www.youtube.com/embed/yxAMOdl6RJE	{"'Alizarin Crimson'","'Black Gesso'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	t	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
188	103	https://www.twoinchbrush.com/images/painting103.png	Waves of Wonder	15	6	12	https://www.youtube.com/embed/tayQX_ng-Nc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	t	t	t	t	t	f	t	t	t	t
189	104	https://www.twoinchbrush.com/images/painting104.png	Cabin by the Pond	15	7	12	https://www.youtube.com/embed/TyOO6WeP2AY	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
190	105	https://www.twoinchbrush.com/images/painting105.png	Fall Stream	15	8	12	https://www.youtube.com/embed/ZY0ofhdV_L0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
191	106	https://www.twoinchbrush.com/images/painting106.png	Christmas Eve Snow	15	9	9	https://www.youtube.com/embed/cVqFG2pxK2A	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	t	f	f	t	t	f	f	f	f	t	t	f	t	f	t	t	f	t
192	107	https://www.twoinchbrush.com/images/painting107.png	Forest Down Oval	15	10	12	https://www.youtube.com/embed/COsJUfPN2dA	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
193	108	https://www.twoinchbrush.com/images/painting108.png	Pathway to Autumn	15	11	12	https://www.youtube.com/embed/Hg5RKc6xiL4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
194	109	https://www.twoinchbrush.com/images/painting109.png	Deep Forest Lake	15	12	13	https://www.youtube.com/embed/2bjFmSQjQrw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
195	110	https://www.twoinchbrush.com/images/painting110.png	Peaks of Majesty	15	13	11	https://www.youtube.com/embed/lTb8DN6G6dE	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
196	84	https://www.twoinchbrush.com/images/painting84.png	Two Seasons	16	1	13	https://www.youtube.com/embed/jwVz0uTLH1I	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
197	85	https://www.twoinchbrush.com/images/painting85.png	Nestled Cabin	16	2	12	https://www.youtube.com/embed/l_jN9KN257M	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
198	86	https://www.twoinchbrush.com/images/painting86.png	Wintertime Discovery	16	3	11	https://www.youtube.com/embed/uZyZW3tkCE0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	f	t	t	t	t
199	87	https://www.twoinchbrush.com/images/painting87.png	Mountain Mirage Wood Shape	16	4	12	https://www.youtube.com/embed/jfCsew_mz7A	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
200	88	https://www.twoinchbrush.com/images/painting88.png	Double Oval Fantasy	16	5	13	https://www.youtube.com/embed/4jAsLpJzjHM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
201	89	https://www.twoinchbrush.com/images/painting89.png	Contemplative Lady	16	6	1	https://www.youtube.com/embed/gnp6WE7Ql-s	{"'Van Dyke Brown'"}	{'#221B15'}	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f
202	90	https://www.twoinchbrush.com/images/painting90.png	Deep Woods	16	7	10	https://www.youtube.com/embed/rE5ZVs_YJfE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	f	t	t	t	t	t
203	91	https://www.twoinchbrush.com/images/painting91.png	High Tide	16	8	12	https://www.youtube.com/embed/_IREQ4SIcX8	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
204	93	https://www.twoinchbrush.com/images/painting93.png	Barn in Snow Oval	16	9	7	https://www.youtube.com/embed/wJmi7-G9r-w	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	f	f	f	t	f	f	f	f	t	t	f	f	f	t	t	t	t
205	94	https://www.twoinchbrush.com/images/painting94.png	That Time of Year	16	10	9	https://www.youtube.com/embed/q5moLoqOkP0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15'}	f	t	f	t	f	f	t	f	f	t	t	f	f	t	t	t	f	t
206	95	https://www.twoinchbrush.com/images/painting95.png	Waterfall Wonder	16	11	11	https://www.youtube.com/embed/AGhXEPfp-W4	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
207	96	https://www.twoinchbrush.com/images/painting96.png	Mighty Mountain Lake	16	12	11	https://www.youtube.com/embed/4vXB2R8ybDE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
208	97	https://www.twoinchbrush.com/images/painting97.png	Wooded Stream Oval	16	13	12	https://www.youtube.com/embed/-XA2h17y3HU	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
209	71	https://www.twoinchbrush.com/images/painting71.png	Golden Mist Oval	17	1	9	https://www.youtube.com/embed/lhpfaW0k6uM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	f	f	t	t	t	t
210	72	https://www.twoinchbrush.com/images/painting72.png	The Old Home Place	17	2	11	https://www.youtube.com/embed/EVQcDEiJh2o	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
211	73	https://www.twoinchbrush.com/images/painting73.png	Soothing Vista	17	3	13	https://www.youtube.com/embed/NqfRLiv0SZ0	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
212	74	https://www.twoinchbrush.com/images/painting74.png	Stormy Seas	17	4	9	https://www.youtube.com/embed/LE6agCR5iBw	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	f	f	t	t	t	t
338	346	https://www.twoinchbrush.com/images/painting346.png	Evening at the Falls	26	13	7	https://www.youtube.com/embed/RulXVcpgpqw	{"'Black Gesso'","'Cadmium Yellow'","'Liquid Clear'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'"}	{'#000000','#FFEC00','#FFFFFF','#000000','#021E44','#0A3410','#FFFFFF'}	t	f	f	t	f	f	f	f	t	t	f	f	t	t	t	f	f	f
213	75	https://www.twoinchbrush.com/images/painting75.png	Country Time	17	5	13	https://www.youtube.com/embed/e_bt9rQoGN0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
214	76	https://www.twoinchbrush.com/images/painting76.png	A Mild Winter's Day	17	6	10	https://www.youtube.com/embed/BbYO579MmhA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
215	77	https://www.twoinchbrush.com/images/painting77.png	Spectacular Waterfall	17	7	15	https://www.youtube.com/embed/nK-HebXL2uw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	t	t	t	t	t	t	t
216	78	https://www.twoinchbrush.com/images/painting78.png	View from the Park	17	8	13	https://www.youtube.com/embed/Q4n90jsOUtY	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
217	79	https://www.twoinchbrush.com/images/painting79.png	Lake View	17	9	12	https://www.youtube.com/embed/07acfzBaoa0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
218	80	https://www.twoinchbrush.com/images/painting80.png	Old Country Mill	17	10	11	https://www.youtube.com/embed/n8HlFCQACYA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
219	81	https://www.twoinchbrush.com/images/painting81.png	Morning Walk	17	11	12	https://www.youtube.com/embed/pSvgNkQdR2Y	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	f	f	f	t	t	f	t	t	t	t	t	t
220	82	https://www.twoinchbrush.com/images/painting82.png	Nature's Splendor	17	12	13	https://www.youtube.com/embed/uCAtI2IwEwk	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
221	83	https://www.twoinchbrush.com/images/painting83.png	Mountain Beauty	17	13	11	https://www.youtube.com/embed/8P-YeoTmVrw	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
222	58	https://www.twoinchbrush.com/images/painting58.png	Half-Oval Vignette	18	1	12	https://www.youtube.com/embed/uY3fIry2tOE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
223	59	https://www.twoinchbrush.com/images/painting59.png	Absolutely Autumn	18	2	11	https://www.youtube.com/embed/PGPVpil2UmE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
224	60	https://www.twoinchbrush.com/images/painting60.png	Mountain Seclusion	18	3	10	https://www.youtube.com/embed/EBZKuVbRY54	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	t	f	f	t	t	f	f	f	t	t	t	f	t	f	t	t	f	t
225	61	https://www.twoinchbrush.com/images/painting61.png	Crimson Oval	18	4	12	https://www.youtube.com/embed/R7Y3izMFPbM	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
226	62	https://www.twoinchbrush.com/images/painting62.png	Autumn Exhibition	18	5	11	https://www.youtube.com/embed/6afHY2d9Lv8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
227	63	https://www.twoinchbrush.com/images/painting63.png	Majestic Peaks	18	6	13	https://www.youtube.com/embed/lilbzLCNnDo	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
228	64	https://www.twoinchbrush.com/images/painting64.png	Golden Morning Mist	18	7	12	https://www.youtube.com/embed/rCHXqj4DHlM	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
229	65	https://www.twoinchbrush.com/images/painting65.png	Winter Lace	18	8	8	https://www.youtube.com/embed/WJF_qoQRPck	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#DB0000','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	t	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
230	66	https://www.twoinchbrush.com/images/painting66.png	Seascape Fantasy	18	9	11	https://www.youtube.com/embed/sBBBilrDuSw	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
231	67	https://www.twoinchbrush.com/images/painting67.png	Double Oval Stream	18	10	13	https://www.youtube.com/embed/rRjnHdr9DmU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	t	t	f	t	t	t	t	t	t
232	68	https://www.twoinchbrush.com/images/painting68.png	Enchanted Forest	18	11	12	https://www.youtube.com/embed/ikR7UT9mVBw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
233	69	https://www.twoinchbrush.com/images/painting69.png	Southwest Serenity	18	12	10	https://www.youtube.com/embed/EVfPPJ5FUmA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	f	t	t	t	t	t
234	70	https://www.twoinchbrush.com/images/painting70.png	Rippling Waters	18	13	12	https://www.youtube.com/embed/XvnJBynSiT0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	t	t	f	f	t	t	t	t	t
235	44	https://www.twoinchbrush.com/images/painting44.png	Snowfall Magic	19	1	10	https://www.youtube.com/embed/1enWTsRi16o	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
236	45	https://www.twoinchbrush.com/images/painting45.png	Quiet Mountain Lake	19	2	14	https://www.youtube.com/embed/2gq2V6dCt2I	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
237	46	https://www.twoinchbrush.com/images/painting46.png	Final Embers of Sunlight	19	3	12	https://www.youtube.com/embed/IeFbdk36MUU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
238	47	https://www.twoinchbrush.com/images/painting47.png	Snowy Morn	19	4	7	https://www.youtube.com/embed/iB1TDWlo0kk	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15','#C79B00'}	f	f	f	f	t	f	f	f	f	t	f	f	t	f	t	t	t	t
239	48	https://www.twoinchbrush.com/images/painting48.png	Camper's Haven	19	5	11	https://www.youtube.com/embed/C34WAUgkAT0	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
240	49	https://www.twoinchbrush.com/images/painting49.png	Waterfall in the Woods	19	6	14	https://www.youtube.com/embed/uBRKVa7sy1Q	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
241	50	https://www.twoinchbrush.com/images/painting50.png	Covered Bridge Oval	19	7	10	https://www.youtube.com/embed/F4iPbH1OHsQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	t	f	t	t	t	t
242	51	https://www.twoinchbrush.com/images/painting51.png	Scenic Seclusion	19	8	13	https://www.youtube.com/embed/d50HkqB9JEM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
243	52	https://www.twoinchbrush.com/images/painting52.png	Ebb Tide	19	9	10	https://www.youtube.com/embed/mFOna_LN7Ys	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	t	t	t	f	f	f	t	t	t	t
244	53	https://www.twoinchbrush.com/images/painting53.png	After the Rain	19	10	12	https://www.youtube.com/embed/Wj-3ct7RvAI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
245	54	https://www.twoinchbrush.com/images/painting54.png	Winter Elegance	19	11	9	https://www.youtube.com/embed/JjBZzKp_u5E	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	f	f	t	t	t	t
246	56	https://www.twoinchbrush.com/images/painting56.png	Evening's Peace	19	12	10	https://www.youtube.com/embed/uEUMVwc4o5U	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	t	f	f	t	t	f	f	f	t	t	t	f	t	f	t	t	f	t
247	57	https://www.twoinchbrush.com/images/painting57.png	Valley of Tranquility	19	13	13	https://www.youtube.com/embed/FnY7jDY5PsE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
248	31	https://www.twoinchbrush.com/images/painting31.png	Mystic Mountain	20	1	12	https://www.youtube.com/embed/VlucWfTUo1A	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
249	32	https://www.twoinchbrush.com/images/painting32.png	New Day's Dawn	20	2	12	https://www.youtube.com/embed/vbPdQ0w8ylg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	f	f	t	t	t	t	t
250	33	https://www.twoinchbrush.com/images/painting33.png	Winter in Pastel	20	3	9	https://www.youtube.com/embed/kbnXZRNMouM	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	t	f	f	t	t	f	f	f	t	t	t	t
251	34	https://www.twoinchbrush.com/images/painting34.png	Hazy Day	20	4	11	https://www.youtube.com/embed/5U3G61r35Mc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
252	35	https://www.twoinchbrush.com/images/painting35.png	Divine Elegance	20	5	12	https://www.youtube.com/embed/mb-Gwx1S5Gs	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
253	36	https://www.twoinchbrush.com/images/painting36.png	Cliffside	20	6	12	https://www.youtube.com/embed/p6Uy2qOLvGk	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
254	37	https://www.twoinchbrush.com/images/painting37.png	Autumn Fantasy	20	7	11	https://www.youtube.com/embed/FozIp7Va7dY	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
255	38	https://www.twoinchbrush.com/images/painting38.png	The Old Oak Tree	20	8	13	https://www.youtube.com/embed/dN4HjAn8p5U	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	f	t	t	t	t	t
256	39	https://www.twoinchbrush.com/images/painting39.png	Winter Paradise	20	9	6	https://www.youtube.com/embed/DY1aBv8Z1SQ	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	f	f	t
257	40	https://www.twoinchbrush.com/images/painting40.png	Days Gone By	20	10	12	https://www.youtube.com/embed/DmYhNHVIdMI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
258	41	https://www.twoinchbrush.com/images/painting41.png	Change of Seasons	20	11	12	https://www.youtube.com/embed/QbgPu5f2Vf8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
259	42	https://www.twoinchbrush.com/images/painting42.png	Hidden Delight	20	12	11	https://www.youtube.com/embed/ZyPNzDaaDt8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
260	43	https://www.twoinchbrush.com/images/painting43.png	Double Take	20	13	13	https://www.youtube.com/embed/ppzFgG2K2k4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
273	30	https://www.twoinchbrush.com/images/painting30.png	Florida's Glory	21	13	11	https://www.youtube.com/embed/HQC5sPN9Xhc	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	f	f	t	t	t	f	t	t	t	t	t	t
261	17	https://www.twoinchbrush.com/images/painting17.png	Valley View	21	1	13	https://www.youtube.com/embed/pw5ETGiiBRg	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
262	18	https://www.twoinchbrush.com/images/painting18.png	Tranquil Dawn	21	2	10	https://www.youtube.com/embed/4abDq6Q-mlM	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	t	t	t	f	f	f	t	t	t	t
263	19	https://www.twoinchbrush.com/images/painting19.png	Royal Majesty	21	3	14	https://www.youtube.com/embed/ubUXBqE6t0U	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
264	20	https://www.twoinchbrush.com/images/painting20.png	Serenity	21	4	12	https://www.youtube.com/embed/crqmO3qDdco	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
265	21	https://www.twoinchbrush.com/images/painting21.png	Cabin at Trails End	21	5	13	https://www.youtube.com/embed/GLkLO4KqTRs	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	f	t	t	t	t	t
266	22	https://www.twoinchbrush.com/images/painting22.png	Mountain Rhapsody	21	6	8	https://www.youtube.com/embed/H4VsmKU5T7g	{"'Alizarin Crimson'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	f	f	f	t	f	t	f	f	t	t	f	f	f	t	t	t	t
267	23	https://www.twoinchbrush.com/images/painting23.png	Wilderness Cabin	21	7	14	https://www.youtube.com/embed/GWehiacnd1E	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	t	t	t	t	t	t	t
268	24	https://www.twoinchbrush.com/images/painting24.png	By the Sea	21	8	13	https://www.youtube.com/embed/8tHHBTK6wwc	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	t	f	t	t	t	t	t
269	25	https://www.twoinchbrush.com/images/painting25.png	Indian Summer	21	9	13	https://www.youtube.com/embed/pfWV8NkotvU	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
270	27	https://www.twoinchbrush.com/images/painting27.png	Blue Winter	21	10	3	https://www.youtube.com/embed/liR0gS0sZY0	{"'Midnight Black'","'Prussian Blue'","'Titanium White'"}	{'#000000','#021E44','#FFFFFF'}	f	f	f	f	f	f	f	f	f	t	f	f	t	f	t	f	f	f
271	28	https://www.twoinchbrush.com/images/painting28.png	Desert Glow	21	11	9	https://www.youtube.com/embed/QyncJfL_HmU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	t	f	f	t	t	f	f	t	t	f	t	t
272	29	https://www.twoinchbrush.com/images/painting29.png	Lone Mountain	21	12	13	https://www.youtube.com/embed/NJbzIftLLmU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
298	306	https://www.twoinchbrush.com/images/painting306.png	Crimson Tide	23	12	8	https://www.youtube.com/embed/Y7SDU4i6Fco	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	f	f	f	t	t	f	f	f	t	t	t	t
274	14	https://www.twoinchbrush.com/images/painting14.png	Autumn Images	22	1	11	https://www.youtube.com/embed/HMx34Am6RFg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Red'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#CD5C5C','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	t	f	f	f	t	f	f	t	t	t	t	t	t
275	15	https://www.twoinchbrush.com/images/painting15.png	Hint of Springtime	22	2	13	https://www.youtube.com/embed/C-OSaHvt8ms	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
276	16	https://www.twoinchbrush.com/images/painting16.png	Around the Bend	22	3	14	https://www.youtube.com/embed/Kl5X3icOVvw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
277	4	https://www.twoinchbrush.com/images/painting4.png	Countryside Oval	22	4	12	https://www.youtube.com/embed/hdNH5axK4u0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
278	5	https://www.twoinchbrush.com/images/painting5.png	Russet Winter	22	5	9	https://www.youtube.com/embed/aE4nID1p-t0	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	t	f	f	f	t	t	t	t
279	6	https://www.twoinchbrush.com/images/painting6.png	Purple Haze	22	6	11	https://www.youtube.com/embed/ZoJ2tcXWb7g	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
280	7	https://www.twoinchbrush.com/images/painting7.png	Dimensions	22	7	12	https://www.youtube.com/embed/JUuP75RVZDI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
281	8	https://www.twoinchbrush.com/images/painting8.png	Deep Wilderness Home	22	8	12	https://www.youtube.com/embed/uZWNvDFfbUk	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
282	9	https://www.twoinchbrush.com/images/painting9.png	Haven in the Valley	22	9	13	https://www.youtube.com/embed/Qccgam514ds	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
283	10	https://www.twoinchbrush.com/images/painting10.png	Wintertime Blues	22	10	7	https://www.youtube.com/embed/dbMJVM4iL2Q	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
284	11	https://www.twoinchbrush.com/images/painting11.png	Pastel Seascape	22	11	11	https://www.youtube.com/embed/K4aud_SpFDQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
285	12	https://www.twoinchbrush.com/images/painting12.png	Country Creek	22	12	13	https://www.youtube.com/embed/JDa6JPcqy88	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
286	13	https://www.twoinchbrush.com/images/painting13.png	Silent Forest	22	13	13	https://www.youtube.com/embed/AE1GKcL3NuI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	f	t	t	t	t	t
287	295	https://www.twoinchbrush.com/images/painting295.png	Frosty Winter Morn	23	1	8	https://www.youtube.com/embed/1-9_enMBquw	{"'Alizarin Crimson'","'Cadmium Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#FFEC00','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15'}	f	f	f	t	f	f	f	f	f	t	t	f	t	t	t	t	f	t
288	296	https://www.twoinchbrush.com/images/painting296.png	Forest Edge	23	2	12	https://www.youtube.com/embed/puGk2iFvvp0	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
289	297	https://www.twoinchbrush.com/images/painting297.png	Mountain Ridge Lake	23	3	12	https://www.youtube.com/embed/Hq-z06i6HCs	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
290	298	https://www.twoinchbrush.com/images/painting298.png	Reflections of Gold	23	4	10	https://www.youtube.com/embed/8f9CCnqJ_1Y	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	f	t	t	t	t
291	299	https://www.twoinchbrush.com/images/painting299.png	Quiet Cove	23	5	11	https://www.youtube.com/embed/cR9hTbSomx4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
292	300	https://www.twoinchbrush.com/images/painting300.png	Rivers Peace	23	6	13	https://www.youtube.com/embed/flCWS9LB4Ks	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
293	301	https://www.twoinchbrush.com/images/painting301.png	At Dawn's Light	23	7	9	https://www.youtube.com/embed/HFdTxqEznIk	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	f	f	t	f	t	t	t	t
294	302	https://www.twoinchbrush.com/images/painting302.png	Valley Waterfall	23	8	15	https://www.youtube.com/embed/VYcsYzzRae4	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	t	t	t	t	t	t	t
295	303	https://www.twoinchbrush.com/images/painting303.png	Toward Days End	23	9	13	https://www.youtube.com/embed/cFi_fJl40BA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
296	304	https://www.twoinchbrush.com/images/painting304.png	Falls in the Glen	23	10	14	https://www.youtube.com/embed/txAtX-VyVNc	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
297	305	https://www.twoinchbrush.com/images/painting305.png	Frozen Beauty in Vignette	23	11	9	https://www.youtube.com/embed/H15kV1wbDG4	{"'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#DB0000','#5F2E1F','#000000','#0C0040','#102E3C','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	f	f	f	t	t	t	t	f	t	t	t	f
300	308	https://www.twoinchbrush.com/images/painting308.png	Gray Mountain	24	1	13	https://www.youtube.com/embed/4XxClvPZ1RE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
301	309	https://www.twoinchbrush.com/images/painting309.png	Wayside Pond	24	2	11	https://www.youtube.com/embed/FPW2FwK4IOo	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#5F2E1F','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	f	t	f	f	f	f	t	t	f	t	t	t	t	t	t
302	310	https://www.twoinchbrush.com/images/painting310.png	Teton Winter	24	3	6	https://www.youtube.com/embed/I4h6TC4CPJY	{"'Alizarin Crimson'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'"}	{'#4E1500','#000000','#0C0040','#021E44','#0A3410','#FFFFFF'}	f	f	f	f	f	f	f	f	f	t	t	f	t	t	t	f	f	t
303	311	https://www.twoinchbrush.com/images/painting311.png	Little Home in the Meadow	24	4	12	https://www.youtube.com/embed/nU1zV93N-kI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#C79B00'}	t	t	f	t	f	f	t	f	t	t	t	f	t	t	t	f	t	t
304	312	https://www.twoinchbrush.com/images/painting312.png	A Pretty Autumn Day	24	5	13	https://www.youtube.com/embed/HWedDS3p7XI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#C79B00'}	t	t	f	t	f	f	t	f	t	t	t	t	t	t	t	f	t	t
305	313	https://www.twoinchbrush.com/images/painting313.png	Mirrored Images	24	6	12	https://www.youtube.com/embed/i29frkR1T98	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
306	314	https://www.twoinchbrush.com/images/painting314.png	Back-Country Path	24	7	11	https://www.youtube.com/embed/2iNMoQB1Pe8	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#C79B00'}	t	t	f	t	f	f	t	f	f	t	t	f	t	t	t	f	t	t
307	315	https://www.twoinchbrush.com/images/painting315.png	Graceful Waterfall	24	8	15	https://www.youtube.com/embed/fBh1nA4pMDY	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	t	t	t	t	t	t	t
308	316	https://www.twoinchbrush.com/images/painting316.png	Icy Lake	24	9	11	https://www.youtube.com/embed/AmBDmgta3l4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
309	317	https://www.twoinchbrush.com/images/painting317.png	Rowboat on the Beach	24	10	8	https://www.youtube.com/embed/hfvhXOvg43w	{"'Alizarin Crimson'","'Cadmium Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#C79B00'}	f	f	f	t	f	f	f	f	f	t	t	t	f	t	t	f	t	t
310	318	https://www.twoinchbrush.com/images/painting318.png	Portrait of Winter	24	11	5	https://www.youtube.com/embed/JLnIUGOupOA	{"'Alizarin Crimson'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'"}	{'#4E1500','#000000','#0C0040','#021E44','#FFFFFF'}	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	f	f	t
311	319	https://www.twoinchbrush.com/images/painting319.png	The Footbridge	24	12	13	https://www.youtube.com/embed/RqtDliGeyTg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
312	320	https://www.twoinchbrush.com/images/painting320.png	Snowbound Cabin	24	13	8	https://www.youtube.com/embed/obSLZWXmDak	{"'Alizarin Crimson'","'Black Gesso'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'"}	{'#4E1500','#000000','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF'}	t	f	f	f	f	f	f	f	t	t	t	f	t	t	t	f	f	t
313	321	https://www.twoinchbrush.com/images/painting321.png	Hide A Way Cove	25	1	13	https://www.youtube.com/embed/l_HqMYquc08	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
314	322	https://www.twoinchbrush.com/images/painting322.png	Enchanted Falls Oval	25	2	6	https://www.youtube.com/embed/HklPkQ0lSKA	{"'Alizarin Crimson'","'Black Gesso'","'Indian Yellow'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFB800','#0A3410','#FFFFFF','#C79B00'}	t	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	t	t
315	323	https://www.twoinchbrush.com/images/painting323.png	Not Quite Spring	25	3	9	https://www.youtube.com/embed/N_u6x7LeyTM	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	f	f	f	t	f	f	t	f	t	t	t	t
316	324	https://www.twoinchbrush.com/images/painting324.png	Splashes of Autumn	25	4	14	https://www.youtube.com/embed/YcbaMqq_X8s	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
317	325	https://www.twoinchbrush.com/images/painting325.png	Summer in the Mountain	25	5	11	https://www.youtube.com/embed/gmCXgS38NDc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
318	326	https://www.twoinchbrush.com/images/painting326.png	Oriental Falls	25	6	11	https://www.youtube.com/embed/v8Znj8bbmCQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
319	327	https://www.twoinchbrush.com/images/painting327.png	Autumn Palette	25	7	13	https://www.youtube.com/embed/HWrvW-NgaOY	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	f	t	t	t	t	t
320	328	https://www.twoinchbrush.com/images/painting328.png	Cypress Swamp	25	8	12	https://www.youtube.com/embed/FdIUHudQABI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
321	329	https://www.twoinchbrush.com/images/painting329.png	Downstream View	25	9	14	https://www.youtube.com/embed/KsDPg5HZYNw	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
322	330	https://www.twoinchbrush.com/images/painting330.png	Just Before the Storm	25	10	8	https://www.youtube.com/embed/Rh-jKrMrmOA	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#FFEC00','#5F2E1F','#000000','#021E44','#0A3410','#FFFFFF','#221B15'}	f	f	f	t	t	f	f	f	f	t	f	f	t	t	t	t	f	t
323	331	https://www.twoinchbrush.com/images/painting331.png	Fisherman's Paradise	25	11	12	https://www.youtube.com/embed/uJLK85uU5mA	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
324	332	https://www.twoinchbrush.com/images/painting332.png	Desert Hues	25	12	11	https://www.youtube.com/embed/UUNNXGVNTuI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
325	333	https://www.twoinchbrush.com/images/painting333.png	The Property Line	25	13	11	https://www.youtube.com/embed/ivesI3rU7dU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
326	334	https://www.twoinchbrush.com/images/painting334.png	In the Stillness of Morning	26	1	10	https://www.youtube.com/embed/5rfGa1_iJpw	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
327	335	https://www.twoinchbrush.com/images/painting335.png	Delightful Meadow Home	26	2	9	https://www.youtube.com/embed/tWoInh2USOs	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	t	f	f	t	f	f	t	t	t	f	t	t
328	336	https://www.twoinchbrush.com/images/painting336.png	First Snow	26	3	12	https://www.youtube.com/embed/raAkJKeo0Sk	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
329	337	https://www.twoinchbrush.com/images/painting337.png	Lake in the Valley	26	4	15	https://www.youtube.com/embed/KvJmSrErm20	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	t	t	t	t	t	t	t
330	338	https://www.twoinchbrush.com/images/painting338.png	A Trace of Spring	26	5	13	https://www.youtube.com/embed/JMPwj3u4ZTA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
331	339	https://www.twoinchbrush.com/images/painting339.png	An Arctic Winter Day	26	6	6	https://www.youtube.com/embed/9BHWlbjd95c	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	f	f	t	f	t	t	f	t
332	340	https://www.twoinchbrush.com/images/painting340.png	Snow Birch	26	7	5	https://www.youtube.com/embed/wKeemvioVrM	{"'Black Gesso'","'Indian Yellow'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'"}	{'#000000','#FFB800','#0C0040','#021E44','#FFFFFF'}	t	f	f	f	f	f	t	f	f	f	t	f	t	f	t	f	f	f
333	341	https://www.twoinchbrush.com/images/painting341.png	Early Autumn	26	8	12	https://www.youtube.com/embed/SLQXlFLoqQc	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
334	342	https://www.twoinchbrush.com/images/painting342.png	Tranquil Wooded Stream	26	9	12	https://www.youtube.com/embed/lSeRrm5ZK9c	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
335	343	https://www.twoinchbrush.com/images/painting343.png	Purple Mountain Range	26	10	13	https://www.youtube.com/embed/nkDA_R-XmqA	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
336	344	https://www.twoinchbrush.com/images/painting344.png	Storm's A Comin	26	11	10	https://www.youtube.com/embed/EHD9u-lo2wc	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#102E3C','#FFFFFF','#221B15'}	t	t	f	t	t	f	f	f	f	t	t	t	f	f	t	t	f	t
337	345	https://www.twoinchbrush.com/images/painting345.png	Sunset Aglow	26	12	12	https://www.youtube.com/embed/gMEZp47VKC0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
339	347	https://www.twoinchbrush.com/images/painting347.png	Twilight Beauty	27	1	11	https://www.youtube.com/embed/0mJqzzeWyXs	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#FFFFFF','#221B15'}	t	t	f	t	t	f	t	f	t	t	t	f	f	f	t	t	f	t
340	348	https://www.twoinchbrush.com/images/painting348.png	Angler's Haven	27	2	15	https://www.youtube.com/embed/XlwfcXZ0AIU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	t	t	t	t	t	t	t	t	t	t
341	349	https://www.twoinchbrush.com/images/painting349.png	Rustic Winter Woods	27	3	6	https://www.youtube.com/embed/3q8Zi9480lw	{"'Alizarin Crimson'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Sap Green'","'Titanium White'"}	{'#4E1500','#FFEC00','#FFB800','#000000','#0A3410','#FFFFFF'}	f	f	f	t	f	f	t	f	f	t	f	f	f	t	t	f	f	t
342	350	https://www.twoinchbrush.com/images/painting350.png	Wilderness Falls	27	4	15	https://www.youtube.com/embed/gxd0MPX8c6I	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	t	t	t	t	t	t	t	t	t	t
343	351	https://www.twoinchbrush.com/images/painting351.png	Winter at the Farm	27	5	7	https://www.youtube.com/embed/LeIVNKnWz7o	{"'Alizarin Crimson'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#FFFFFF','#000000','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	t	t	f	f	t	f	t	t	f	t
344	352	https://www.twoinchbrush.com/images/painting352.png	Daisies at Dawn	27	6	8	https://www.youtube.com/embed/_kkZcIgocBM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	t	f	f	t	f	f	f	t	t	f	t	t
345	353	https://www.twoinchbrush.com/images/painting353.png	A Spectacular View	27	7	11	https://www.youtube.com/embed/7R9HcaDT9P4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
346	354	https://www.twoinchbrush.com/images/painting354.png	Daybreak	27	8	7	https://www.youtube.com/embed/crWDcTvDmec	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#FFEC00','#5F2E1F','#000000','#021E44','#FFFFFF','#221B15'}	f	f	f	t	t	f	f	f	f	t	f	f	t	f	t	t	f	t
347	355	https://www.twoinchbrush.com/images/painting355.png	Island Paradise	27	9	12	https://www.youtube.com/embed/Cg3XAVhAas0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	t	f	f	t	t	t	t
348	356	https://www.twoinchbrush.com/images/painting356.png	Sunlight in the Shadows	27	10	7	https://www.youtube.com/embed/xgjQ0v2d9mE	{"'Alizarin Crimson'","'Black Gesso'","'Liquid Clear'","'Midnight Black'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFFFFF','#000000','#FFFFFF','#221B15','#C79B00'}	t	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	t	t
349	357	https://www.twoinchbrush.com/images/painting357.png	Splendor of a Snowy Winter	27	11	9	https://www.youtube.com/embed/JdXCoxkOdwQ	{"'Alizarin Crimson'","'Dark Sienna'","'Liquid Black'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#FFFFFF','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	t	t	t	t	f	t	f	t	t	f	t
350	358	https://www.twoinchbrush.com/images/painting358.png	Forest River	27	12	14	https://www.youtube.com/embed/wrbGlR22K0Q	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
351	359	https://www.twoinchbrush.com/images/painting359.png	Golden Glow of Morning	27	13	9	https://www.youtube.com/embed/qXElmiqzcI0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	t	f	f	t	t	f	f	t	t	f	t	t
352	360	https://www.twoinchbrush.com/images/painting360.png	Fisherman's Trail	28	1	12	https://www.youtube.com/embed/VnZEpic2UzU	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
353	361	https://www.twoinchbrush.com/images/painting361.png	A Warm Winter	28	2	9	https://www.youtube.com/embed/_TTdw3YnXuo	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	f	f	f	t	t	f	t	t	t	f	t	t
354	362	https://www.twoinchbrush.com/images/painting362.png	Under Pastel Skies	28	3	12	https://www.youtube.com/embed/lzODyJS2ZIg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
355	363	https://www.twoinchbrush.com/images/painting363.png	Golden Rays of Sunshine	28	4	8	https://www.youtube.com/embed/zxj3xLDNxo0	{"'Alizarin Crimson'","'Black Gesso'","'Indian Yellow'","'Liquid Clear'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'"}	{'#4E1500','#000000','#FFB800','#FFFFFF','#0C0040','#021E44','#0A3410','#FFFFFF'}	t	f	f	f	f	f	t	f	t	f	t	f	t	t	t	f	f	t
356	364	https://www.twoinchbrush.com/images/painting364.png	The Magic of Fall	28	5	10	https://www.youtube.com/embed/bSm3fmEyJ20	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	t	f	t	t	t	f	f	t	t	f	t	t
357	365	https://www.twoinchbrush.com/images/painting365.png	Glacier Lake	28	6	12	https://www.youtube.com/embed/TohG7F8M3Ls	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
358	366	https://www.twoinchbrush.com/images/painting366.png	The Old Weathered Barn	28	7	9	https://www.youtube.com/embed/NYUIIBFj0iQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	t	f	f	t	t	f	f	t	t	f	t	t
359	367	https://www.twoinchbrush.com/images/painting367.png	Deep Forest Falls	28	8	13	https://www.youtube.com/embed/urHQRbRNuYI	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
360	368	https://www.twoinchbrush.com/images/painting368.png	Winter's Grace	28	9	4	https://www.youtube.com/embed/mxJ2On9wyvY	{"'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'"}	{'#000000','#0C0040','#021E44','#FFFFFF'}	f	f	f	f	f	f	f	f	f	t	t	f	t	f	t	f	f	f
361	369	https://www.twoinchbrush.com/images/painting369.png	Splendor of Autumn	28	10	11	https://www.youtube.com/embed/hEyR2FDp-00	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
362	370	https://www.twoinchbrush.com/images/painting370.png	Tranquil Seas	28	11	11	https://www.youtube.com/embed/kN1DP_yqs-A	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#FFB800','#000000','#0C0040','#102E3C','#0A3410','#FFFFFF','#C79B00'}	t	t	f	t	f	f	t	f	f	t	t	t	f	t	t	f	t	t
363	371	https://www.twoinchbrush.com/images/painting371.png	Mountain Serenity	28	12	13	https://www.youtube.com/embed/wc_YVijYjT4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
364	372	https://www.twoinchbrush.com/images/painting372.png	Home Before Nightfall	28	13	8	https://www.youtube.com/embed/22SiIDvyJeM	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#000000','#0C0040','#0A3410','#FFFFFF','#C79B00'}	f	t	f	t	f	f	f	f	f	t	t	f	f	t	t	f	t	t
365	373	https://www.twoinchbrush.com/images/painting373.png	Island in the Wilderness	29	1	13	https://www.youtube.com/embed/lLWEXRAnQd0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
366	374	https://www.twoinchbrush.com/images/painting374.png	Autumn Oval	29	2	10	https://www.youtube.com/embed/2XnIdinwot0	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	f	t	t	t	t	t
367	375	https://www.twoinchbrush.com/images/painting375.png	Seasonal Progression	29	3	13	https://www.youtube.com/embed/T2G5waMfQ-g	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
368	376	https://www.twoinchbrush.com/images/painting376.png	Light at the Summit	29	4	14	https://www.youtube.com/embed/HOdS-G8p1KE	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
369	377	https://www.twoinchbrush.com/images/painting377.png	Countryside Barn	29	5	12	https://www.youtube.com/embed/G7Etn7QMeO4	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
370	378	https://www.twoinchbrush.com/images/painting378.png	Mountain Lake Falls	29	6	9	https://www.youtube.com/embed/dNEp3hoHSDI	{"'Alizarin Crimson'","'Cadmium Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#FFEC00','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15'}	f	f	f	t	f	f	f	f	f	t	t	t	t	t	t	t	f	t
371	379	https://www.twoinchbrush.com/images/painting379.png	Cypress Creek	29	7	11	https://www.youtube.com/embed/Tnb2cXKKuWM	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	f	f	f	t	t	t	t	t
372	380	https://www.twoinchbrush.com/images/painting380.png	Trapper's Cabin	29	8	12	https://www.youtube.com/embed/chhCkmp0RG8	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
373	381	https://www.twoinchbrush.com/images/painting381.png	Storm on the Horizon	29	9	9	https://www.youtube.com/embed/pA_2paUhBAQ	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#5F2E1F','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	f	f	f	t	t	f	f	t	t	t	t	t
374	382	https://www.twoinchbrush.com/images/painting382.png	Pot O' Posies	29	10	6	https://www.youtube.com/embed/2zv_S_uVoVQ	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Midnight Black'","'Prussian Blue'","'Sap Green'"}	{'#4E1500','#000000','#DB0000','#000000','#021E44','#0A3410'}	t	t	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	t
375	383	https://www.twoinchbrush.com/images/painting383.png	A Perfect Winter Day	29	11	7	https://www.youtube.com/embed/Io4fwhacpEs	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
376	384	https://www.twoinchbrush.com/images/painting384.png	Aurora's Dance	29	12	9	https://www.youtube.com/embed/iRMsb9Vf7GM	{"'Alizarin Crimson'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#FFFFFF','#000000','#0C0040','#102E3C','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	t	t	t	t	t	f	t	t	f	t
377	385	https://www.twoinchbrush.com/images/painting385.png	Woodman's Retreat	29	13	12	https://www.youtube.com/embed/ODrV0dfQcNs	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
378	386	https://www.twoinchbrush.com/images/painting386.png	Babbling Brook	30	1	12	https://www.youtube.com/embed/ZHUdS0wEaKk	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
379	387	https://www.twoinchbrush.com/images/painting387.png	Woodgrain View	30	2	13	https://www.youtube.com/embed/fcx1yUuSf3o	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	f	f	t	t	t	t	t	t
380	388	https://www.twoinchbrush.com/images/painting388.png	Winter's Peace	30	3	10	https://www.youtube.com/embed/Xzv3iiWi1Wo	{"'Alizarin Crimson'","'Bright Red'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#FFFFFF','#221B15','#C79B00'}	f	t	f	f	t	f	t	f	f	t	t	f	t	f	t	t	t	t
381	389	https://www.twoinchbrush.com/images/painting389.png	Wilderness Trail	30	4	13	https://www.youtube.com/embed/vGsW_6BCukU	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	f	f	t	t	t	t	t	t
382	390	https://www.twoinchbrush.com/images/painting390.png	A Copper Winter	30	5	13	https://www.youtube.com/embed/BSjee-ond7w	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	t	t	t	f	t	t	t	t	t	t
383	391	https://www.twoinchbrush.com/images/painting391.png	Misty Foothills	30	6	10	https://www.youtube.com/embed/LEz4UVL7POE	{"'Alizarin Crimson'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	f	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
384	392	https://www.twoinchbrush.com/images/painting392.png	Through the Window	30	7	7	https://www.youtube.com/embed/SrN4A9rVXj0	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
385	393	https://www.twoinchbrush.com/images/painting393.png	Home in the Valley	30	8	13	https://www.youtube.com/embed/enutOy-nsZk	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
386	394	https://www.twoinchbrush.com/images/painting394.png	Mountains of Grace	30	9	11	https://www.youtube.com/embed/nXlu_Q0sR7c	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	f	f	f	t	t	f	t	t	t	t	t	t
387	395	https://www.twoinchbrush.com/images/painting395.png	Seaside Harmony	30	10	12	https://www.youtube.com/embed/CY6sGFs209E	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15'}	t	f	f	t	t	f	t	f	t	t	t	f	t	t	t	t	f	t
388	396	https://www.twoinchbrush.com/images/painting396.png	A Cold Spring Day	30	11	13	https://www.youtube.com/embed/jq8bIbpW7DQ	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
389	397	https://www.twoinchbrush.com/images/painting397.png	Evening's Glow	30	12	10	https://www.youtube.com/embed/eTEKGOi6SVg	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	f	t	t	t	t	t
390	398	https://www.twoinchbrush.com/images/painting398.png	Blue Ridge Falls	30	13	12	https://www.youtube.com/embed/fz0YjqtHW84	{"'Alizarin Crimson'","'Black Gesso'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
391	399	https://www.twoinchbrush.com/images/painting399.png	Reflections of Calm	31	1	12	https://www.youtube.com/embed/kJFB6rH3z2A	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
392	400	https://www.twoinchbrush.com/images/painting400.png	Before the Snowfall	31	2	7	https://www.youtube.com/embed/_MdMhQIOL1Y	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
393	401	https://www.twoinchbrush.com/images/painting401.png	Winding Stream	31	3	13	https://www.youtube.com/embed/QDwd4pMYyuo	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	t	t	f	t	t	t	t	t	t
394	402	https://www.twoinchbrush.com/images/painting402.png	Tranquility Cove	31	4	11	https://www.youtube.com/embed/7t6ue0pEcNE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
395	403	https://www.twoinchbrush.com/images/painting403.png	Cabin in the Hollow	31	5	7	https://www.youtube.com/embed/KYlM2zJnNWY	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
396	404	https://www.twoinchbrush.com/images/painting404.png	View from Clear Creek	31	6	13	https://www.youtube.com/embed/TLX1bmS8wBE	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	t	t	t	t	t	t	t
397	405	https://www.twoinchbrush.com/images/painting405.png	Bridge to Autumn	31	7	11	https://www.youtube.com/embed/ReENCTH7MYI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	f	f	t	t	t	t	t	t
398	406	https://www.twoinchbrush.com/images/painting406.png	Trail's End	31	8	10	https://www.youtube.com/embed/XWQrP-WiLgc	{"'Alizarin Crimson'","'Black Gesso'","'Dark Sienna'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#5F2E1F','#FFFFFF','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	f	f	f	t	f	f	f	t	t	t	f	f	t	t	t	t	t
399	407	https://www.twoinchbrush.com/images/painting407.png	Evergreen Valley	31	9	14	https://www.youtube.com/embed/mEU0stNfkxI	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Black'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#000000','#0C0040','#102E3C','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	t	f	t	t	t	t	t	t	t	t	t
400	408	https://www.twoinchbrush.com/images/painting408.png	Balmy Beach	31	10	13	https://www.youtube.com/embed/kMgd6r6c4vE	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Liquid Clear'","'Midnight Black'","'Phthalo Blue'","'Phthalo Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#FFFFFF','#000000','#0C0040','#102E3C','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	t	t	t	t	f	f	t	t	t	t
401	409	https://www.twoinchbrush.com/images/painting409.png	Lake at the Ridge	31	11	12	https://www.youtube.com/embed/8QWvzEQ69Kw	{"'Alizarin Crimson'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#021E44','#0A3410','#FFFFFF','#221B15','#C79B00'}	f	t	f	t	t	f	t	f	f	t	t	f	t	t	t	t	t	t
402	410	https://www.twoinchbrush.com/images/painting410.png	In the Midst of Winter	31	12	7	https://www.youtube.com/embed/qx2IsmrCs3c	{"'Alizarin Crimson'","'Dark Sienna'","'Midnight Black'","'Phthalo Blue'","'Prussian Blue'","'Titanium White'","'Van Dyke Brown'"}	{'#4E1500','#5F2E1F','#000000','#0C0040','#021E44','#FFFFFF','#221B15'}	f	f	f	f	t	f	f	f	f	t	t	f	t	f	t	t	f	t
403	411	https://www.twoinchbrush.com/images/painting411.png	Wilderness Day	31	13	12	https://www.youtube.com/embed/nJGCVFn57U8	{"'Alizarin Crimson'","'Black Gesso'","'Bright Red'","'Cadmium Yellow'","'Dark Sienna'","'Indian Yellow'","'Midnight Black'","'Phthalo Blue'","'Sap Green'","'Titanium White'","'Van Dyke Brown'","'Yellow Ochre'"}	{'#4E1500','#000000','#DB0000','#FFEC00','#5F2E1F','#FFB800','#000000','#0C0040','#0A3410','#FFFFFF','#221B15','#C79B00'}	t	t	f	t	t	f	t	f	f	t	t	f	f	t	t	t	t	t
\.


--
-- Data for Name: episodedates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.episodedates (idrow, title, datepublish, notes) FROM stdin;
1	A Walk in the Woods	 (January 11 1983)	\N
2	Mt. McKinley	 (January 11 1983)	\N
3	Ebony Sunset	 (January 18 1983)	\N
4	Winter Mist	 (January 25 1983)	\N
5	Quiet Stream	 (February 1 1983)	\N
6	Winter Moon	 (February 8 1983)	\N
7	Autumn Mountains	 (February 15 1983)	\N
8	Peaceful Valley	 (February 22 1983)	\N
9	Seascape	 (March 1 1983)	\N
10	Mountain Lake	 (March 8 1983)	\N
11	Winter Glow	 (March 15 1983)	\N
12	Snowfall	 (March 22 1983)	\N
13	Final Reflections	 (March 29 1983)	\N
14	Meadow Lake	 (August 31 1983)	\N
15	Winter Sun	 (September 7 1983)	\N
16	Ebony Sea	 (September 14 1983)	\N
17	Shades of Gray	 (September 21 1983)	\N
18	Autumn Splendor	 (September 28 1983)	\N
19	Black River	 (October 5 1983)	\N
20	Brown Mountain	 (October 12 1983)	\N
21	Reflections	 (October 19 1983)	\N
22	Black & White Seascape	 (October 26 1983)	\N
23	Lazy River	 (November 2 1983)	\N
24	Black Waterfall	 (November 9 1983)	\N
25	Mountain Waterfall	 (November 16 1983)	\N
26	Final Grace	 (November 23 1983)	\N
27	Mountain Retreat	 (January 4 1984)	\N
28	Blue Moon	 (January 11 1984)	\N
29	Bubbling Stream	 (January 18 1984)	\N
30	Winter Night	 (January 25 1984)	\N
31	Distant Hills	 (February 1 1984)	\N
32	Covered Bridge	 (February 8 1984)	\N
33	Quiet Inlet	 (February 15 1984)	\N
34	Night Light	 (February 22 1984)	\N
35	The Old Mill	 (March 1 1984)	\N
36	Campfire	 (March 8 1984)	\N
37	Rustic Barn	 (March 15 1984)	\N
38	Hidden Lake	 (March 22 1984)	\N
39	Peaceful Waters	 (March 29 1984)	\N
40	Purple Splendor	 (September 5 1984)	\N
41	Tranquil Valley	 (September 12 1984)	\N
42	Majestic Mountains	 (September 19 1984)	\N
43	Winter Sawscape	 (September 26 1984)	\N
44	Evening Seascape	 (October 3 1984)	\N
45	Warm Summer Day	 (October 10 1984)	\N
46	Cabin in the Woods	 (October 17 1984)	\N
47	Wetlands	 (October 24 1984)	\N
48	Cool Waters	 (October 31 1984)	\N
49	Quiet Woods	 (November 7 1984)	\N
50	Northwest Majesty	 (November 14 1984)	\N
51	Autumn Days	 (November 21 1984)	\N
52	Mountain Challenge	 (November 28 1984)	\N
53	Mountain Waterfall	 (January 2 1985)	\N
54	Twilight Meadow	 (January 9 1985)	\N
55	Mountain Blossoms	 (January 16 1985)	\N
56	Winter Stillness	 (January 23 1985)	\N
57	Quiet Pond	 (January 30 1985)	\N
58	Ocean Sunrise	 (February 6 1985)	 Special guest Audrey Golden
59	Bubbling Brook	 (February 13 1985)	\N
60	Arizona Splendor	 (February 20 1985)	\N
61	Anatomy of a Wave	 (February 27 1985)	 Special guest Joyce Ortner
62	The Windmill	 (March 6 1985)	\N
63	Autumn Glory	 (March 13 1985)	\N
64	Indian Girl	 (March 20 1985)	\N
65	Meadow Stream	 (March 27 1985)	\N
66	Blue River	 (May 1 1985)	\N
67	Nature's Edge	 (May 8 1985)	\N
68	Morning Mist	 (May 15 1985)	\N
69	Whispering Stream	 (May 22 1985)	\N
70	Secluded Forest	 (May 29 1985)	\N
71	Snow Trail	 (June 5 1985)	\N
72	Arctic Beauty	 (June 12 1985)	\N
73	Horizons West	 (June 19 1985)	\N
74	High Chateau	 (June 26 1985)	\N
75	Country Life	 (July 2 1985)	\N
76	Western Expanse	 (July 9 1985)	\N
77	Marshlands	 (July 16 1985)	\N
78	Blaze of Color	 (July 23 1985)	\N
79	Winter Cabin	 (October 2 1985)	\N
80	Secluded Lake	 (October 9 1985)	\N
81	Evergreen at Sunset	 (October 16 1985)	\N
82	Mountain Cabin	 (October 23 1985)	\N
83	Portrait of Sally	 (October 30 1985)	\N
84	Misty Waterfall	 (November 6 1985)	\N
85	Barn at Sunset	 (November 13 1985)	\N
86	Mountain Splendor	 (November 20 1985)	\N
87	Lake by Mountain	 (November 27 1985)	\N
88	Mountain Glory	 (December 6 1985)	\N
89	Grey Winter	 (December 13 1985)	\N
90	Dock Scene	 (December 20 1985)	\N
91	Dark Waterfall	 (December 27 1985)	\N
92	Misty Rolling Hills	 (January 2 1986)	\N
93	Lakeside Cabin	 (January 9 1986)	\N
94	Warm Winter Day	 (January 16 1986)	\N
95	Waterside Way	 (January 23 1986)	\N
96	Hunter's Haven	 (January 30 1986)	\N
97	Bubbling Mountain Brook	 (February 6 1986)	\N
98	Winter Hideaway	 (February 13 1986)	\N
99	Foot of the Mountain	 (February 20 1986)	\N
100	Majestic Pine	 (February 27 1986)	\N
101	Cactus at Sunset	 (March 6 1986)	\N
102	Mountain Range	 (March 13 1986)	\N
103	Lonely Retreat	 (March 20 1986)	\N
104	Northern Lights	 (March 27 1986)	\N
105	Winter Evergreens	 (April 30 1986)	\N
106	Surf's Up	 (May 7 1986)	\N
107	Red Sunset	 (May 14 1986)	\N
108	Meadow Road	 (May 21 1986)	\N
109	Winter Oval	 (May 28 1986)	\N
110	Secluded Beach	 (June 4 1986)	\N
111	Forest Hills	 (June 11 1986)	\N
112	Little House by the Road	 (June 18 1986)	\N
113	Mountain Pass	 (June 25 1986)	\N
114	Country Charm	 (July 2 1986)	\N
115	Nature's Paradise	 (July 9 1986)	\N
116	Mountain by the Sea	 (July 16 1986)	\N
117	Mountain Hideaway	 (July 23 1986)	\N
118	Towering Peaks	 (September 3 1986)	\N
119	Cabin at Sunset	 (September 10 1986)	\N
120	Twin Falls	 (September 17 1986)	\N
121	Secluded Bridge	 (September 24 1986)	\N
122	Ocean Breeze	 (October 1 1986)	\N
123	Autumn Woods	 (October 8 1986)	\N
124	Winter Solitude	 (October 15 1986)	\N
125	Golden Sunset	 (October 22 1986)	\N
126	Mountain Oval	 (October 29 1986)	\N
127	Ocean Sunset	 (November 5 1986)	\N
128	Triple View	 (November 12 1986)	\N
129	Winter Frost	 (November 19 1986)	\N
130	Lakeside Cabin	 (November 26 1986)	\N
131	Mountain Stream	 (December 31 1986)	\N
132	Country Cabin	 (January 7 1987)	\N
133	Daisy Delight	 (January 14 1987)	\N
134	Hidden Stream	 (January 21 1987)	\N
135	Towering Glacier	 (January 28 1987)	\N
136	Oval Barn	 (February 4 1987)	\N
137	Lakeside Path	 (February 11 1987)	\N
138	Sunset Oval	 (February 18 1987)	\N
139	Winter Barn	 (February 25 1987)	\N
140	Sunset Over the Waves	 (March 4 1987)	\N
141	Golden Glow	 (March 11 1987)	\N
142	Roadside Barn	 (March 18 1987)	\N
143	Happy Accident	 (March 25 1987)	\N
144	Golden Knoll	 (April 29 1987)	\N
145	Mountain Reflections	 (May 6 1987)	\N
146	Secluded Mountain	 (May 13 1987)	\N
147	Bright Autumn Trees	 (May 20 1987)	\N
148	Black Seascape	 (May 27 1987)	\N
149	Steep Mountains	 (June 3 1987)	\N
150	Quiet Mountain River	 (June 10 1987)	\N
151	Evening Waterfall	 (June 17 1987)	\N
152	Tropical Seascape	 (June 24 1987)	\N
153	Mountain at Sunset	 (July 1 1987)	\N
154	Soft Mountain Glow	 (July 8 1987)	\N
155	Mountain in an Oval	 (July 15 1987)	\N
156	Winter Mountain	 (July 22 1987)	\N
157	Rolling Hills	 (September 2 1987)	\N
158	Frozen Solitude	 (September 9 1987)	\N
159	Meadow Brook	 (September 16 1987)	\N
160	Evening Sunset	 (September 23 1987)	\N
161	Mountain View	 (September 30 1987)	\N
162	Hidden Creek	 (October 7 1987)	\N
163	Peaceful Haven	 (October 14 1987)	\N
164	Mountain Exhibition	 (October 21 1987)	\N
165	Emerald Waters	 (October 28 1987)	\N
166	Mountain Summit	 (November 4 1987)	\N
167	Cabin Hideaway	 (November 11 1987)	\N
168	Oval Essence	 (November 18 1987)	\N
169	Lost Lake	 (November 25 1987)	\N
170	Distant Mountains	 (December 30 1987)	\N
171	Meadow Brook Surprise	 (January 6 1988)	\N
172	Mountain Moonlight Oval	 (January 13 1988)	\N
173	Snowy Solitude	 (January 20 1988)	\N
174	Mountain River	 (January 27 1988)	\N
175	Graceful Mountains	 (February 3 1988)	\N
176	Windy Waves	 (February 10 1988)	\N
177	On a Clear Day	 (February 17 1988)	\N
178	Riverside Escape Oval	 (February 24 1988)	\N
179	Surprising Falls	 (March 2 1988)	\N
180	Shadow Pond	 (March 9 1988)	\N
181	Misty Forest	 (March 16 1988)	\N
182	Natural Wonder	 (March 23 1988)	\N
183	Splendor of Winter	 (April 27 1988)	\N
184	Colors of Nature	 (May 4 1988)	\N
185	Grandpa's Barn	 (May 11 1988)	\N
186	Peaceful Reflections	 (May 18 1988)	\N
187	Hidden Winter Moon Oval	 (May 25 1988)	\N
188	Waves of Wonder	 (June 1 1988)	\N
189	Cabin by the Pond	 (June 8 1988)	\N
190	Fall Stream	 (June 15 1988)	\N
191	Christmas Eve Snow	 (June 22 1988)	\N
192	Forest Dawn Oval	 (June 29 1988)	\N
193	Pathway to Autumn	 (July 6 1988)	\N
194	Deep Forest Lake	 (July 13 1988)	\N
195	Peaks of Majesty	 (July 20 1988)	\N
196	Two Seasons	 (August 17 1988)	\N
197	Nestled Cabin	 (August 24 1988)	\N
198	Wintertime Discovery	 (August 31 1988)	\N
199	Mountain Mirage	 (September 7 1988)	\N
200	Double Oval Fantasy	 (September 14 1988)	\N
201	Contemplative Lady	 (September 21 1988)	 Special guest John Thamm (Bob Ross's former instructor)
202	Deep Woods	 (September 28 1988)	\N
203	High Tide	 (October 5 1988)	\N
204	Barn in Snow Oval	 (October 12 1988)	\N
205	That Time of Year	 (October 19 1988)	 Special guest Steve Ross (Bob's son)
206	Waterfall Wonder	 (October 26 1988)	 Footage with Grand Ole Opry regular Hank Snow and announcer Grant Turner
207	Mighty Mountain Lake	 (November 2 1988)	\N
208	Wooded Stream Oval	 (November 9 1988)	\N
209	Golden Mist Oval	 (January 4 1989)	\N
210	Old Place Home	 (January 11 1989)	\N
211	Soothing Vista	 (January 18 1989)	\N
212	Stormy Seas	 (January 25 1989)	\N
213	Country Time	 (February 1 1989)	\N
214	A Mild Winter's Day	 (February 8 1989)	\N
215	Spectacular Waterfall	 (February 15 1989)	\N
216	View From the Park	 (February 22 1989)	\N
217	Lake View	 (March 1 1989)	\N
218	Old Country Mill	 (March 8 1989)	\N
219	Morning Walk	 (March 15 1989)	\N
220	Nature's Splendor	 (March 22 1989)	\N
221	Mountain Beauty	 (March 29 1989)	\N
222	Half Oval Vignette	 (July 5 1989)	\N
223	Absolutely Autumn	 (July 12 1989)	\N
224	Mountain Seclusion	 (July 19 1989)	\N
225	Crimson Oval	 (July 26 1989)	\N
226	Autumn Exhibition	 (August 2 1989)	\N
227	Majestic Peaks	 (August 9 1989)	\N
228	Golden Morning Mist	 (August 16 1989)	\N
229	Winter Lace	 (August 23 1989)	\N
230	Seascape Fantasy	 (August 30 1989)	\N
231	Double Oval Stream	 (September 6 1989)	\N
232	Enchanted Forest	 (September 13 1989)	\N
233	Southwest Serenity	 (September 20 1989)	\N
234	Rippling Waters	 (September 27 1989)	\N
235	Snowfall Magic	 (January 3 1990)	\N
236	Quiet Mountain Lake	 (January 10 1990)	\N
237	Final Embers of Sunlight	 (January 17 1990)	\N
238	Snowy Morn	 (January 24 1990)	\N
239	Camper's Haven	 (January 31 1990)	\N
240	Waterfall in the Woods	 (February 7 1990)	\N
241	Covered Bridge Oval	 (February 14 1990)	\N
242	Scenic Seclusion	 (February 21 1990)	\N
243	Ebb Tide	 (February 28 1990)	\N
244	After the Rain	 (March 7 1990)	\N
245	Winter Elegance	 (March 14 1990)	\N
246	Evening's Peace	 (March 21 1990)	\N
247	Valley of Tranquility	 (March 28 1990)	\N
248	Mystic Mountain	 (April 4 1990)	\N
249	New Day's Dawn	 (April 11 1990)	\N
250	Pastel Winter	 (April 18 1990)	\N
251	Hazy Day	 (April 25 1990)	\N
252	Divine Elegance	 (May 2 1990)	\N
253	Cliffside	 (May 9 1990)	\N
254	Autumn Fantasy	 (May 16 1990)	\N
255	Old Oak Tree	 (May 23 1990)	\N
256	Winter Paradise	 (May 30 1990)	\N
257	Days Gone By	 (June 6 1990)	\N
258	Change of Seasons	 (June 13 1990)	\N
259	Hidden Delight	 (June 20 1990)	\N
260	Double Take	 (June 27 1990)	\N
261	Valley View	 (September 5 1990)	\N
262	Tranquil Dawn	 (September 12 1990)	\N
263	Royal Majesty	 (September 19 1990)	\N
264	Serenity	 (September 26 1990)	\N
265	Cabin at Trial's End	 (October 3 1990)	\N
266	Mountain Rhapsody	 (October 10 1990)	\N
267	Wilderness Cabin	 (October 17 1990)	\N
268	By the Sea	 (October 24 1990)	\N
269	Indian Summer	 (October 31 1990)	\N
270	Blue Winter	 (November 7 1990)	\N
271	Desert Glow	 (November 14 1990)	\N
272	Lone Mountain	 (November 21 1990)	\N
273	Florida's Glory	 (November 28 1990)	\N
274	Autumn Images	 (January 1 1991)	\N
275	Hint of Springtime	 (January 8 1991)	\N
276	Around the Bend	 (January 15 1991)	\N
277	Countryside Oval	 (January 22 1991)	\N
278	Russet Winter	 (January 29 1991)	\N
279	Purple Haze	 (February 5 1991)	\N
280	Dimensions	 (February 12 1991)	\N
281	Deep Wilderness Home	 (February 19 1991)	\N
282	Haven in the Valley	 (February 26 1991)	\N
283	Wintertime Blues	 (March 5 1991)	\N
284	Pastel Seascape	 (March 12 1991)	\N
285	Country Creek	 (March 19 1991)	\N
286	Silent Forest	 (March 26 1991)	\N
287	Frosty Winter Morn	 (September 3 1991)	\N
288	Forest Edge	 (September 10 1991)	\N
289	Mountain Ridge Lake	 (September 17 1991)	\N
290	Reflections of Gold	 (September 24 1991)	\N
291	Quiet Cove	 (October 1 1991)	\N
292	River's Peace	 (October 8 1991)	\N
293	At Dawn's Light	 (October 15 1991)	\N
294	Valley Waterfall	 (October 22 1991)	\N
295	Toward Day's End	 (October 29 1991)	\N
296	Falls in the Glen	 (November 5 1991)	\N
297	Frozen Beauty in Vignette	 (November 12 1991)	\N
298	Crimson Tide	 (November 19 1991)	\N
299	Winter Bliss	 (November 26 1991)	\N
300	Grey Mountain	 (January 7 1992)	\N
301	Wayside Pond	 (January 14 1992)	\N
302	Teton Winter	 (January 21 1992)	\N
303	Little Home in the Meadow	 (January 28 1992)	\N
304	Pretty Autumn Day	 (February 4 1992)	\N
305	Mirrored Images	 (February 11 1992)	\N
306	Back-Country Path	 (February 18 1992)	\N
307	Graceful Waterfall	 (February 25 1992)	\N
308	Icy Lake	 (March 3 1992)	\N
309	Rowboat on the Beach	 (March 10 1992)	\N
310	Portrait of Winter	 (March 17 1992)	\N
311	Footbridge	 (March 24 1992)	\N
312	Snowbound Cabin	 (March 31 1992)	\N
313	Hide-a-Way Cove	 (August 25 1992)	\N
314	Enchanted Falls Oval	 (September 1 1992)	\N
315	Not Quite Spring	 (September 8 1992)	\N
316	Splashes of Autumn	 (September 15 1992)	\N
317	Summer in the Mountains	 (September 22 1992)	\N
318	Oriental Falls	 (September 29 1992)	\N
319	Autumn Palette	 (October 6 1992)	\N
320	Cypress Swamp	 (October 13 1992)	\N
321	Downstream View	 (October 20 1992)	\N
322	Just Before the Storm	 (October 27 1992)	\N
323	Fisherman's Paradise	 (November 3 1992)	\N
324	Desert Hues	 (November 10 1992)	\N
325	The Property Line	 (November 17 1992)	\N
326	In the Stillness of Morning	 (December 1 1992)	\N
327	Delightful Meadow Home	 (December 8 1992)	\N
328	First Snow	 (December 15 1992)	\N
329	Lake in the Valley	 (December 22 1992)	\N
330	A Trace of Spring	 (December 29 1992)	\N
331	An Arctic Winter Day	 (January 5 1993)	\N
332	Snow Birch	 (January 12 1993)	\N
333	Early Autumn	 (January 19 1993)	\N
334	Tranquil Wooded Stream	 (January 26 1993)	\N
335	Purple Mountain Range	 (February 2 1993)	\N
336	Storm's a Comin'	 (February 9 1993)	\N
337	Sunset Aglow	 (February 16 1993)	\N
338	Evening at the Falls	 (February 23 1993)	\N
339	Twilight Beauty	 (March 2 1993)	\N
340	Angler's Haven	 (March 9 1993)	\N
341	Rustic Winter Woods	 (March 16 1993)	\N
342	Wilderness Falls	 (March 23 1993)	\N
343	Winter at the Farm	 (March 30 1993)	\N
344	Daisies at Dawn	 (April 6 1993)	\N
345	A Spectacular View	 (April 13 1993)	\N
346	Daybreak	 (April 20 1993)	\N
347	Island Paradise	 (April 27 1993)	\N
348	Sunlight in the Shadows	 (May 4 1993)	\N
349	Splendor of a Snowy Winter	 (May 11 1993)	\N
350	Forest River	 (May 18 1993)	\N
351	Golden Glow of Morning	 (May 20 1993)	\N
352	Fisherman's Trail	 (May 25 1993)	 After painting the canvas to resemble wood
353	A Warm Winter	 (June 1 1993)	\N
354	Under Pastel Skies	 (June 8 1993)	\N
355	Golden Rays of Sunlight	 (June 15 1993)	\N
356	The Magic of Fall	 (June 22 1993)	\N
357	Glacier Lake	 (June 29 1993)	\N
358	The Old Weathered Barn	 (July 6 1993)	\N
359	Deep Forest Falls	 (July 13 1993)	\N
360	Winter's Grace	 (July 20 1993)	\N
361	Splendor of Autumn	 (July 27 1993)	\N
362	Tranquil Seas	 (August 3 1993)	\N
363	Mountain Serenity	 (August 10 1993)	\N
364	Home Before Nightfall	 (August 17 1993)	\N
365	Island in the Wilderness	 (August 24 1993)	\N
366	Autumn Oval	 (August 31 1993)	\N
367	Seasonal Progression	 (September 7 1993)	\N
368	Light at the Summit	 (September 14 1993)	\N
369	Countryside Barn	 (September 21 1993)	\N
370	Mountain Lake Falls	 (September 28 1993)	 Special guest Steve Ross (Bob's son)
371	Cypress Creek	 (October 5 1993)	\N
372	Trapper's Cabin	 (October 12 1993)	\N
373	Storm on the Horizon	 (October 19 1993)	\N
374	Pot O' Posies	 (October 26 1993)	\N
375	A Perfect Winter Day	 (November 2 1993)	\N
376	Aurora's Dance	 (November 9 1993)	\N
377	Woodsman's Retreat	 (November 16 1993)	\N
378	Babbling Brook	 (November 23 1993)	\N
379	Woodgrain View	 (November 30 1993)	\N
380	Winter's Peace	 (December 7 1993)	\N
381	Wilderness Trail	 (December 14 1993)	\N
382	A Copper Winter	 (December 21 1993)	\N
383	Misty Foothills	 (December 28 1993)	\N
384	Through the Window	 (January 4 1994)	\N
385	Home in the Valley	 (January 11 1994)	\N
386	Mountains of Grace	 (January 18 1994)	 Guest Artist: Steve Ross
387	Seaside Harmony	 (January 25 1994)	\N
388	A Cold Spring Day	 (February 1 1994)	\N
389	Evening's Glow	 (February 8 1994)	\N
390	Blue Ridge Falls	 (February 15 1994)	\N
391	Reflections of Calm	 (February 22 1994)	\N
392	Before the Snowfall	 (March 1 1994)	\N
393	Winding Stream	 (March 8 1994)	\N
394	Tranquility Cove	 (March 15 1994)	\N
395	Cabin in the Hollow	 (March 22 1994)	\N
396	View From Clear Creek	 (March 29 1994)	\N
397	Bridge to Autumn	 (April 5 1994)	\N
398	Trail's End	 (April 12 1994)	\N
399	Evergreen Valley	 (April 19 1994)	\N
400	Balmy Beach	 (April 26 1994)	\N
401	Lake at the Ridge	 (May 3 1994)	 (featuring Steve Ross)
402	In the Midst of Winter	 (May 10 1994)	\N
403	Wilderness Day	 (May 17 1994)	\N
\.


--
-- Data for Name: subjectmatter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjectmatter (idrow, episode, title, apple_frame, aurora_borealis, barn, beach, boat, bridge, building, bushes, cabin, cactus, circle_frame, cirrus, cliff, clouds, conifer, cumulus, deciduous, diane_andre, dock, double_oval_frame, farm, fence, fire, florida_frame, flowers, fog, framed, grass, guest, half_circle_frame, half_oval_frame, hills, lake, lakes, lighthouse, mill, moon, mountain, mountains, night, ocean, oval_frame, palm_trees, path, person, portrait, rectangle_3d_frame, rectangular_frame, river, rocks, seashell_frame, snow, snowy_mountain, split_frame, steve_ross, structure, sun, tomb_frame, tree, trees, triple_frame, waterfall, waves, windmill, window_frame, winter, wood_framed) FROM stdin;
1	S01E01	A WALK IN THE WOODS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
2	S01E02	MT. MCKINLEY	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
3	S01E03	EBONY SUNSET	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	t	f	f	f	f	f	t	f
4	S01E04	WINTER MIST	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
5	S01E05	QUIET STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
6	S01E06	WINTER MOON	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
7	S01E07	AUTUMN MOUNTAINS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
8	S01E08	PEACEFUL VALLEY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
9	S01E09	SEASCAPE	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
10	S01E10	MOUNTAIN LAKE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
11	S01E11	WINTER GLOW	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
12	S01E12	SNOWFALL	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
13	S01E13	FINAL REFLECTIONS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
14	S02E01	MEADOW LAKE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
15	S02E02	WINTER SUN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
16	S02E03	EBONY SEA	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	t	f	f	f	f
17	S02E04	SHADES OF GREY	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	f	f
18	S02E05	AUTUMN SPLENDOR	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
19	S02E06	BLACK RIVER	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
20	S02E07	BROWN MOUNTAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
21	S02E08	REFLECTIONS	f	f	f	f	f	f	f	t	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
22	S02E09	BLACK & WHITE SEASCAPE	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	t	f	f	t	f	f	f	f
23	S02E10	LAZY RIVER	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
24	S02E11	BLACK WATERFALL	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
25	S02E12	MOUNTAIN WATERFALL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
26	S02E13	FINAL GRACE	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
27	S03E01	MOUNTAIN RETREAT	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
28	S03E02	BLUE MOON	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f
29	S03E03	BUBBLING STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
30	S03E04	WINTER NIGHT	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
31	S03E05	DISTANT HILLS	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
32	S03E06	COVERED BRIDGE	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
33	S03E07	QUIET INLET	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
34	S03E08	NIGHT LIGHT	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f
35	S03E09	THE OLD MILL	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
36	S03E10	CAMPFIRE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
37	S03E11	RUSTIC BARN	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
38	S03E12	HIDDEN LAKE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
39	S03E13	PEACEFUL WATERS	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
40	S04E01	PURPLE SPLENDOR	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
41	S04E02	TRANQUIL VALLEY	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
42	S04E03	MAJESTIC MOUNTAINS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
43	S04E04	WINTER SAWSCAPE	f	f	f	f	f	f	f	f	t	f	t	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
44	S04E05	EVENING SEASCAPE	f	f	f	t	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f
45	S04E06	WARM SUMMER DAY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
46	S04E07	CABIN IN THE WOODS	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
47	S04E08	WETLANDS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
48	S04E09	COOL WATERS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
49	S04E10	QUIET WOODS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
50	S04E11	NORTHWEST MAJESTY	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
51	S04E12	AUTUMN DAYS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
52	S04E13	MOUNTAIN CHALLENGE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f
53	S05E01	MOUNTAIN WATERFALL	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
54	S05E02	TWILIGHT MEADOW	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
55	S05E03	MOUNTAIN BLOSSOMS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
56	S05E04	WINTER STILLNESS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
57	S05E05	QUIET POND	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
58	S05E06	OCEAN SUNRISE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f
59	S05E07	BUBBLING BROOK	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
60	S05E08	ARIZONA SPLENDOR	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
61	S05E09	ANATOMY OF A WAVE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
62	S05E10	THE WINDMILL	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f
63	S05E11	AUTUMN GLORY	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
64	S05E12	INDIAN GIRL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
65	S05E13	MEADOW STREAM	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
66	S06E01	BLUE RIVER	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
67	S06E02	NATURE'S EDGE	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
68	S06E03	MORNING MIST	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
69	S06E04	WHISPERING STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
70	S06E05	SECLUDED FOREST	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
71	S06E06	SNOW TRAIL	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
72	S06E07	ARCTIC BEAUTY	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
73	S06E08	HORIZONS WEST	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
74	S06E09	HIGH CHATEAU	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
75	S06E10	COUNTRY LIFE	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
76	S06E11	WESTERN EXPANSE	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f
77	S06E12	MARSHLANDS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
78	S06E13	BLAZE OF COLOR	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
79	S07E01	WINTER CABIN	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f
80	S07E02	SECLUDED LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
81	S07E03	EVERGREENS AT SUNSET	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
82	S07E04	MOUNTAIN CABIN	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	t	t	f	f	f	f	f	f	f
83	S07E05	PORTRAIT OF SALLY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
84	S07E06	MISTY WATERFALL	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
85	S07E07	BARN AT SUNSET	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
86	S07E08	MOUNTAIN SPLENDOR	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
87	S07E09	LAKE BY MOUNTAIN	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
88	S07E10	MOUNTAIN GLORY	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
89	S07E11	GREY WINTER	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
90	S07E12	DOCK SCENE	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f
91	S07E13	DARK WATERFALL	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
92	S08E01	MISTY ROLLING HILLS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
93	S08E02	LAKESIDE CABIN	f	f	f	f	f	f	f	t	t	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
94	S08E03	WARM WINTER DAY	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	t	f	f	f	f	f	t	f
95	S08E04	WATERSIDE WAY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
96	S08E05	HUNTER'S HAVEN	f	f	f	f	f	f	f	f	t	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
97	S08E06	BUBBLING MOUNTAIN BROOK	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
98	S08E07	WINTER HIDEAWAY	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
99	S08E08	FOOT OF THE MOUNTAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
100	S08E09	MAJESTIC PINE	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
101	S08E10	CACTUS AT SUNSET	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
102	S08E11	MOUNTAIN RANGE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
103	S08E12	LONELY RETREAT	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f
104	S08E13	NORTHERN LIGHTS	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
105	S09E01	WINTER EVERGREENS	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	t	t	f	f	f	f	f	t	f
106	S09E02	SURF'S UP	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
107	S09E03	RED SUNSET	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
108	S09E04	MEADOW ROAD	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
109	S09E05	WINTER OVAL	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	t	t	f	f	f	f	f	f	f
110	S09E06	SECLUDED BEACH	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
111	S09E07	FOREST HILLS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
112	S09E08	LITTLE HOUSE BY-THE-ROAD	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
113	S09E09	MOUNTAIN PATH	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
114	S09E10	COUNTRY CHARM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
115	S09E11	NATURE'S PARADISE	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
116	S09E12	MOUNTAIN-BY-THE-SEA	f	f	f	t	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	t	f	f	f	f
117	S09E13	MOUNTAIN HIDE-AWAY	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
118	S10E01	TOWERING PEAKS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
119	S10E02	CABIN AT SUNSET	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
120	S10E03	TWIN FALLS	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
121	S10E04	SECLUDED BRIDGE	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
122	S10E05	OCEAN BREEZE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
123	S10E06	AUTUMN WOODS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
124	S10E07	WINTER SOLITUDE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
125	S10E08	GOLDEN SUNSET	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
126	S10E09	MOUNTAIN OVAL	f	f	f	f	f	f	f	t	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
127	S10E10	OCEAN SUNSET	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
128	S10E11	TRIPLE VIEW	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	t	f	f	t	t	t	f	f	f	f	f	f
129	S10E12	WINTER FROST	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	t	t	f	f	f	f	f	t	f
130	S10E13	LAKESIDE CABIN	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
131	S11E01	MOUNTAIN STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
132	S11E02	COUNTRY CABIN	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
133	S11E03	DAISY DELIGHT	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
134	S11E04	HIDDEN STREAM	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
135	S11E05	TOWERING GLACIER	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
136	S11E06	OVAL BARN	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
137	S11E07	LAKESIDE PATH	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
138	S11E08	SUNSET OVAL	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
139	S11E09	WINTER BARN	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
140	S11E10	SUNSET OVER THE WAVES	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
141	S11E11	GOLDEN GLOW	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
142	S11E12	ROADSIDE BARN	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
143	S11E13	HAPPY ACCIDENT	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
144	S12E01	GOLDEN KNOLL	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f
145	S12E02	MOUNTAIN REFLECTIONS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
146	S12E03	SECLUDED MOUNTAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
147	S12E04	BRIGHT AUTUMN TREES	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
148	S12E05	BLACK SEASCAPE	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
149	S12E06	STEEP MOUNTAINS	f	f	f	f	f	f	f	t	t	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
150	S12E07	QUIET MOUNTAIN RIVER	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
151	S12E08	EVENING WATERFALL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
152	S12E09	TROPICAL SEASCAPE	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
153	S12E10	MOUNTAIN AT SUNSET	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
154	S12E11	SOFT MOUNTAIN GLOW	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
155	S12E12	MOUNTAIN IN AN OVAL	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
156	S12E13	WINTER MOUNTAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
157	S13E01	ROLLING HILLS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
158	S13E02	FROZEN SOLITUDE	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
159	S13E03	MEADOW BROOK	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
160	S13E04	EVENING AT SUNSET	f	f	f	f	f	f	f	t	t	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
161	S13E05	MOUNTAIN VIEW	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
162	S13E06	HIDDEN CREEK	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
163	S13E07	PEACEFUL HAVEN	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
164	S13E08	MOUNTAIN EXHIBITION	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
165	S13E09	EMERALD WATERS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
166	S13E10	MOUNTAIN SUMMIT	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
167	S13E11	CABIN HIDEAWAY	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
168	S13E12	OVAL ESSENCE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f
169	S13E13	LOST LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
170	S14E01	DISTANT MOUNTAINS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
171	S14E02	MEADOW BROOK SURPRISE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
172	S14E03	MOUNTAIN MOONLIGHT OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
173	S14E04	SNOWY SOLITUDE	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
174	S14E05	MOUNTAIN RIVER	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f
175	S14E06	GRACEFUL MOUNTAINS	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
176	S14E07	WINDY WAVES	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
177	S14E08	ON A CLEAR DAY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	t	f	t	t	f	f	f	f	f	t	f
178	S14E09	RIVERSIDE ESCAPE OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
179	S14E10	SURPRISING FALLS	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	t	f	f	f	f	f
180	S14E11	SHADOW POND	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
181	S14E12	MISTY FOREST OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
182	S14E13	NATURAL WONDER	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
183	S15E01	SPLENDOR OF WINTER	f	f	f	f	f	f	f	t	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f
184	S15E02	COLORS OF NATURE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
185	S15E03	GRANDPA'S BARN	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
186	S15E04	PEACEFUL REFLECTIONS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
187	S15E05	HIDDEN WINTER MOON OVAL	f	f	f	f	f	f	f	f	t	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
188	S15E06	WAVES OF WONDER	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
189	S15E07	CABIN BY THE POND	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
190	S15E08	FALL STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
191	S15E09	CHRISTMAS EVE SNOW	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
192	S15E10	FOREST DAWN OVAL	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
193	S15E11	PATHWAY TO AUTUMN	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
194	S15E12	DEEP FOREST LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
195	S15E13	PEAKS OF MAJESTY	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
196	S16E01	TWO SEASONS	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
197	S16E02	NESTLED CABIN	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
198	S16E03	WINTERTIME DISCOVERY	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
199	S16E04	MOUNTAIN MIRAGE	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
200	S16E05	DOUBLE OVAL FANTASY	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
201	S16E06	CONTEMPLATIVE LADY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
202	S16E07	DEEP WOODS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
203	S16E08	HIGH TIDE	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
204	S16E09	BARN IN SNOW OVAL	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
205	S16E10	THAT TIME OF YEAR	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f
206	S16E11	WATERFALL WONDER	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
207	S16E12	MIGHTY MOUNTAIN LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f
208	S16E13	WOODED STREAM OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
209	S17E01	GOLDEN MIST OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
210	S17E02	THE OLD HOME PLACE	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f
211	S17E03	SOOTHING VISTA	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
212	S17E04	STORMY SEAS	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
213	S17E05	COUNTRY TIME	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f
214	S17E06	A MILD WINTER'S DAY	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
215	S17E07	SPECTACULAR WATERFALL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
216	S17E08	VIEW FROM THE PARK	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
217	S17E09	LAKE VIEW	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	t	t	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	f	f	f	f	f	f
218	S17E10	OLD COUNTRY MILL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	t	f	f	t	f	f	f	f	f
219	S17E11	MORNING WALK	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
220	S17E12	NATURE'S SPLENDOR	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
221	S17E13	MOUNTAIN BEAUTY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
222	S18E01	HALF-OVAL VIGNETTE	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
223	S18E02	ABSOLUTELY AUTUMN	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
224	S18E03	MOUNTAIN SECLUSION	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
225	S18E04	CRIMSON OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
226	S18E05	AUTUMN EXHIBITION	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
227	S18E06	MAJESTIC PEAKS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
228	S18E07	GOLDEN MORNING MIST	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
229	S18E08	WINTER LACE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
230	S18E09	SEASCAPE FANTASY	f	f	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
231	S18E10	DOUBLE OVAL STREAM	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
232	S18E11	ENCHANTED FOREST	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
233	S18E12	SOUTHWEST SERENITY	f	f	f	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
234	S18E13	RIPPLING WATERS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f
235	S19E01	SNOWFALL MAGIC	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
236	S19E02	QUIET MOUNTAIN LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
237	S19E03	FINAL EMBERS OF SUNLIGHT	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
238	S19E04	SNOWY MORN	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
239	S19E05	CAMPER'S HAVEN	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
240	S19E06	WATERFALL IN THE WOODS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
241	S19E07	COVERED BRIDGE OVAL	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
242	S19E08	SCENIC SECLUSION	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
243	S19E09	EBB TIDE	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
244	S19E10	AFTER THE RAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
245	S19E11	WINTER'S ELEGANCE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
246	S19E12	EVENING'S PEACE	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
247	S19E13	VALLEY OF TRANQUILITY	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
248	S20E01	MYSTIC MOUNTAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
249	S20E02	NEW DAY'S DAWN	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	t	f	f	f	f	f	f	f
250	S20E03	PASTEL WINTER	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
251	S20E04	HAZY DAY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
252	S20E05	DIVINE ELEGANCE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
253	S20E06	CLIFFSIDE	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
254	S20E07	AUTUMN FANTASY	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
255	S20E08	THE OLD OAK TREE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f
256	S20E09	WINTER'S PARADISE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
257	S20E10	DAYS GONE BY	f	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
258	S20E11	CHANGE OF SEASONS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
259	S20E12	HIDDEN DELIGHT	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
260	S20E13	DOUBLE TAKE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
261	S21E01	VALLEY VIEW	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
262	S21E02	TRANQUIL DAWN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
263	S21E03	ROYAL MAJESTY	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
264	S21E04	SERENITY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
265	S21E05	CABIN AT TRAIL'S END	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
266	S21E06	MOUNTAIN RHAPSODY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
267	S21E07	WILDERNESS CABIN	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
268	S21E08	BY THE SEA	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f
269	S21E09	INDIAN SUMMER	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
270	S21E10	BLUE WINTER	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
271	S21E11	DESERT GLOW	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
272	S21E12	LONE MOUNTAIN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
273	S21E13	FLORIDA'S GLORY	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
274	S22E01	AUTUMN IMAGES	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
275	S22E02	HINT OF SPRINGTIME	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
276	S22E03	AROUND THE BEND	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
277	S22E04	COUNTRYSIDE OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
278	S22E05	RUSSET WINTER	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	f	f	f	f	f	f	t	f
279	S22E06	PURPLE HAZE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
280	S22E07	DIMENSIONS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
281	S22E08	DEEP WILDERNESS HOME	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
282	S22E09	HAVEN IN THE VALLEY	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	t	f	f	t	t	f	f	f	f	f	f	f
283	S22E10	WINTERTIME BLUES	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
284	S22E11	PASTEL SEASCAPE	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
285	S22E12	COUNTRY CREEK	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
286	S22E13	SILENT FOREST	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
287	S23E01	FROSTY WINTER MORN	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
288	S23E02	FOREST EDGE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
289	S23E03	MOUNTAIN RIDGE LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f
290	S23E04	REFLECTIONS OF GOLD	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
291	S23E05	QUIET COVE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
292	S23E06	RIVER'S PEACE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
293	S23E07	AT DAWN'S LIGHT	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
294	S23E08	VALLEY WATERFALL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f
295	S23E09	TOWARD DAY'S END	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
296	S23E10	FALLS IN THE GLEN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
297	S23E11	FROZEN BEAUTY IN VIGNETTE	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
298	S23E12	CRIMSON TIDE	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
299	S23E13	WINTER BLISS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	t	t	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	t	f
300	S24E01	GRAY MOUNTAIN	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
301	S24E02	WAYSIDE POND	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
302	S24E03	TETON WINTER	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
303	S24E04	LITTLE HOME IN THE MEADOW	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
304	S24E05	A PRETTY AUTUMN DAY	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
305	S24E06	MIRRORED IMAGES	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
306	S24E07	BACK COUNTRY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
307	S24E08	GRACEFUL WATERFALL	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
308	S24E09	ICY LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	t	t	f	f	f	f	f	t	f
309	S24E10	ROWBOAT ON THE BEACH	f	f	f	t	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
310	S24E11	PORTRAIT OF WINTER	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
311	S24E12	THE FOOTBRIDGE	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
312	S24E13	SNOWBOUND CABIN	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
313	S25E01	HIDE-A-WAY COVE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
314	S25E02	ENCHANTED FALLS OVAL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
315	S25E03	NOT QUITE SPRING	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
316	S25E04	SPLASHES OF AUTUMN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
317	S25E05	SUMMER IN THE MOUNTAIN	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
318	S25E06	ORIENTAL FALLS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
319	S25E07	AUTUMN PALETTE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
320	S25E08	CYPRESS SWAMP	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f
321	S25E09	DOWNSTREAM VIEW	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
322	S25E10	JUST BEFORE THE STORM	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
323	S25E11	FISHERMAN'S PARADISE	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	t	f	f	f	f	f	f	f
324	S25E12	DESERT HUES	f	f	f	f	f	f	f	f	f	t	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
325	S25E13	THE PROPERTY LINE	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f
326	S26E01	IN THE STILLNESS OF MORNING	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
327	S26E02	DELIGHTFUL MEADOW HOME	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
328	S26E03	FIRST SNOW	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	t	f	f	f	f	f	t	f
329	S26E04	LAKE IN THE VALLEY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	t	f	f	f	f	f	f	f
330	S26E05	TRACE OF SPRING	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
331	S26E06	ARCTIC WINTER DAY	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
332	S26E07	SNOW BIRCH	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
333	S26E08	EARLY AUTUMN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
334	S26E09	TRANQUIL WOODED STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
335	S26E10	PURPLE MOUNTAIN RANGE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
336	S26E11	STORM'S A COMIN'	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
337	S26E12	SUNSET AGLOW	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
338	S26E13	EVENING AT THE FALLS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
339	S27E01	TWILIGHT BEAUTY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
340	S27E02	ANGLER'S HAVEN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
341	S27E03	RUSTIC WINTER WOODS	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	t	t	f	f	f	f	f	t	f
342	S27E04	WILDERNESS FALLS	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
343	S27E05	WINTER AT THE FARM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
344	S27E06	DAISIES AT DAWN	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
345	S27E07	SPECTACULAR VIEW	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
346	S27E08	DAYBREAK	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
347	S27E09	ISLAND PARADISE	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
348	S27E10	SUNLIGHT IN THE SHADOWS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
349	S27E11	SPLENDOR OF A SNOWY WHITE	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
350	S27E12	FOREST RIVER	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
351	S27E13	GOLDEN GLOW OF MORNING	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
352	S28E01	FISHERMAN'S TRAIL	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
353	S28E02	TO A WARM WINTER	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	t	f	t	t	f	f	f	f	f	t	f
354	S28E03	UNDER PASTEL SKIES	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
355	S28E04	GOLDEN RAYS OF SUNLIGHT	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
356	S28E05	MAGIC OF FALL	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f
357	S28E06	GLACIER LAKE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
358	S28E07	THE OLD WEATHERED BARN	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
359	S28E08	DEEP FOREST FALLS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
360	S28E09	WINTER'S GRACE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
361	S28E10	SPLENDOR OF AUTUMN	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
362	S28E11	TRANQUIL SEAS	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f
363	S28E12	MOUNTAIN SERENITY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
364	S28E13	HOME BEFORE NIGHTFALL	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
365	S29E01	ISLAND IN THE WILDERNESS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
366	S29E02	AUTUMN OVAL	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
367	S29E03	SEASONAL PROGRESSION	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	t	t	f	f	f	f	f	t	f
368	S29E04	LIGHT AT THE SUMMIT	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
369	S29E05	COUNTRYSIDE BARN	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f
370	S29E06	MOUNTAIN LAKE FALLS	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	t	t	f	t	f	f	f	f	f
371	S29E07	CYPRESS CREEK	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
372	S29E08	TRAPPER'S CABIN	f	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
373	S29E09	STORM ON THE HORIZON	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
374	S29E10	POT 'O POSIES	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f
375	S29E11	PERFECT WINTER'S DAY	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	t	f	f	t	t	f	f	f	f	f	t	f
376	S29E12	AURORA'S DANCE	f	t	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
377	S29E13	THE WOODMAN'S RETREAT	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
378	S30E01	BABBLING BROOK	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f
379	S30E02	WOODGRAIN VIEW	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	t
380	S30E03	WINTER'S PEACE	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
381	S30E04	WILDERNESS TRAIL	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
382	S30E05	COPPER WINTER	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
383	S30E06	MISTY FOOTHILLS	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
384	S30E07	THROUGH THE WINDOW	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	t	t	f
385	S30E08	HOME IN THE VALLEY	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
386	S30E09	MOUNTAINS OF GRACE	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
387	S30E10	SEASIDE HARMONY	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
388	S30E11	COLD SPRING DAY	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
389	S30E12	EVENING'S GLOW	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	t	f	f	f	f	f	f	f
390	S30E13	BLUE RIDGE FALLS	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f
391	S31E01	REFLECTIONS OF CALM	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
392	S31E02	BEFORE THE SNOWFALL	f	f	f	f	f	f	f	t	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
393	S31E03	WINDING STREAM	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
394	S31E04	TRANQUILITY COVE	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
395	S31E05	CABIN IN THE HOLLOW	f	f	f	f	f	f	f	f	t	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	t	f
396	S31E06	VIEW FROM CLEAR CREEK	f	f	f	f	f	f	f	t	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
397	S31E07	BRIDGE TO AUTUMN	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	t	f	f	f	f	f	f	f
398	S31E08	TRAIL'S END	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
399	S31E09	EVERGREEN VALLEY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	t	f	f	t	f	f	f	f	f	t	t	f	f	f	f	f	f	f
400	S31E10	BALMY BEACH	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f
401	S31E11	LAKE AT THE RIDGE	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	t	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	t	f	f	f	f	t	t	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	t	t	f	f	f	f	f	f	f
402	S31E12	IN THE MIDST OF WINTER	f	f	t	f	f	f	f	f	f	f	f	f	f	f	t	f	t	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	t	f	f	f	t	f	f	t	t	f	f	f	f	f	t	f
403	S31E13	WILDERNESS DAY	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	t	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	f	t	t	f	f	f	f	f	f	f
\.


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: colorsused colorsused_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colorsused
    ADD CONSTRAINT colorsused_pkey PRIMARY KEY (idrow);


--
-- Name: episodedates episodedates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodedates
    ADD CONSTRAINT episodedates_pkey PRIMARY KEY (idrow);


--
-- Name: subjectmatter subjectmatter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjectmatter
    ADD CONSTRAINT subjectmatter_pkey PRIMARY KEY (idrow);


--
-- Name: episodedates fk_episode_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodedates
    ADD CONSTRAINT fk_episode_id FOREIGN KEY (idrow) REFERENCES public.colorsused(idrow);


--
-- Name: subjectmatter fk_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjectmatter
    ADD CONSTRAINT fk_subject_id FOREIGN KEY (idrow) REFERENCES public.colorsused(idrow);


--
-- PostgreSQL database dump complete
--

