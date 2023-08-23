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

DROP DATABASE games;
--
-- Name: games; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE games WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE games OWNER TO freecodecamp;

\connect games

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
-- Name: details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.details (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 1 NOT NULL,
    best_game integer
);


ALTER TABLE public.details OWNER TO freecodecamp;

--
-- Name: details_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.details_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.details_player_id_seq OWNER TO freecodecamp;

--
-- Name: details_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.details_player_id_seq OWNED BY public.details.player_id;


--
-- Name: details player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details ALTER COLUMN player_id SET DEFAULT nextval('public.details_player_id_seq'::regclass);


--
-- Data for Name: details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.details VALUES (1, 'icp', 12, 10);
INSERT INTO public.details VALUES (2, 'RAJ', 1, 2);
INSERT INTO public.details VALUES (3, 'user_1692769891071', 1, 102);
INSERT INTO public.details VALUES (4, 'user_1692769891070', 1, 851);
INSERT INTO public.details VALUES (5, 't', 1, 2);
INSERT INTO public.details VALUES (6, 't', 1, 1);
INSERT INTO public.details VALUES (7, 'user_1692771973789', 1, 391);
INSERT INTO public.details VALUES (8, 'user_1692771973789', 1, 324);
INSERT INTO public.details VALUES (9, 'user_1692771973788', 1, 829);
INSERT INTO public.details VALUES (10, 'user_1692771973788', 1, 878);
INSERT INTO public.details VALUES (11, 'user_1692771973789', 1, 556);
INSERT INTO public.details VALUES (12, 'user_1692771973789', 1, 479);
INSERT INTO public.details VALUES (13, 'user_1692771973789', 1, 620);
INSERT INTO public.details VALUES (14, 'user_1692772390527', 1, 706);
INSERT INTO public.details VALUES (15, 'user_1692772390527', 1, 926);
INSERT INTO public.details VALUES (16, 'user_1692772390526', 1, 617);
INSERT INTO public.details VALUES (17, 'user_1692772390526', 1, 619);
INSERT INTO public.details VALUES (18, 'user_1692772390527', 1, 699);
INSERT INTO public.details VALUES (19, 'user_1692772390527', 1, 113);
INSERT INTO public.details VALUES (20, 'user_1692772390527', 1, 91);
INSERT INTO public.details VALUES (21, 'user_1692772651790', 1, 494);
INSERT INTO public.details VALUES (22, 'user_1692772651790', 1, 511);
INSERT INTO public.details VALUES (23, 'user_1692772651789', 1, 36);
INSERT INTO public.details VALUES (24, 'user_1692772651789', 1, 261);
INSERT INTO public.details VALUES (25, 'user_1692772651790', 1, 573);
INSERT INTO public.details VALUES (26, 'user_1692772651790', 1, 300);
INSERT INTO public.details VALUES (27, 'user_1692772651790', 1, 766);


--
-- Name: details_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.details_player_id_seq', 27, true);


--
-- Name: details details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_pkey PRIMARY KEY (player_id);


--
-- PostgreSQL database dump complete
--

