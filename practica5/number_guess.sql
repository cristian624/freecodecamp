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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_tries integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 503);
INSERT INTO public.games VALUES (2, 1, 561);
INSERT INTO public.games VALUES (3, 2, 131);
INSERT INTO public.games VALUES (4, 2, 84);
INSERT INTO public.games VALUES (5, 1, 511);
INSERT INTO public.games VALUES (6, 1, 258);
INSERT INTO public.games VALUES (7, 1, 488);
INSERT INTO public.games VALUES (8, 3, 46);
INSERT INTO public.games VALUES (9, 3, 51);
INSERT INTO public.games VALUES (10, 4, 610);
INSERT INTO public.games VALUES (11, 4, 386);
INSERT INTO public.games VALUES (12, 3, 634);
INSERT INTO public.games VALUES (13, 3, 577);
INSERT INTO public.games VALUES (14, 3, 520);
INSERT INTO public.games VALUES (15, 5, 549);
INSERT INTO public.games VALUES (16, 5, 557);
INSERT INTO public.games VALUES (17, 6, 221);
INSERT INTO public.games VALUES (18, 6, 142);
INSERT INTO public.games VALUES (19, 5, 460);
INSERT INTO public.games VALUES (20, 5, 396);
INSERT INTO public.games VALUES (21, 5, 407);
INSERT INTO public.games VALUES (22, 7, 10);
INSERT INTO public.games VALUES (23, 8, 251);
INSERT INTO public.games VALUES (24, 8, 698);
INSERT INTO public.games VALUES (25, 9, 652);
INSERT INTO public.games VALUES (26, 9, 999);
INSERT INTO public.games VALUES (27, 8, 891);
INSERT INTO public.games VALUES (28, 8, 360);
INSERT INTO public.games VALUES (29, 8, 76);
INSERT INTO public.games VALUES (30, 10, 618);
INSERT INTO public.games VALUES (31, 10, 528);
INSERT INTO public.games VALUES (32, 11, 399);
INSERT INTO public.games VALUES (33, 11, 430);
INSERT INTO public.games VALUES (34, 10, 453);
INSERT INTO public.games VALUES (35, 10, 404);
INSERT INTO public.games VALUES (36, 10, 675);
INSERT INTO public.games VALUES (37, 31, 10);
INSERT INTO public.games VALUES (38, 31, 9);
INSERT INTO public.games VALUES (39, 32, 6);
INSERT INTO public.games VALUES (40, 32, 2);
INSERT INTO public.games VALUES (41, 33, 11);
INSERT INTO public.games VALUES (42, 33, 7);
INSERT INTO public.games VALUES (43, 32, 10);
INSERT INTO public.games VALUES (44, 32, 11);
INSERT INTO public.games VALUES (45, 32, 10);
INSERT INTO public.games VALUES (46, 34, 8);
INSERT INTO public.games VALUES (47, 34, 7);
INSERT INTO public.games VALUES (48, 35, 2);
INSERT INTO public.games VALUES (49, 35, 6);
INSERT INTO public.games VALUES (50, 34, 8);
INSERT INTO public.games VALUES (51, 34, 10);
INSERT INTO public.games VALUES (52, 34, 8);
INSERT INTO public.games VALUES (53, 31, 5);
INSERT INTO public.games VALUES (54, 36, 11);
INSERT INTO public.games VALUES (55, 36, 11);
INSERT INTO public.games VALUES (56, 37, 11);
INSERT INTO public.games VALUES (57, 37, 2);
INSERT INTO public.games VALUES (58, 36, 10);
INSERT INTO public.games VALUES (59, 36, 11);
INSERT INTO public.games VALUES (60, 36, 2);
INSERT INTO public.games VALUES (61, 31, 6);
INSERT INTO public.games VALUES (62, 38, 8);
INSERT INTO public.games VALUES (63, 38, 3);
INSERT INTO public.games VALUES (64, 39, 3);
INSERT INTO public.games VALUES (65, 39, 11);
INSERT INTO public.games VALUES (66, 38, 9);
INSERT INTO public.games VALUES (67, 38, 8);
INSERT INTO public.games VALUES (68, 38, 5);
INSERT INTO public.games VALUES (69, 40, 10);
INSERT INTO public.games VALUES (70, 40, 4);
INSERT INTO public.games VALUES (71, 41, 6);
INSERT INTO public.games VALUES (72, 41, 9);
INSERT INTO public.games VALUES (73, 40, 10);
INSERT INTO public.games VALUES (74, 40, 8);
INSERT INTO public.games VALUES (75, 40, 3);
INSERT INTO public.games VALUES (76, 42, 8);
INSERT INTO public.games VALUES (77, 43, 3);
INSERT INTO public.games VALUES (78, 43, 7);
INSERT INTO public.games VALUES (79, 44, 8);
INSERT INTO public.games VALUES (80, 44, 4);
INSERT INTO public.games VALUES (81, 43, 11);
INSERT INTO public.games VALUES (82, 43, 4);
INSERT INTO public.games VALUES (83, 43, 6);
INSERT INTO public.games VALUES (84, 45, 11);
INSERT INTO public.games VALUES (85, 46, 8);
INSERT INTO public.games VALUES (86, 46, 3);
INSERT INTO public.games VALUES (87, 45, 8);
INSERT INTO public.games VALUES (88, 45, 10);
INSERT INTO public.games VALUES (89, 45, 9);
INSERT INTO public.games VALUES (90, 47, 5);
INSERT INTO public.games VALUES (91, 48, 2);
INSERT INTO public.games VALUES (92, 47, 5);
INSERT INTO public.games VALUES (93, 47, 7);
INSERT INTO public.games VALUES (94, 47, 4);
INSERT INTO public.games VALUES (95, 49, 5);
INSERT INTO public.games VALUES (96, 49, 11);
INSERT INTO public.games VALUES (97, 50, 6);
INSERT INTO public.games VALUES (98, 50, 3);
INSERT INTO public.games VALUES (99, 49, 10);
INSERT INTO public.games VALUES (100, 49, 8);
INSERT INTO public.games VALUES (101, 49, 4);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, NULL);
INSERT INTO public.users VALUES (2, NULL);
INSERT INTO public.users VALUES (3, NULL);
INSERT INTO public.users VALUES (4, NULL);
INSERT INTO public.users VALUES (5, NULL);
INSERT INTO public.users VALUES (6, NULL);
INSERT INTO public.users VALUES (7, NULL);
INSERT INTO public.users VALUES (8, NULL);
INSERT INTO public.users VALUES (9, NULL);
INSERT INTO public.users VALUES (10, NULL);
INSERT INTO public.users VALUES (11, NULL);
INSERT INTO public.users VALUES (12, NULL);
INSERT INTO public.users VALUES (13, NULL);
INSERT INTO public.users VALUES (14, 'user_1677636887243');
INSERT INTO public.users VALUES (15, 'user_1677636887242');
INSERT INTO public.users VALUES (16, 'user_1677637019944');
INSERT INTO public.users VALUES (17, 'user_1677637019943');
INSERT INTO public.users VALUES (18, 'user_1677637531510');
INSERT INTO public.users VALUES (19, 'user_1677637531509');
INSERT INTO public.users VALUES (20, 'user_1677639486748');
INSERT INTO public.users VALUES (21, 'user_1677639486747');
INSERT INTO public.users VALUES (22, 'user_1677639553444');
INSERT INTO public.users VALUES (23, 'user_1677639553443');
INSERT INTO public.users VALUES (24, 'user_1677641506057');
INSERT INTO public.users VALUES (25, 'user_1677641506056');
INSERT INTO public.users VALUES (26, 'user_1677641531477');
INSERT INTO public.users VALUES (27, 'user_1677641531476');
INSERT INTO public.users VALUES (28, 'onu');
INSERT INTO public.users VALUES (29, 'user_1677641706919');
INSERT INTO public.users VALUES (30, 'user_1677641706918');
INSERT INTO public.users VALUES (31, 'cris');
INSERT INTO public.users VALUES (32, 'user_1677642539031');
INSERT INTO public.users VALUES (33, 'user_1677642539030');
INSERT INTO public.users VALUES (34, 'user_1677642603602');
INSERT INTO public.users VALUES (35, 'user_1677642603601');
INSERT INTO public.users VALUES (36, 'user_1677642781888');
INSERT INTO public.users VALUES (37, 'user_1677642781887');
INSERT INTO public.users VALUES (38, 'user_1677643039370');
INSERT INTO public.users VALUES (39, 'user_1677643039369');
INSERT INTO public.users VALUES (40, 'user_1677643096553');
INSERT INTO public.users VALUES (41, 'user_1677643096552');
INSERT INTO public.users VALUES (42, 'puma');
INSERT INTO public.users VALUES (43, 'user_1677643319384');
INSERT INTO public.users VALUES (44, 'user_1677643319383');
INSERT INTO public.users VALUES (45, 'user_1677643547554');
INSERT INTO public.users VALUES (46, 'user_1677643547553');
INSERT INTO public.users VALUES (47, 'user_1677643565081');
INSERT INTO public.users VALUES (48, 'user_1677643565080');
INSERT INTO public.users VALUES (49, 'user_1677643585383');
INSERT INTO public.users VALUES (50, 'user_1677643585382');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 101, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 50, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

