
--
-- PostgreSQL database dump
--
-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
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
DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--
CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';

ALTER DATABASE universe OWNER TO freecodecamp;
\connect universe
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text NOT NULL,
    nothing boolean,
    shit integer
);

ALTER TABLE public.galaxy OWNER TO freecodecamp;
--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;
--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius_in_km numeric(100,2) NOT NULL,
    planet_id integer,
    fullg boolean
);

ALTER TABLE public.moon OWNER TO freecodecamp;
--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;
--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    star_id integer
);

ALTER TABLE public.planet OWNER TO freecodecamp;
--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;
--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    has_life boolean NOT NULL,
    galaxy_id integer
);

ALTER TABLE public.star OWNER TO freecodecamp;
--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;
--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(43) NOT NULL,
    light integer NOT NULL
);

ALTER TABLE public.sun OWNER TO freecodecamp;
--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--
CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;
--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--
ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);

--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);

--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);

--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);

--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.galaxy VALUES (1, 'nipton', 'star', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'majar', 'skol', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'batar', 'kols', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'fjii', 'jiiji', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'fkdsj', 'fljl', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'kfjlo', 'koi', NULL, NULL);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.moon VALUES (1, 'mona', 43.00, 4, NULL);
INSERT INTO public.moon VALUES (2, 'shiba', 3453.00, 5, NULL);
INSERT INTO public.moon VALUES (3, 'btc', 535.00, 6, NULL);
INSERT INTO public.moon VALUES (10, 'kilo', 43.00, 6, NULL);
INSERT INTO public.moon VALUES (11, 'lilo', 442.00, 5, NULL);
INSERT INTO public.moon VALUES (12, 'liko', 533.00, 6, NULL);
INSERT INTO public.moon VALUES (13, 'kilGo', 43.00, 17, NULL);
INSERT INTO public.moon VALUES (14, 'lilGo', 4442.00, 21, NULL);
INSERT INTO public.moon VALUES (15, 'lrikro', 533.00, 16, NULL);
INSERT INTO public.moon VALUES (16, 'kilTRGo', 453.00, 17, NULL);
INSERT INTO public.moon VALUES (17, 'liGFlGo', 445342.00, 21, NULL);
INSERT INTO public.moon VALUES (18, 'lrikRro', 5353.00, 16, NULL);
INSERT INTO public.moon VALUES (19, 'kilTRRGo', 45433.00, 17, NULL);
INSERT INTO public.moon VALUES (20, 'liGFlGGo', 4445342.00, 21, NULL);
INSERT INTO public.moon VALUES (21, 'lriFkRro', 53553.00, 16, NULL);
INSERT INTO public.moon VALUES (22, 'kpoRGo', 33233.00, 17, NULL);
INSERT INTO public.moon VALUES (23, 'MALIo', 21342.00, 21, NULL);
INSERT INTO public.moon VALUES (24, 'lriFkEro', 5213.00, 16, NULL);
INSERT INTO public.moon VALUES (25, 'kpo', 33.00, 17, NULL);
INSERT INTO public.moon VALUES (26, 'MALo', 22.00, 21, NULL);
INSERT INTO public.moon VALUES (27, 'lro', 53.00, 16, NULL);
INSERT INTO public.moon VALUES (28, 'kpTEo', 3945.00, 17, NULL);
INSERT INTO public.moon VALUES (29, 'MA3o', 2.00, 21, NULL);
INSERT INTO public.moon VALUES (30, 'lrlo', 93.00, 16, NULL);
INSERT INTO public.moon VALUES (31, 'kMLo', 365.00, 17, NULL);
INSERT INTO public.moon VALUES (32, 'MA3Go', 322.00, 21, NULL);
INSERT INTO public.moon VALUES (33, 'lFrlo', 9533.00, 16, NULL);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.planet VALUES (4, 'haza', 3414, true, 2);
INSERT INTO public.planet VALUES (5, 'jiko', 43445, false, 4);
INSERT INTO public.planet VALUES (6, 'liko', 54332, true, 3);
INSERT INTO public.planet VALUES (16, 'tat', 432, true, 4);
INSERT INTO public.planet VALUES (17, 'ara', 4345, false, 5);
INSERT INTO public.planet VALUES (18, 'FDJL', 435, false, 6);
INSERT INTO public.planet VALUES (19, 'RFEO', 553, false, 3);
INSERT INTO public.planet VALUES (20, 'jfdkj', 42, true, 6);
INSERT INTO public.planet VALUES (21, 'jk', 23, false, 4);
INSERT INTO public.planet VALUES (22, 'kiko', 2, true, 2);
INSERT INTO public.planet VALUES (23, 'kilop', 5, false, 4);
INSERT INTO public.planet VALUES (24, 'salim', 32, false, 5);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.star VALUES (2, 'goko', 13214, true, 1);
INSERT INTO public.star VALUES (3, 'jiji', 3948, true, 2);
INSERT INTO public.star VALUES (4, 'fifi', 453958, false, 3);
INSERT INTO public.star VALUES (5, 'hamid', 32, false, 4);
INSERT INTO public.star VALUES (6, 'adel', 43, true, 5);
INSERT INTO public.star VALUES (7, 'kalb', 32, false, 6);

--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--
INSERT INTO public.sun VALUES (1, 'holo', 43);
INSERT INTO public.sun VALUES (2, 'holfe', 433);
INSERT INTO public.sun VALUES (3, 'holf4Fe', 43334);

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);

--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);

--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);

--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);

--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);

--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);

--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);

--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);

--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);

--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);

--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);

--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);

--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);

--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);

--
-- PostgreSQL database dump complete
--
