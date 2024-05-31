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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    distance_from_earth integer,
    diameter integer,
    has_life boolean,
    has_water boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    distance_from_earth integer,
    diameter integer,
    has_life boolean,
    has_water boolean,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    distance_from_earth integer,
    diameter integer,
    has_life boolean,
    has_water boolean,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: space_trips; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_trips (
    space_trips_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number_of_astronauts numeric,
    distance_traveled integer,
    description text
);


ALTER TABLE public.space_trips OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    distance_from_earth integer,
    diameter integer,
    has_life boolean,
    has_water boolean,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', 13, 26000, 105700, true, true, 'a galaxy');
INSERT INTO public.galaxy VALUES (2, 2, 'Andromeda', 10, 2500000, 700, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (3, 3, 'Cygnus', 3, 500, 2400, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (4, 4, 'Virgo A', 6, 26000, 105700, true, true, 'a galaxy');
INSERT INTO public.galaxy VALUES (5, 5, 'Magellanic Clouds', 4, 26000, 105700, false, true, 'a galaxy');
INSERT INTO public.galaxy VALUES (6, 6, 'Maffei I&II', 10, 26000, 105700, false, true, 'a galaxy');
INSERT INTO public.galaxy VALUES (7, 7, 'Maffei II', 10, 26000, 105700, false, true, 'a galaxy');
INSERT INTO public.galaxy VALUES (8, 8, 'Callirrhoe', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (9, 9, 'Tethys', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (10, 10, 'Temisto', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (11, 11, 'Eukelade', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (12, 12, 'Carme', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (13, 13, 'Sinope', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (14, 14, 'Carpo', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (15, 15, 'Ananke', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (16, 16, 'Sponde', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (17, 17, 'Kalyke', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (18, 18, 'Elara', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (19, 19, 'Mneme', 10, 100, 200, false, false, 'a galaxy');
INSERT INTO public.galaxy VALUES (20, 20, 'Kallichore', 10, 100, 200, false, false, 'a galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Castillo', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (2, 2, 'Mimas', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (3, 3, 'Ganymede', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (4, 4, 'Europa', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (5, 5, 'Herse', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (6, 6, 'Thebe', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (7, 7, 'Cyllene', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (8, 8, 'Callirrhoe', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (9, 9, 'Tethys', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (10, 10, 'Temisto', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (11, 11, 'Eukelade', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (12, 12, 'Carme', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (13, 13, 'Sinope', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (14, 14, 'Carpo', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (15, 15, 'Ananke', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (16, 16, 'Sponde', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (17, 17, 'Kalyke', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (18, 18, 'Elara', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (19, 19, 'Mneme', 10, 100, 200, false, false, 'a moon');
INSERT INTO public.moon VALUES (20, 20, 'Kallichore', 10, 100, 200, false, false, 'a moon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'Earth', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (2, 2, 2, 'Mars', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (3, 3, 3, 'Mercury', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (4, 4, 4, 'Jupiter', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (5, 5, 5, 'Neptune', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (6, 6, 6, 'Uranus', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (7, 7, 7, 'Saturn', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (8, 8, 8, 'Venus', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (9, 9, 9, 'Pluto', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (10, 10, 10, 'Haumea', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (11, 11, 11, 'Makemake', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (12, 12, 12, 'Eris', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (13, 13, 13, 'Mercury1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (14, 14, 14, 'Jupiter1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (15, 15, 15, 'Neptune1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (16, 16, 16, 'Uranus1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (17, 17, 17, 'Saturn1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (18, 18, 18, 'Venus1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (19, 19, 19, 'Pluto1', 5, 700, 100, true, true, 'a planet');
INSERT INTO public.planet VALUES (20, 20, 20, 'Haumea1', 5, 700, 100, true, true, 'a planet');


--
-- Data for Name: space_trips; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_trips VALUES (1, 1, 1, 'Apollo', 6, 100, 'space exploration');
INSERT INTO public.space_trips VALUES (2, 2, 2, 'Apollo 13', 6, 100, 'space exploration');
INSERT INTO public.space_trips VALUES (3, 3, 3, 'Voyager', 6, 100, 'space exploration');
INSERT INTO public.space_trips VALUES (4, 4, 4, 'Pioneer', 6, 100, 'space exploration');
INSERT INTO public.space_trips VALUES (5, 5, 5, 'Gemini 10', 6, 100, 'space exploration');
INSERT INTO public.space_trips VALUES (6, 6, 6, 'Freedom 7', 6, 100, 'space exploration');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'Sirius', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (2, 2, 2, 'Deneb', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (3, 3, 3, 'Castor', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (4, 4, 4, 'Alcor', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (5, 5, 5, 'Spica', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (6, 6, 6, 'Polaris', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (7, 7, 7, 'Sirius1', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (8, 8, 8, 'Deneb1', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (9, 9, 9, 'Castor1', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (10, 10, 10, 'Alcor1', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (11, 11, 11, 'Spica1', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (12, 12, 12, 'Polaris1', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (13, 13, 13, 'Castor2', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (14, 14, 14, 'Alcor2', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (15, 15, 15, 'Spica2', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (16, 16, 16, 'Polaris2', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (17, 17, 17, 'Sirius2', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (18, 18, 18, 'Deneb3', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (19, 19, 19, 'Castor3', 2, 500, 700, false, true, 'a star');
INSERT INTO public.star VALUES (20, 20, 20, 'Alcor3', 2, 500, 700, false, true, 'a star');


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
-- Name: space_trips space_trips_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_trips
    ADD CONSTRAINT space_trips_name_key UNIQUE (name);


--
-- Name: space_trips space_trips_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_trips
    ADD CONSTRAINT space_trips_pkey PRIMARY KEY (space_trips_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

