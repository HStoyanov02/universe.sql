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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50),
    size_in_miles integer NOT NULL,
    width integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    galaxy_id integer NOT NULL,
    galaxy_type character varying(50),
    age_in_billions_of_years numeric(3,1),
    composition character varying(50),
    matter character varying(50) DEFAULT 'Dark'::character varying NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    discovery_year character varying(50),
    discovered_by character varying(50),
    description text,
    size character varying(50),
    surface character varying(50) DEFAULT 'Rocky'::character varying NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    planet_type character varying(50),
    has_life boolean,
    has_moon boolean,
    age_in_billions_of_years numeric(3,2),
    description text,
    number_of_moons integer,
    size character varying(50),
    habitat character varying(50) DEFAULT 'Ocean World'::character varying NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    star_id integer NOT NULL,
    star_type character varying(50),
    color character varying(50),
    mass numeric(2,1),
    state character varying(50) DEFAULT 'Stable'::character varying NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '101955 Bennu', 60, 62);
INSERT INTO public.asteroid VALUES (2, '10199 Chariklo', 188, 190);
INSERT INTO public.asteroid VALUES (3, '2019 OK', 9, 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Barred Spiral', 13.6, NULL, 'Dark');
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Barred Spiral', 10.8, NULL, 'Dark');
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 3, 'Spiral', 12.3, NULL, 'Dark');
INSERT INTO public.galaxy VALUES ('Messier 49', 4, 'Irregular', 14.5, NULL, 'Dark');
INSERT INTO public.galaxy VALUES ('Black Galaxy', 5, 'Quasar', 13.3, NULL, 'Dark');
INSERT INTO public.galaxy VALUES ('Cosmic Galaxy', 6, 'Irregular', 15.6, NULL, 'Dark');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Prehistoric', 'NULL', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', '1877', 'Hall', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', '1877', 'Hall', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (4, 'Io', '1610', 'Galileo', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', '1610', 'Galileo', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', '1610', 'Galileo', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', '1610', 'Galileo', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', '1892', 'Bernard', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', '1904', 'Perrine', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (10, 'Elara', '1905', 'Perrine', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (11, 'Pasiphae', '1908', 'Melotte', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (12, 'Sinope', '1914', 'Nicholson', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (13, 'Lysithea', '1938', 'Nicholson', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (14, 'Carme', '1938', 'Nicholson', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (15, 'Ananke', '1951', 'Nicholson', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (16, 'Leda', '1974', 'Kowal', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (17, 'Thebe', '1979', 'Synott', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (18, 'Adrastea', '1979', 'Jewitt', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (19, 'Metis', '1979', 'Synott', NULL, NULL, 'Rocky', NULL);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', '2000', 'Scotti', NULL, NULL, 'Rocky', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 'Primary', false, false, 4.60, 'Mecury is the smallest planet in our solar system and closest to the Sun.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 'Primary', false, false, 4.60, 'Venus spins slowly in the opposite direction from most planets.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'Primary', false, true, 4.60, 'Mars is a dusty, cold, desert world with a very thin atmosphere.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Primary', false, true, 4.60, 'Jupiter is more than twice as massive than the other planets of our solar system combined.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Primary', false, true, 4.60, 'Adorned with thousands of beautiful ringlets, Saturn is unique among the planets.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Primary', false, true, 4.60, 'Uranus is the seventh planet from the Sun, it rotates at a nearly 90-degree angle from the plane of its orbit.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Primary', false, true, 4.60, 'Neptune is the eighth and most distant major planet orbiting our Sun.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf', false, true, 6.00, 'Pluto is a complex world of ice mountains and frozen plains. Once considered the ninth planet.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Dwarf', false, false, 4.57, 'Ceres makes up almost a third of the asteroid belts total mass, but it is still far smaller than Earths Moon.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (11, 'Makemake', 'Dwarf', false, true, 6.00, 'It takes 310 Earth years for Makemake to complete one orbit around our Sun.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Dwarf', false, true, 4.50, 'Haumea is one of the fastest rotating large objects in our solar system.', NULL, NULL, 'Ocean World', NULL);
INSERT INTO public.planet VALUES (1, 'Earth', 'Primary', true, true, 4.54, 'Earth our home planet is the only place we know of so far that’s inhabited by living things.', 1, NULL, 'Ocean World', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 'Class G', NULL, NULL, 'Stable', NULL);
INSERT INTO public.star VALUES ('White Sun', 2, 'Class A', NULL, NULL, 'Stable', NULL);
INSERT INTO public.star VALUES ('Orange Sun', 3, 'Class K', NULL, NULL, 'Stable', NULL);
INSERT INTO public.star VALUES ('Angry Sun', 4, 'Class M Red Giant', NULL, NULL, 'Stable', NULL);
INSERT INTO public.star VALUES ('Purple Sun', 5, 'Class T Brown Dwarf', NULL, NULL, 'Stable', NULL);
INSERT INTO public.star VALUES ('Phoenix', 6, 'Neutron Star', NULL, NULL, 'Stable', NULL);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_size_in_miles_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_size_in_miles_key UNIQUE (size_in_miles);


--
-- Name: galaxy galaxy_composition_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_composition_key UNIQUE (composition);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_key UNIQUE (size);


--
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
