--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    guesses integer NOT NULL,
    secret_number integer
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
    username character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (1, 3, 999, NULL);
INSERT INTO public.games VALUES (2, 3, 833, NULL);
INSERT INTO public.games VALUES (3, 4, 495, NULL);
INSERT INTO public.games VALUES (4, 4, 295, NULL);
INSERT INTO public.games VALUES (5, 3, 344, NULL);
INSERT INTO public.games VALUES (6, 3, 545, NULL);
INSERT INTO public.games VALUES (7, 3, 584, NULL);
INSERT INTO public.games VALUES (8, 5, 5, NULL);
INSERT INTO public.games VALUES (9, 5, 959, NULL);
INSERT INTO public.games VALUES (10, 6, 153, NULL);
INSERT INTO public.games VALUES (11, 6, 513, NULL);
INSERT INTO public.games VALUES (12, 5, 200, NULL);
INSERT INTO public.games VALUES (13, 5, 249, NULL);
INSERT INTO public.games VALUES (14, 5, 104, NULL);
INSERT INTO public.games VALUES (15, 7, 511, 510);
INSERT INTO public.games VALUES (16, 7, 492, 491);
INSERT INTO public.games VALUES (17, 8, 657, 656);
INSERT INTO public.games VALUES (18, 8, 119, 118);
INSERT INTO public.games VALUES (19, 7, 341, 338);
INSERT INTO public.games VALUES (20, 7, 168, 166);
INSERT INTO public.games VALUES (21, 7, 748, 747);
INSERT INTO public.games VALUES (22, 9, 466, 465);
INSERT INTO public.games VALUES (23, 9, 134, 133);
INSERT INTO public.games VALUES (24, 10, 345, 344);
INSERT INTO public.games VALUES (25, 10, 621, 620);
INSERT INTO public.games VALUES (26, 9, 371, 368);
INSERT INTO public.games VALUES (27, 9, 681, 679);
INSERT INTO public.games VALUES (28, 9, 395, 394);
INSERT INTO public.games VALUES (29, 11, 13, 12);
INSERT INTO public.games VALUES (30, 11, 67, 66);
INSERT INTO public.games VALUES (31, 12, 541, 540);
INSERT INTO public.games VALUES (32, 12, 815, 814);
INSERT INTO public.games VALUES (33, 11, 546, 543);
INSERT INTO public.games VALUES (34, 11, 835, 833);
INSERT INTO public.games VALUES (35, 11, 133, 132);
INSERT INTO public.games VALUES (36, 13, 539, 538);
INSERT INTO public.games VALUES (37, 13, 999, 998);
INSERT INTO public.games VALUES (38, 14, 738, 737);
INSERT INTO public.games VALUES (39, 14, 961, 960);
INSERT INTO public.games VALUES (40, 13, 22, 19);
INSERT INTO public.games VALUES (41, 13, 499, 497);
INSERT INTO public.games VALUES (42, 13, 420, 419);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1727362690244');
INSERT INTO public.users VALUES (2, 'user_1727362690243');
INSERT INTO public.users VALUES (3, 'user_1727363027790');
INSERT INTO public.users VALUES (4, 'user_1727363027789');
INSERT INTO public.users VALUES (5, 'user_1727363045761');
INSERT INTO public.users VALUES (6, 'user_1727363045760');
INSERT INTO public.users VALUES (7, 'user_1727363520797');
INSERT INTO public.users VALUES (8, 'user_1727363520796');
INSERT INTO public.users VALUES (9, 'user_1727363575742');
INSERT INTO public.users VALUES (10, 'user_1727363575741');
INSERT INTO public.users VALUES (11, 'user_1727363780844');
INSERT INTO public.users VALUES (12, 'user_1727363780843');
INSERT INTO public.users VALUES (13, 'user_1727363846044');
INSERT INTO public.users VALUES (14, 'user_1727363846043');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

