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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (90, 2018, 'Final', 365, 366, 4, 2);
INSERT INTO public.games VALUES (91, 2018, 'Third Place', 367, 368, 2, 0);
INSERT INTO public.games VALUES (92, 2018, 'Semi-Final', 366, 368, 2, 1);
INSERT INTO public.games VALUES (93, 2018, 'Semi-Final', 365, 367, 1, 0);
INSERT INTO public.games VALUES (94, 2018, 'Quarter-Final', 366, 369, 3, 2);
INSERT INTO public.games VALUES (95, 2018, 'Quarter-Final', 368, 370, 2, 0);
INSERT INTO public.games VALUES (96, 2018, 'Quarter-Final', 367, 371, 2, 1);
INSERT INTO public.games VALUES (97, 2018, 'Quarter-Final', 365, 372, 2, 0);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 368, 373, 2, 1);
INSERT INTO public.games VALUES (99, 2018, 'Eighth-Final', 370, 374, 1, 0);
INSERT INTO public.games VALUES (100, 2018, 'Eighth-Final', 367, 375, 3, 2);
INSERT INTO public.games VALUES (101, 2018, 'Eighth-Final', 371, 376, 2, 0);
INSERT INTO public.games VALUES (102, 2018, 'Eighth-Final', 366, 377, 2, 1);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 369, 378, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Eighth-Final', 372, 379, 2, 1);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 365, 380, 4, 3);
INSERT INTO public.games VALUES (106, 2014, 'Final', 381, 380, 1, 0);
INSERT INTO public.games VALUES (107, 2014, 'Third Place', 382, 371, 3, 0);
INSERT INTO public.games VALUES (108, 2014, 'Semi-Final', 380, 382, 1, 0);
INSERT INTO public.games VALUES (109, 2014, 'Semi-Final', 381, 371, 7, 1);
INSERT INTO public.games VALUES (110, 2014, 'Quarter-Final', 382, 383, 1, 0);
INSERT INTO public.games VALUES (111, 2014, 'Quarter-Final', 380, 367, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Quarter-Final', 371, 373, 2, 1);
INSERT INTO public.games VALUES (113, 2014, 'Quarter-Final', 381, 365, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 371, 384, 2, 1);
INSERT INTO public.games VALUES (115, 2014, 'Eighth-Final', 373, 372, 2, 0);
INSERT INTO public.games VALUES (116, 2014, 'Eighth-Final', 365, 385, 2, 0);
INSERT INTO public.games VALUES (117, 2014, 'Eighth-Final', 381, 386, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Eighth-Final', 382, 376, 2, 1);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 383, 387, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Eighth-Final', 380, 374, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 367, 388, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (365, 'France');
INSERT INTO public.teams VALUES (366, 'Croatia');
INSERT INTO public.teams VALUES (367, 'Belgium');
INSERT INTO public.teams VALUES (368, 'England');
INSERT INTO public.teams VALUES (369, 'Russia');
INSERT INTO public.teams VALUES (370, 'Sweden');
INSERT INTO public.teams VALUES (371, 'Brazil');
INSERT INTO public.teams VALUES (372, 'Uruguay');
INSERT INTO public.teams VALUES (373, 'Colombia');
INSERT INTO public.teams VALUES (374, 'Switzerland');
INSERT INTO public.teams VALUES (375, 'Japan');
INSERT INTO public.teams VALUES (376, 'Mexico');
INSERT INTO public.teams VALUES (377, 'Denmark');
INSERT INTO public.teams VALUES (378, 'Spain');
INSERT INTO public.teams VALUES (379, 'Portugal');
INSERT INTO public.teams VALUES (380, 'Argentina');
INSERT INTO public.teams VALUES (381, 'Germany');
INSERT INTO public.teams VALUES (382, 'Netherlands');
INSERT INTO public.teams VALUES (383, 'Costa Rica');
INSERT INTO public.teams VALUES (384, 'Chile');
INSERT INTO public.teams VALUES (385, 'Nigeria');
INSERT INTO public.teams VALUES (386, 'Algeria');
INSERT INTO public.teams VALUES (387, 'Greece');
INSERT INTO public.teams VALUES (388, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 121, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 388, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

