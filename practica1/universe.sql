--
-- PostgreSQL database dump
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
    name character varying(50) NOT NULL,
    millions_of_years integer,
    has_life boolean NOT NULL,
    dimensions character varying(40),
    galaxytypes_id integer NOT NULL
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
-- Name: galaxytypes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxytypes (
    galaxytypes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxytypes OWNER TO freecodecamp;

--
-- Name: galaxytypes_galaxytypes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxytypes_galaxytypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxytypes_galaxytypes_id_seq OWNER TO freecodecamp;

--
-- Name: galaxytypes_galaxytypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxytypes_galaxytypes_id_seq OWNED BY public.galaxytypes.galaxytypes_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    satellite character varying(50) NOT NULL,
    diameter real,
    orbital numeric
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
    surface real NOT NULL,
    atmospheric character varying(80),
    planettypes_id integer NOT NULL,
    moon_id integer NOT NULL
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
-- Name: planettypes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planettypes (
    planettypes_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planettypes OWNER TO freecodecamp;

--
-- Name: planettypes_planettypes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planettypes_planettypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planettypes_planettypes_id_seq OWNER TO freecodecamp;

--
-- Name: planettypes_planettypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planettypes_planettypes_id_seq OWNED BY public.planettypes.planettypes_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    orbital numeric,
    axis integer,
    period integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxytypes galaxytypes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytypes ALTER COLUMN galaxytypes_id SET DEFAULT nextval('public.galaxytypes_galaxytypes_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planettypes planettypes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planettypes ALTER COLUMN planettypes_id SET DEFAULT nextval('public.planettypes_planettypes_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'WLM  ', 1909, true, '11,000 x 3,600 ', 10);
INSERT INTO public.galaxy VALUES (2, 'IC 10  ', 1889, true, '4,600 x 4,000 ', 10);
INSERT INTO public.galaxy VALUES (3, 'Cetus dwarf ', 1999, true, '3,700 x 3,200 ', 1);
INSERT INTO public.galaxy VALUES (4, 'NGC 147  ', 1829, true, '9,400 x 5,900 ', 2);
INSERT INTO public.galaxy VALUES (5, 'Andromeda  III ', 1970, true, '3,200 x 2,200 ', 3);
INSERT INTO public.galaxy VALUES (6, 'NGC 185  ', 1787, true, '9,100 x 7,800 ', 3);
INSERT INTO public.galaxy VALUES (7, 'M110      ', 1773, true, '14,000 x 9,000 ', 3);
INSERT INTO public.galaxy VALUES (8, 'Andromeda   VIII', 2003, true, '35,000 x 7,900 ', 11);
INSERT INTO public.galaxy VALUES (9, 'M32      ', 1749, true, '7,900 x 5,300 ', 2);
INSERT INTO public.galaxy VALUES (10, 'Andromeda Galaxy', 964, true, '200,000', 5);
INSERT INTO public.galaxy VALUES (11, 'Andromeda I   ', 1970, true, '1,900 ', 1);
INSERT INTO public.galaxy VALUES (12, 'Small Magellanic Cloud', NULL, true, '16,000 x 9,100 ', 10);


--
-- Data for Name: galaxytypes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxytypes VALUES (1, 'E0    ', 'elliptical (0–7) ');
INSERT INTO public.galaxytypes VALUES (2, 'E0-1  ', 'intermediate   ');
INSERT INTO public.galaxytypes VALUES (3, 'E+    ', 'late elliptical');
INSERT INTO public.galaxytypes VALUES (4, 'SA0   ', 'ordinary ');
INSERT INTO public.galaxytypes VALUES (5, 'SB0   ', 'barred ');
INSERT INTO public.galaxytypes VALUES (6, 'SAB0  ', 'mixed ');
INSERT INTO public.galaxytypes VALUES (7, 'S(r)0 ', 'inner ring  ');
INSERT INTO public.galaxytypes VALUES (8, 'S(s)0 ', 'S-shaped');
INSERT INTO public.galaxytypes VALUES (9, 'S(rs)0', 'mixed ');
INSERT INTO public.galaxytypes VALUES (10, 'irr', 'n/a');
INSERT INTO public.galaxytypes VALUES (11, 'III    ', 'n/a');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mimas    ', 'Saturn Mimas', 8.4, NULL);
INSERT INTO public.moon VALUES (2, 'Enceladus', 'Saturn Enceladus', 3.3, NULL);
INSERT INTO public.moon VALUES (3, 'Miranda ', 'Uranus ', 3, NULL);
INSERT INTO public.moon VALUES (4, 'Tethys ', 'Saturn Tethys ', 2.4, NULL);
INSERT INTO public.moon VALUES (5, 'Io ', 'Jupiter ', 0.8, NULL);
INSERT INTO public.moon VALUES (6, 'The Moon', 'Earth', 0.1, NULL);
INSERT INTO public.moon VALUES (7, 'Phobos Deimos', 'Marte', 1, NULL);
INSERT INTO public.moon VALUES (8, 'Titania ', 'Uranus Titania ', 1, NULL);
INSERT INTO public.moon VALUES (9, 'Oberon  ', 'Uranus Oberon  ', 1, NULL);
INSERT INTO public.moon VALUES (10, 'Umbriel ', 'Uranus Umbriel ', 1, NULL);
INSERT INTO public.moon VALUES (11, 'Ariel   ', 'Uranus Ariel   ', 1, NULL);
INSERT INTO public.moon VALUES (12, 'Triton  ', 'Neptune Triton', 0.25, NULL);
INSERT INTO public.moon VALUES (13, 'Proteus ', 'Neptune Proteus', 0.25, NULL);
INSERT INTO public.moon VALUES (14, 'Nereid  ', 'Neptune Nereid', 0.25, NULL);
INSERT INTO public.moon VALUES (15, 'Sao        ', 'Neptune Sao', 0.25, NULL);
INSERT INTO public.moon VALUES (16, 'Laomedeia  ', 'Neptune Laomedeia', 0.25, NULL);
INSERT INTO public.moon VALUES (17, 'Psamathe   ', 'Neptune Psamathe', 0.25, NULL);
INSERT INTO public.moon VALUES (18, 'Hippocamp  ', 'Neptune Hippocamp', 0.25, NULL);
INSERT INTO public.moon VALUES (19, 'NO EXISTS', 'NO EXISTS', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Neso  ', 'Neptune Neso', 0.25, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 3, 'N/A', 1, 3);
INSERT INTO public.planet VALUES (2, 'Venus  ', 8, 'Carbon Dioxide, Nitrogen', 1, 3);
INSERT INTO public.planet VALUES (3, 'Earth  ', 9, 'Nitrogen, Oxygen', 1, 3);
INSERT INTO public.planet VALUES (4, 'Mars  ', 3, 'Carbon Dioxide, Nitrogen, Argon', 1, 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 24, 'Hydrogen, Helium', 1, 3);
INSERT INTO public.planet VALUES (6, 'Saturn1', 0.4, 'Hydrogen, Helium', 1, 3);
INSERT INTO public.planet VALUES (7, 'Uranus8', 0.87, 'Hydrogen, Helium, Methane', 1, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 11.15, ' Hydrogen, Helium, Methane', 1, 3);
INSERT INTO public.planet VALUES (9, 'Orcus', 24, 'Hydrogen, Helium     ', 1, 3);
INSERT INTO public.planet VALUES (10, 'Pluto', 24, 'Hydrogen, Helium     ', 1, 3);
INSERT INTO public.planet VALUES (11, 'Haumea', 24, 'Hydrogen, Helium ', 1, 3);
INSERT INTO public.planet VALUES (12, 'Quaoar', 24, 'Hydrogen, Helium ', 1, 3);
INSERT INTO public.planet VALUES (13, 'Makemake', 24, 'Hydrogen, Helium ', 1, 3);
INSERT INTO public.planet VALUES (14, 'Gonggong', 24, 'Hydrogen, Helium ', 1, 3);
INSERT INTO public.planet VALUES (15, 'Eris', 24, 'Hydrogen, Helium     ', 1, 3);


--
-- Data for Name: planettypes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planettypes VALUES (1, 'Giant planet   ', 'A massive planet. They are most commonly composed primarily of gas or ices');
INSERT INTO public.planettypes VALUES (2, 'Ice giant      ', 'Planets of mass similar to Uranus or Neptune; smaller than the gas giants, but still much larger than Earth.');
INSERT INTO public.planettypes VALUES (3, 'Mesoplanet     ', 'A planetary body with a size smaller than Mercury, but larger than Ceres.');
INSERT INTO public.planettypes VALUES (4, 'Mini-Neptune   ', 'Also known as a gas dwarf or transitional planet.');
INSERT INTO public.planettypes VALUES (5, 'Planetar       ', 'Either a brown dwarf—an object with a size larger than a planet but smaller than a star');
INSERT INTO public.planettypes VALUES (6, 'Super-Earth    ', 'An extrasolar planet with a mass higher than Earth`s.');
INSERT INTO public.planettypes VALUES (7, 'Super-Jupiter  ', 'An astronomical object that`s more massive than the planet Jupiter.');
INSERT INTO public.planettypes VALUES (8, 'Sub-Earth      ', 'A classification of planets "substantially less massive" than Earth and Venus.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Eridanus', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Cassiopeia', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Scorpius', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Crux', false, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Canceer', false, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: galaxytypes_galaxytypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxytypes_galaxytypes_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: planettypes_planettypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planettypes_planettypes_id_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: galaxytypes galaxytypes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytypes
    ADD CONSTRAINT galaxytypes_name_key UNIQUE (name);


--
-- Name: galaxytypes galaxytypes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytypes
    ADD CONSTRAINT galaxytypes_pkey PRIMARY KEY (galaxytypes_id);


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
-- Name: moon moon_satellite_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_satellite_key UNIQUE (satellite);


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
-- Name: planettypes planettypes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planettypes
    ADD CONSTRAINT planettypes_name_key UNIQUE (name);


--
-- Name: planettypes planettypes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planettypes
    ADD CONSTRAINT planettypes_pkey PRIMARY KEY (planettypes_id);


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
-- Name: galaxy galaxy_galaxytypes_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxytypes_id_fkey FOREIGN KEY (galaxytypes_id) REFERENCES public.galaxytypes(galaxytypes_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_planettypes_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planettypes_id_fkey FOREIGN KEY (planettypes_id) REFERENCES public.planettypes(planettypes_id);


--
-- PostgreSQL database dump complete
--

