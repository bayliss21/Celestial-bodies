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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    name character varying(30),
    celestial_bodies_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    description character varying(30) NOT NULL
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_celestial_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_celestial_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_celestial_bodies_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_million_years integer,
    colour character varying(30),
    size integer
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
    name character varying(50) NOT NULL,
    has_life boolean,
    planet_id integer,
    description character varying(30)
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean NOT NULL,
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
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    age_in_million_years integer,
    galaxy_id integer NOT NULL
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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_celestial_bodies_id_seq'::regclass);


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
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES ('Hydra', 1, 2, 'Largest modern constellation');
INSERT INTO public.celestial_bodies VALUES ('Ursa Major', 2, 2, 'Great bear');
INSERT INTO public.celestial_bodies VALUES ('Virgo', 3, 2, 'The maiden');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 14000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13600, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major', 13400, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cygnus', 11600, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Virgo A', 9600, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', 12700, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', false, 3, 'Earthy cheese moon');
INSERT INTO public.moon VALUES (2, 'moon 1', false, 5, 'Jupiter moon 1');
INSERT INTO public.moon VALUES (3, 'moon 2', false, 5, 'Jupiter moon 2');
INSERT INTO public.moon VALUES (4, 'moon Europa', false, 5, 'Smallest Jupiter moon II');
INSERT INTO public.moon VALUES (5, 'moon 4', false, 5, 'Jupiter moon 4');
INSERT INTO public.moon VALUES (6, 'moon 5', false, 5, 'Jupiter moon 5');
INSERT INTO public.moon VALUES (7, 'moon 6', false, 5, 'Jupiter moon 6');
INSERT INTO public.moon VALUES (8, 'moon 7', false, 5, 'Jupiter moon 7');
INSERT INTO public.moon VALUES (9, 'moon 8', false, 5, 'Jupiter moon 8');
INSERT INTO public.moon VALUES (10, 'moon Ganymede', false, 5, 'The largest Jupiter moon');
INSERT INTO public.moon VALUES (11, 'moon 10', false, 5, 'Jupiter moon 10');
INSERT INTO public.moon VALUES (12, 'moon 11', false, 5, 'Jupiter moon 11');
INSERT INTO public.moon VALUES (13, 'moon Lo', false, 5, 'Innermost moon of Jupiter');
INSERT INTO public.moon VALUES (14, 'moon Amalthea', false, 5, '5th moon to be discovered');
INSERT INTO public.moon VALUES (15, 'moon 14', false, 5, 'Jupiter moon 14');
INSERT INTO public.moon VALUES (16, 'moon 15', false, 5, 'Jupiter moon 15');
INSERT INTO public.moon VALUES (17, 'moon 16', false, 5, 'Jupiter moon 16');
INSERT INTO public.moon VALUES (18, 'moon 17', false, 5, 'Jupiter moon 17');
INSERT INTO public.moon VALUES (19, 'moon 18', false, 5, 'Jupiter moon 18');
INSERT INTO public.moon VALUES (20, 'moon Dionne', false, 6, 'Greek goddess');
INSERT INTO public.moon VALUES (21, 'moon Titan', false, 6, 'Largest in the solar system');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet in the solar system', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet in the solar system', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Trees grow here!', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the solar system', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Its got rings!', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Almost inappropriate name', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Named after the roman god', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'The dwarf planet', false, 1);
INSERT INTO public.planet VALUES (10, 'Rigel planet 1', 'Uninhabitable', false, 3);
INSERT INTO public.planet VALUES (11, 'Canis planet 3', 'Made up dogs live here', false, 5);
INSERT INTO public.planet VALUES (12, 'Alpha planet 1', 'Planet with alpha sun', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 147, 4600, 2);
INSERT INTO public.star VALUES (2, 'Serius', 1560, 5300, 2);
INSERT INTO public.star VALUES (3, 'Rigel', 183, 6700, 2);
INSERT INTO public.star VALUES (4, 'Alpha', 2350, 6600, 1);
INSERT INTO public.star VALUES (5, 'Beta Canis Majoris', 5127, 7600, 3);
INSERT INTO public.star VALUES (6, 'Zeta Virginis', 3047, 5100, 5);


--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_celestial_bodies_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


--
-- Name: celestial_bodies celestial_bodies_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_unq UNIQUE (celestial_bodies_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

