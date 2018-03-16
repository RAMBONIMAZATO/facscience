--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: liste_url; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE liste_url (
    id integer NOT NULL,
    nom_url character varying(50) NOT NULL,
    pat boolean,
    enseignant boolean,
    doyen boolean
);


ALTER TABLE liste_url OWNER TO postgres;

--
-- Name: liste_url_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE liste_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE liste_url_id_seq OWNER TO postgres;

--
-- Name: liste_url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE liste_url_id_seq OWNED BY liste_url.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY liste_url ALTER COLUMN id SET DEFAULT nextval('liste_url_id_seq'::regclass);


--
-- Data for Name: liste_url; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY liste_url (id, nom_url, pat, enseignant, doyen) FROM stdin;
1	/login	t	t	t
2	/logout	t	t	t
3	/resultat_preinscription	t	t	t
4	/confirmer_inscription	t	t	t
5	/selection	f	t	t
6	/import	f	t	t
7	/preinscription	f	t	t
8	/preinscription_en_ligne	f	t	t
9	/anomalie	f	t	t
10	/pdf_bac_etranger	f	t	t
11	/derogation	f	f	t
\.


--
-- Name: liste_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('liste_url_id_seq', 11, true);


--
-- Name: liste_url_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY liste_url
    ADD CONSTRAINT liste_url_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

