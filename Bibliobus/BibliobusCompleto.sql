--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-03 17:06:43

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
-- TOC entry 219 (class 1259 OID 16459)
-- Name: libros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libros (
    isbn integer NOT NULL,
    autor character varying(40) NOT NULL,
    n_ejemplares integer NOT NULL,
    id_tema integer NOT NULL
);


ALTER TABLE public.libros OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16458)
-- Name: libros_isbn_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libros_isbn_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libros_isbn_seq OWNER TO postgres;

--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 218
-- Name: libros_isbn_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libros_isbn_seq OWNED BY public.libros.isbn;


--
-- TOC entry 221 (class 1259 OID 16466)
-- Name: prestados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestados (
    dni integer NOT NULL,
    isbn integer NOT NULL,
    fecha_prestamo date NOT NULL,
    fecha_devolucion date NOT NULL,
    id_prestamos integer NOT NULL
);


ALTER TABLE public.prestados OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16465)
-- Name: prestados_id_prestamos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestados_id_prestamos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prestados_id_prestamos_seq OWNER TO postgres;

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 220
-- Name: prestados_id_prestamos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestados_id_prestamos_seq OWNED BY public.prestados.id_prestamos;


--
-- TOC entry 215 (class 1259 OID 16445)
-- Name: socios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socios (
    dni integer NOT NULL,
    direccion character varying(70) NOT NULL,
    nombre character varying(30) NOT NULL
);


ALTER TABLE public.socios OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16444)
-- Name: socios_dni_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socios_dni_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socios_dni_seq OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 214
-- Name: socios_dni_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socios_dni_seq OWNED BY public.socios.dni;


--
-- TOC entry 217 (class 1259 OID 16452)
-- Name: temas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temas (
    id_tema integer NOT NULL,
    tema character varying(30) NOT NULL
);


ALTER TABLE public.temas OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16451)
-- Name: temas_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.temas_id_tema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temas_id_tema_seq OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 216
-- Name: temas_id_tema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.temas_id_tema_seq OWNED BY public.temas.id_tema;


--
-- TOC entry 3190 (class 2604 OID 16462)
-- Name: libros isbn; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros ALTER COLUMN isbn SET DEFAULT nextval('public.libros_isbn_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16469)
-- Name: prestados id_prestamos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestados ALTER COLUMN id_prestamos SET DEFAULT nextval('public.prestados_id_prestamos_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 16448)
-- Name: socios dni; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socios ALTER COLUMN dni SET DEFAULT nextval('public.socios_dni_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 16455)
-- Name: temas id_tema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temas ALTER COLUMN id_tema SET DEFAULT nextval('public.temas_id_tema_seq'::regclass);


--
-- TOC entry 3348 (class 0 OID 16459)
-- Dependencies: 219
-- Data for Name: libros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.libros (isbn, autor, n_ejemplares, id_tema) VALUES (4566, 'María Gallardo', 4, 1);
INSERT INTO public.libros (isbn, autor, n_ejemplares, id_tema) VALUES (4569, 'Carlos Ruíz', 3, 2);


--
-- TOC entry 3350 (class 0 OID 16466)
-- Dependencies: 221
-- Data for Name: prestados; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.prestados (dni, isbn, fecha_prestamo, fecha_devolucion, id_prestamos) VALUES (45698756, 4566, '2022-05-10', '2022-07-10', 2);
INSERT INTO public.prestados (dni, isbn, fecha_prestamo, fecha_devolucion, id_prestamos) VALUES (456933356, 4569, '2022-05-10', '2022-07-10', 2);


--
-- TOC entry 3344 (class 0 OID 16445)
-- Dependencies: 215
-- Data for Name: socios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.socios (dni, direccion, nombre) VALUES (45698756, 'Calle Gran vía', 'Miguel');
INSERT INTO public.socios (dni, direccion, nombre) VALUES (456933356, 'Calle Paseo Castellana', 'Alberto');


--
-- TOC entry 3346 (class 0 OID 16452)
-- Dependencies: 217
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.temas (id_tema, tema) VALUES (1, 'Acción');
INSERT INTO public.temas (id_tema, tema) VALUES (2, 'Terror');


--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 218
-- Name: libros_isbn_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libros_isbn_seq', 1, false);


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 220
-- Name: prestados_id_prestamos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestados_id_prestamos_seq', 1, false);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 214
-- Name: socios_dni_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socios_dni_seq', 1, false);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 216
-- Name: temas_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.temas_id_tema_seq', 1, false);


--
-- TOC entry 3197 (class 2606 OID 16464)
-- Name: libros libros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY (isbn);


--
-- TOC entry 3193 (class 2606 OID 16450)
-- Name: socios socios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socios
    ADD CONSTRAINT socios_pkey PRIMARY KEY (dni);


--
-- TOC entry 3195 (class 2606 OID 16457)
-- Name: temas temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_tema);


--
-- TOC entry 3198 (class 2606 OID 16470)
-- Name: libros fk_libros_temas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libros
    ADD CONSTRAINT fk_libros_temas FOREIGN KEY (id_tema) REFERENCES public.temas(id_tema) NOT VALID;


--
-- TOC entry 3199 (class 2606 OID 16475)
-- Name: prestados fk_prestados_libros; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestados
    ADD CONSTRAINT fk_prestados_libros FOREIGN KEY (isbn) REFERENCES public.libros(isbn) NOT VALID;


--
-- TOC entry 3200 (class 2606 OID 16480)
-- Name: prestados fk_prestados_socios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestados
    ADD CONSTRAINT fk_prestados_socios FOREIGN KEY (dni) REFERENCES public.socios(dni) NOT VALID;


-- Completed on 2023-05-03 17:06:44

--
-- PostgreSQL database dump complete
--

