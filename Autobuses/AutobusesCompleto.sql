--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 17:08:02

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
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16399)
-- Name: Autobuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Autobuses" (
    id_autobus integer NOT NULL,
    a_fabricacion integer NOT NULL,
    precio numeric(10,4)
);


ALTER TABLE public."Autobuses" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16398)
-- Name: Autobuses_id_autobus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Autobuses_id_autobus_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Autobuses_id_autobus_seq" OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 215
-- Name: Autobuses_id_autobus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Autobuses_id_autobus_seq" OWNED BY public."Autobuses".id_autobus;


--
-- TOC entry 218 (class 1259 OID 16406)
-- Name: Conductores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Conductores" (
    id_conductor integer NOT NULL,
    nombre character varying(60) NOT NULL,
    edad integer NOT NULL
);


ALTER TABLE public."Conductores" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16405)
-- Name: Conductores_id_conductor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Conductores_id_conductor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Conductores_id_conductor_seq" OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 217
-- Name: Conductores_id_conductor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Conductores_id_conductor_seq" OWNED BY public."Conductores".id_conductor;


--
-- TOC entry 220 (class 1259 OID 16413)
-- Name: Lugares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lugares" (
    id_lugar integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public."Lugares" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16412)
-- Name: Lugares_id_lugar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Lugares_id_lugar_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Lugares_id_lugar_seq" OWNER TO postgres;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 219
-- Name: Lugares_id_lugar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Lugares_id_lugar_seq" OWNED BY public."Lugares".id_lugar;


--
-- TOC entry 222 (class 1259 OID 16422)
-- Name: Rutas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rutas" (
    id_ruta integer NOT NULL,
    id_autobus integer NOT NULL,
    id_conductor integer NOT NULL,
    id_lugar integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public."Rutas" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16421)
-- Name: Rutas_id_ruta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rutas_id_ruta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rutas_id_ruta_seq" OWNER TO postgres;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 221
-- Name: Rutas_id_ruta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rutas_id_ruta_seq" OWNED BY public."Rutas".id_ruta;


--
-- TOC entry 3189 (class 2604 OID 16402)
-- Name: Autobuses id_autobus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autobuses" ALTER COLUMN id_autobus SET DEFAULT nextval('public."Autobuses_id_autobus_seq"'::regclass);


--
-- TOC entry 3190 (class 2604 OID 16409)
-- Name: Conductores id_conductor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Conductores" ALTER COLUMN id_conductor SET DEFAULT nextval('public."Conductores_id_conductor_seq"'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16416)
-- Name: Lugares id_lugar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lugares" ALTER COLUMN id_lugar SET DEFAULT nextval('public."Lugares_id_lugar_seq"'::regclass);


--
-- TOC entry 3192 (class 2604 OID 16425)
-- Name: Rutas id_ruta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rutas" ALTER COLUMN id_ruta SET DEFAULT nextval('public."Rutas_id_ruta_seq"'::regclass);


--
-- TOC entry 3347 (class 0 OID 16399)
-- Dependencies: 216
-- Data for Name: Autobuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Autobuses" (id_autobus, a_fabricacion, precio) VALUES (1, 2020, 123434.4520);
INSERT INTO public."Autobuses" (id_autobus, a_fabricacion, precio) VALUES (2, 2021, 125500.3400);


--
-- TOC entry 3349 (class 0 OID 16406)
-- Dependencies: 218
-- Data for Name: Conductores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Conductores" (id_conductor, nombre, edad) VALUES (1, 'Rocío López', 30);
INSERT INTO public."Conductores" (id_conductor, nombre, edad) VALUES (2, 'Raúl Gómez', 29);


--
-- TOC entry 3351 (class 0 OID 16413)
-- Dependencies: 220
-- Data for Name: Lugares; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Lugares" (id_lugar, nombre) VALUES (1, 'Las Palmas');
INSERT INTO public."Lugares" (id_lugar, nombre) VALUES (2, 'Las Rozas');


--
-- TOC entry 3353 (class 0 OID 16422)
-- Dependencies: 222
-- Data for Name: Rutas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Rutas" (id_ruta, id_autobus, id_conductor, id_lugar, fecha) VALUES (1, 1, 1, 1, '2023-01-12');
INSERT INTO public."Rutas" (id_ruta, id_autobus, id_conductor, id_lugar, fecha) VALUES (2, 2, 2, 2, '2021-04-22');


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 215
-- Name: Autobuses_id_autobus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Autobuses_id_autobus_seq"', 1, false);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 217
-- Name: Conductores_id_conductor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Conductores_id_conductor_seq"', 1, false);


--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 219
-- Name: Lugares_id_lugar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Lugares_id_lugar_seq"', 1, false);


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 221
-- Name: Rutas_id_ruta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rutas_id_ruta_seq"', 1, false);


--
-- TOC entry 3194 (class 2606 OID 16404)
-- Name: Autobuses Autobuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Autobuses"
    ADD CONSTRAINT "Autobuses_pkey" PRIMARY KEY (id_autobus);


--
-- TOC entry 3196 (class 2606 OID 16411)
-- Name: Conductores Conductores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Conductores"
    ADD CONSTRAINT "Conductores_pkey" PRIMARY KEY (id_conductor);


--
-- TOC entry 3198 (class 2606 OID 16420)
-- Name: Lugares Lugares_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lugares"
    ADD CONSTRAINT "Lugares_pkey" PRIMARY KEY (id_lugar);


--
-- TOC entry 3200 (class 2606 OID 16427)
-- Name: Rutas Rutas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rutas"
    ADD CONSTRAINT "Rutas_pkey" PRIMARY KEY (id_ruta);


--
-- TOC entry 3201 (class 2606 OID 16428)
-- Name: Rutas fk_rutas_autobuses; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rutas"
    ADD CONSTRAINT fk_rutas_autobuses FOREIGN KEY (id_autobus) REFERENCES public."Autobuses"(id_autobus) NOT VALID;


--
-- TOC entry 3202 (class 2606 OID 16438)
-- Name: Rutas fk_rutas_conductores; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rutas"
    ADD CONSTRAINT fk_rutas_conductores FOREIGN KEY (id_conductor) REFERENCES public."Conductores"(id_conductor) NOT VALID;


--
-- TOC entry 3203 (class 2606 OID 16433)
-- Name: Rutas fk_rutas_lugares; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rutas"
    ADD CONSTRAINT fk_rutas_lugares FOREIGN KEY (id_lugar) REFERENCES public."Lugares"(id_lugar) NOT VALID;


-- Completed on 2023-05-03 17:08:02

--
-- PostgreSQL database dump complete
--

