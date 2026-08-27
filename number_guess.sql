--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer
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
    name character varying(22),
    user_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 58, 195);
INSERT INTO public.games VALUES (2, 58, 716);
INSERT INTO public.games VALUES (3, 59, 650);
INSERT INTO public.games VALUES (4, 59, 480);
INSERT INTO public.games VALUES (5, 58, 506);
INSERT INTO public.games VALUES (6, 58, 445);
INSERT INTO public.games VALUES (7, 58, 597);
INSERT INTO public.games VALUES (8, 60, 961);
INSERT INTO public.games VALUES (9, 60, 890);
INSERT INTO public.games VALUES (10, 61, 893);
INSERT INTO public.games VALUES (11, 61, 537);
INSERT INTO public.games VALUES (12, 60, 605);
INSERT INTO public.games VALUES (13, 60, 912);
INSERT INTO public.games VALUES (14, 60, 318);
INSERT INTO public.games VALUES (15, 62, 818);
INSERT INTO public.games VALUES (16, 62, 821);
INSERT INTO public.games VALUES (17, 63, 608);
INSERT INTO public.games VALUES (18, 63, 591);
INSERT INTO public.games VALUES (19, 62, 505);
INSERT INTO public.games VALUES (20, 62, 580);
INSERT INTO public.games VALUES (21, 62, 829);
INSERT INTO public.games VALUES (22, 64, 599);
INSERT INTO public.games VALUES (23, 64, 273);
INSERT INTO public.games VALUES (24, 65, 349);
INSERT INTO public.games VALUES (25, 65, 59);
INSERT INTO public.games VALUES (26, 64, 697);
INSERT INTO public.games VALUES (27, 64, 989);
INSERT INTO public.games VALUES (28, 64, 401);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Fabio', 9);
INSERT INTO public.users VALUES ('user_1787828299678', 10);
INSERT INTO public.users VALUES ('user_1787828299677', 11);
INSERT INTO public.users VALUES ('user_1787828349661', 12);
INSERT INTO public.users VALUES ('user_1787828349660', 13);
INSERT INTO public.users VALUES ('user_1787828354917', 14);
INSERT INTO public.users VALUES ('user_1787828354916', 15);
INSERT INTO public.users VALUES ('user_1787828527128', 16);
INSERT INTO public.users VALUES ('user_1787828527127', 17);
INSERT INTO public.users VALUES ('user_1787828819260', 18);
INSERT INTO public.users VALUES ('user_1787828819259', 19);
INSERT INTO public.users VALUES ('user_1787828833726', 20);
INSERT INTO public.users VALUES ('user_1787828833725', 21);
INSERT INTO public.users VALUES ('user_1787828852328', 22);
INSERT INTO public.users VALUES ('user_1787828852327', 23);
INSERT INTO public.users VALUES ('user_1787828859117', 24);
INSERT INTO public.users VALUES ('user_1787828859116', 25);
INSERT INTO public.users VALUES ('user_1787828876491', 26);
INSERT INTO public.users VALUES ('user_1787828876490', 27);
INSERT INTO public.users VALUES ('user_1787828943195', 28);
INSERT INTO public.users VALUES ('user_1787828943194', 29);
INSERT INTO public.users VALUES ('user_1787828978684', 30);
INSERT INTO public.users VALUES ('user_1787828978683', 31);
INSERT INTO public.users VALUES ('user_1787829318047', 32);
INSERT INTO public.users VALUES ('user_1787829318046', 33);
INSERT INTO public.users VALUES ('user_1787829401122', 34);
INSERT INTO public.users VALUES ('user_1787829401121', 35);
INSERT INTO public.users VALUES ('user_1787829403925', 36);
INSERT INTO public.users VALUES ('user_1787829403924', 37);
INSERT INTO public.users VALUES ('user_1787829456745', 38);
INSERT INTO public.users VALUES ('user_1787829456744', 39);
INSERT INTO public.users VALUES ('user_1787829692496', 40);
INSERT INTO public.users VALUES ('user_1787829692496', 41);
INSERT INTO public.users VALUES ('user_1787829692496', 42);
INSERT INTO public.users VALUES ('user_1787829692495', 43);
INSERT INTO public.users VALUES ('user_1787829692495', 44);
INSERT INTO public.users VALUES ('user_1787829692495', 45);
INSERT INTO public.users VALUES ('user_1787829692496', 46);
INSERT INTO public.users VALUES ('user_1787829692496', 47);
INSERT INTO public.users VALUES ('user_1787829692496', 48);
INSERT INTO public.users VALUES ('user_1787829702589', 49);
INSERT INTO public.users VALUES ('user_1787829702589', 50);
INSERT INTO public.users VALUES ('user_1787829702589', 51);
INSERT INTO public.users VALUES ('user_1787829702588', 52);
INSERT INTO public.users VALUES ('user_1787829702588', 53);
INSERT INTO public.users VALUES ('user_1787829702588', 54);
INSERT INTO public.users VALUES ('user_1787829702589', 55);
INSERT INTO public.users VALUES ('user_1787829702589', 56);
INSERT INTO public.users VALUES ('user_1787829702589', 57);
INSERT INTO public.users VALUES ('user_1787829797870', 58);
INSERT INTO public.users VALUES ('user_1787829797869', 59);
INSERT INTO public.users VALUES ('user_1787829840021', 60);
INSERT INTO public.users VALUES ('user_1787829840020', 61);
INSERT INTO public.users VALUES ('user_1787829858829', 62);
INSERT INTO public.users VALUES ('user_1787829858828', 63);
INSERT INTO public.users VALUES ('user_1787829874687', 64);
INSERT INTO public.users VALUES ('user_1787829874686', 65);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 65, true);


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

