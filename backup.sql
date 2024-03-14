--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-07-16 20:38:19

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
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 32921)
-- Name: camino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camino (
    id integer NOT NULL,
    sucursal_origen integer NOT NULL,
    sucursal_destino integer NOT NULL,
    tiempo_transito interval,
    capacidad_maxima integer,
    estado boolean
);


ALTER TABLE public.camino OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 32920)
-- Name: camino_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.camino_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.camino_id_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 217
-- Name: camino_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.camino_id_seq OWNED BY public.camino.id;


--
-- TOC entry 226 (class 1259 OID 32977)
-- Name: detalle_orden_provision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_orden_provision (
    id integer NOT NULL,
    id_orden_provision integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad_requerida integer NOT NULL
);


ALTER TABLE public.detalle_orden_provision OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 32976)
-- Name: detalle_orden_provision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_orden_provision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_orden_provision_id_seq OWNER TO postgres;

--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 225
-- Name: detalle_orden_provision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_orden_provision_id_seq OWNED BY public.detalle_orden_provision.id;


--
-- TOC entry 224 (class 1259 OID 32964)
-- Name: orden_provision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orden_provision (
    id integer NOT NULL,
    fecha_orden timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_sucursal_destino integer NOT NULL,
    tiempo_maximo_horas integer NOT NULL,
    estado character varying(20) NOT NULL
);


ALTER TABLE public.orden_provision OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 32963)
-- Name: orden_provision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orden_provision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orden_provision_id_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 223
-- Name: orden_provision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orden_provision_id_seq OWNED BY public.orden_provision.id;


--
-- TOC entry 220 (class 1259 OID 32938)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(200),
    precio_unitario numeric(10,2) NOT NULL,
    peso_kg numeric(8,2) NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 32937)
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_id_seq OWNER TO postgres;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 219
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;


--
-- TOC entry 228 (class 1259 OID 32994)
-- Name: recorrido_orden_provision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recorrido_orden_provision (
    id integer NOT NULL,
    id_orden_provision integer NOT NULL,
    id_camino integer NOT NULL,
    tiempo_estimado interval NOT NULL
);


ALTER TABLE public.recorrido_orden_provision OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 32993)
-- Name: recorrido_orden_provision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recorrido_orden_provision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recorrido_orden_provision_id_seq OWNER TO postgres;

--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 227
-- Name: recorrido_orden_provision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recorrido_orden_provision_id_seq OWNED BY public.recorrido_orden_provision.id;


--
-- TOC entry 222 (class 1259 OID 32945)
-- Name: stock_producto_sucursal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock_producto_sucursal (
    id integer NOT NULL,
    id_producto integer NOT NULL,
    id_sucursal integer NOT NULL,
    cantidad_stock integer NOT NULL
);


ALTER TABLE public.stock_producto_sucursal OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 32944)
-- Name: stock_producto_sucursal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stock_producto_sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_producto_sucursal_id_seq OWNER TO postgres;

--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 221
-- Name: stock_producto_sucursal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stock_producto_sucursal_id_seq OWNED BY public.stock_producto_sucursal.id;


--
-- TOC entry 216 (class 1259 OID 32914)
-- Name: sucursal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sucursal (
    id integer NOT NULL,
    nombre character varying(25),
    hapertura character varying(5),
    hcierre character varying(5),
    estado boolean
);


ALTER TABLE public.sucursal OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32913)
-- Name: sucursal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sucursal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sucursal_id_seq OWNER TO postgres;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 215
-- Name: sucursal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sucursal_id_seq OWNED BY public.sucursal.id;


--
-- TOC entry 3205 (class 2604 OID 32924)
-- Name: camino id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camino ALTER COLUMN id SET DEFAULT nextval('public.camino_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 32980)
-- Name: detalle_orden_provision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_orden_provision ALTER COLUMN id SET DEFAULT nextval('public.detalle_orden_provision_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 32967)
-- Name: orden_provision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_provision ALTER COLUMN id SET DEFAULT nextval('public.orden_provision_id_seq'::regclass);


--
-- TOC entry 3206 (class 2604 OID 32941)
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 32997)
-- Name: recorrido_orden_provision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recorrido_orden_provision ALTER COLUMN id SET DEFAULT nextval('public.recorrido_orden_provision_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 32948)
-- Name: stock_producto_sucursal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_producto_sucursal ALTER COLUMN id SET DEFAULT nextval('public.stock_producto_sucursal_id_seq'::regclass);


--
-- TOC entry 3204 (class 2604 OID 32917)
-- Name: sucursal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal ALTER COLUMN id SET DEFAULT nextval('public.sucursal_id_seq'::regclass);


--
-- TOC entry 3382 (class 0 OID 32921)
-- Dependencies: 218
-- Data for Name: camino; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.camino (id, sucursal_origen, sucursal_destino, tiempo_transito, capacidad_maxima, estado) FROM stdin;
\.


--
-- TOC entry 3390 (class 0 OID 32977)
-- Dependencies: 226
-- Data for Name: detalle_orden_provision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_orden_provision (id, id_orden_provision, id_producto, cantidad_requerida) FROM stdin;
\.


--
-- TOC entry 3388 (class 0 OID 32964)
-- Dependencies: 224
-- Data for Name: orden_provision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orden_provision (id, fecha_orden, id_sucursal_destino, tiempo_maximo_horas, estado) FROM stdin;
\.


--
-- TOC entry 3384 (class 0 OID 32938)
-- Dependencies: 220
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id, nombre, descripcion, precio_unitario, peso_kg) FROM stdin;
\.


--
-- TOC entry 3392 (class 0 OID 32994)
-- Dependencies: 228
-- Data for Name: recorrido_orden_provision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recorrido_orden_provision (id, id_orden_provision, id_camino, tiempo_estimado) FROM stdin;
\.


--
-- TOC entry 3386 (class 0 OID 32945)
-- Dependencies: 222
-- Data for Name: stock_producto_sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stock_producto_sucursal (id, id_producto, id_sucursal, cantidad_stock) FROM stdin;
\.


--
-- TOC entry 3380 (class 0 OID 32914)
-- Dependencies: 216
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sucursal (id, nombre, hapertura, hcierre, estado) FROM stdin;
1	asd	00:00	00:00	t
2	fdsa	00:00	00:00	t
3	asdf	00:00	00:00	t
4	asdfa	00:00	00:00	t
\.


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 217
-- Name: camino_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.camino_id_seq', 1, false);


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 225
-- Name: detalle_orden_provision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_orden_provision_id_seq', 1, false);


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 223
-- Name: orden_provision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orden_provision_id_seq', 1, false);


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 219
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_id_seq', 1, false);


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 227
-- Name: recorrido_orden_provision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recorrido_orden_provision_id_seq', 1, false);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 221
-- Name: stock_producto_sucursal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stock_producto_sucursal_id_seq', 1, false);


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 215
-- Name: sucursal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sucursal_id_seq', 6, true);


--
-- TOC entry 3215 (class 2606 OID 32926)
-- Name: camino camino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camino
    ADD CONSTRAINT camino_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 32982)
-- Name: detalle_orden_provision detalle_orden_provision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_orden_provision
    ADD CONSTRAINT detalle_orden_provision_pkey PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 32970)
-- Name: orden_provision orden_provision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_provision
    ADD CONSTRAINT orden_provision_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 32943)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 32999)
-- Name: recorrido_orden_provision recorrido_orden_provision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recorrido_orden_provision
    ADD CONSTRAINT recorrido_orden_provision_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 32952)
-- Name: stock_producto_sucursal stock_producto_sucursal_id_producto_id_sucursal_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_producto_sucursal
    ADD CONSTRAINT stock_producto_sucursal_id_producto_id_sucursal_key UNIQUE (id_producto, id_sucursal);


--
-- TOC entry 3221 (class 2606 OID 32950)
-- Name: stock_producto_sucursal stock_producto_sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_producto_sucursal
    ADD CONSTRAINT stock_producto_sucursal_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 32919)
-- Name: sucursal sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 32932)
-- Name: camino camino_sucursal_destino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camino
    ADD CONSTRAINT camino_sucursal_destino_fkey FOREIGN KEY (sucursal_destino) REFERENCES public.sucursal(id);


--
-- TOC entry 3229 (class 2606 OID 32927)
-- Name: camino camino_sucursal_origen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camino
    ADD CONSTRAINT camino_sucursal_origen_fkey FOREIGN KEY (sucursal_origen) REFERENCES public.sucursal(id);


--
-- TOC entry 3233 (class 2606 OID 32983)
-- Name: detalle_orden_provision detalle_orden_provision_id_orden_provision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_orden_provision
    ADD CONSTRAINT detalle_orden_provision_id_orden_provision_fkey FOREIGN KEY (id_orden_provision) REFERENCES public.orden_provision(id);


--
-- TOC entry 3234 (class 2606 OID 32988)
-- Name: detalle_orden_provision detalle_orden_provision_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_orden_provision
    ADD CONSTRAINT detalle_orden_provision_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id);


--
-- TOC entry 3232 (class 2606 OID 32971)
-- Name: orden_provision orden_provision_id_sucursal_destino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orden_provision
    ADD CONSTRAINT orden_provision_id_sucursal_destino_fkey FOREIGN KEY (id_sucursal_destino) REFERENCES public.sucursal(id);


--
-- TOC entry 3235 (class 2606 OID 33005)
-- Name: recorrido_orden_provision recorrido_orden_provision_id_camino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recorrido_orden_provision
    ADD CONSTRAINT recorrido_orden_provision_id_camino_fkey FOREIGN KEY (id_camino) REFERENCES public.camino(id);


--
-- TOC entry 3236 (class 2606 OID 33000)
-- Name: recorrido_orden_provision recorrido_orden_provision_id_orden_provision_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recorrido_orden_provision
    ADD CONSTRAINT recorrido_orden_provision_id_orden_provision_fkey FOREIGN KEY (id_orden_provision) REFERENCES public.orden_provision(id);


--
-- TOC entry 3230 (class 2606 OID 32953)
-- Name: stock_producto_sucursal stock_producto_sucursal_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_producto_sucursal
    ADD CONSTRAINT stock_producto_sucursal_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id);


--
-- TOC entry 3231 (class 2606 OID 32958)
-- Name: stock_producto_sucursal stock_producto_sucursal_id_sucursal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_producto_sucursal
    ADD CONSTRAINT stock_producto_sucursal_id_sucursal_fkey FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id);


-- Completed on 2023-07-16 20:38:19

--
-- PostgreSQL database dump complete
--

