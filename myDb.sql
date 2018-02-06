--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: doclookup; Type: SCHEMA; Schema: -; Owner: byhflsokslaaes
--

CREATE SCHEMA doclookup;


ALTER SCHEMA doclookup OWNER TO byhflsokslaaes;

--
-- Name: notes; Type: SCHEMA; Schema: -; Owner: byhflsokslaaes
--

CREATE SCHEMA notes;


ALTER SCHEMA notes OWNER TO byhflsokslaaes;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = doclookup, pg_catalog;

--
-- Name: address_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE address_id_seq OWNER TO byhflsokslaaes;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: addresses; Type: TABLE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE TABLE addresses (
    address_id integer NOT NULL,
    doctor_id integer NOT NULL,
    docaddress1 character varying(120) NOT NULL,
    docaddress2 character varying(120) DEFAULT NULL::character varying,
    docaddress3 character varying(120) DEFAULT NULL::character varying,
    doccity character varying(45) NOT NULL,
    docstate character varying(3) DEFAULT 'CA'::character varying NOT NULL,
    doczip character varying(45) NOT NULL,
    docphone character varying(15) NOT NULL,
    docfax character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE addresses OWNER TO byhflsokslaaes;

--
-- Name: addresses_address_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE addresses_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE addresses_address_id_seq OWNER TO byhflsokslaaes;

--
-- Name: addresses_address_id_seq; Type: SEQUENCE OWNED BY; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER SEQUENCE addresses_address_id_seq OWNED BY addresses.address_id;


--
-- Name: doc_specialties; Type: TABLE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE TABLE doc_specialties (
    id integer NOT NULL,
    doctor_id integer NOT NULL,
    specialties_id integer NOT NULL
);


ALTER TABLE doc_specialties OWNER TO byhflsokslaaes;

--
-- Name: doc_specialties_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE doc_specialties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE doc_specialties_id_seq OWNER TO byhflsokslaaes;

--
-- Name: doc_specialties_id_seq; Type: SEQUENCE OWNED BY; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER SEQUENCE doc_specialties_id_seq OWNED BY doc_specialties.id;


--
-- Name: doctor_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE doctor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE doctor_id_seq OWNER TO byhflsokslaaes;

--
-- Name: doctors; Type: TABLE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE TABLE doctors (
    doctor_id integer NOT NULL,
    doctorfirstname character varying(45) NOT NULL,
    doctorlastname character varying(45) NOT NULL,
    sex character varying(5) NOT NULL,
    hospital_affiliation character varying(45) DEFAULT NULL::character varying,
    doctor_title character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE doctors OWNER TO byhflsokslaaes;

--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE doctors_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE doctors_doctor_id_seq OWNER TO byhflsokslaaes;

--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER SEQUENCE doctors_doctor_id_seq OWNED BY doctors.doctor_id;


--
-- Name: id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE id_seq OWNER TO byhflsokslaaes;

--
-- Name: specialties; Type: TABLE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE TABLE specialties (
    specialty_id integer NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE specialties OWNER TO byhflsokslaaes;

--
-- Name: specialties_specialty_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE specialties_specialty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE specialties_specialty_id_seq OWNER TO byhflsokslaaes;

--
-- Name: specialties_specialty_id_seq; Type: SEQUENCE OWNED BY; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER SEQUENCE specialties_specialty_id_seq OWNED BY specialties.specialty_id;


--
-- Name: specialty_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE specialty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE specialty_id_seq OWNER TO byhflsokslaaes;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO byhflsokslaaes;

--
-- Name: users; Type: TABLE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE TABLE users (
    user_id integer NOT NULL,
    username character varying(45) NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    email character varying(60) NOT NULL,
    password character varying(20) NOT NULL
);


ALTER TABLE users OWNER TO byhflsokslaaes;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE SEQUENCE users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_user_id_seq OWNER TO byhflsokslaaes;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER SEQUENCE users_user_id_seq OWNED BY users.user_id;


SET search_path = public, pg_catalog;

--
-- Name: notes; Type: TABLE; Schema: public; Owner: byhflsokslaaes
--

CREATE TABLE notes (
    note_id integer NOT NULL,
    note text NOT NULL,
    talk_id integer NOT NULL,
    user_id integer NOT NULL,
    session_id integer NOT NULL
);


ALTER TABLE notes OWNER TO byhflsokslaaes;

--
-- Name: notes_note_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE notes_note_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_note_id_seq OWNER TO byhflsokslaaes;

--
-- Name: notes_note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: byhflsokslaaes
--

ALTER SEQUENCE notes_note_id_seq OWNED BY notes.note_id;


--
-- Name: notes_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE notes_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_notes_id_seq OWNER TO byhflsokslaaes;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: byhflsokslaaes
--

CREATE TABLE sessions (
    session_id integer NOT NULL,
    session_name character varying(100) NOT NULL,
    session_year integer NOT NULL
);


ALTER TABLE sessions OWNER TO byhflsokslaaes;

--
-- Name: sessions_session_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE sessions_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sessions_session_id_seq OWNER TO byhflsokslaaes;

--
-- Name: sessions_session_id_seq1; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE sessions_session_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sessions_session_id_seq1 OWNER TO byhflsokslaaes;

--
-- Name: sessions_session_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: byhflsokslaaes
--

ALTER SEQUENCE sessions_session_id_seq1 OWNED BY sessions.session_id;


--
-- Name: speakers; Type: TABLE; Schema: public; Owner: byhflsokslaaes
--

CREATE TABLE speakers (
    speaker_id integer NOT NULL,
    speaker_name character varying(60) NOT NULL,
    speaker_title character varying(100) NOT NULL
);


ALTER TABLE speakers OWNER TO byhflsokslaaes;

--
-- Name: speakers_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE speakers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE speakers_id_seq OWNER TO byhflsokslaaes;

--
-- Name: speakers_speaker_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE speakers_speaker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE speakers_speaker_id_seq OWNER TO byhflsokslaaes;

--
-- Name: speakers_speaker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: byhflsokslaaes
--

ALTER SEQUENCE speakers_speaker_id_seq OWNED BY speakers.speaker_id;


--
-- Name: talk_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE talk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE talk_id_seq OWNER TO byhflsokslaaes;

--
-- Name: talks; Type: TABLE; Schema: public; Owner: byhflsokslaaes
--

CREATE TABLE talks (
    talk_id integer NOT NULL,
    talk_name character varying(100) NOT NULL,
    speaker_id integer NOT NULL,
    session_id integer NOT NULL
);


ALTER TABLE talks OWNER TO byhflsokslaaes;

--
-- Name: talks_talk_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE talks_talk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE talks_talk_id_seq OWNER TO byhflsokslaaes;

--
-- Name: talks_talk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: byhflsokslaaes
--

ALTER SEQUENCE talks_talk_id_seq OWNED BY talks.talk_id;


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO byhflsokslaaes;

--
-- Name: users; Type: TABLE; Schema: public; Owner: byhflsokslaaes
--

CREATE TABLE users (
    user_id integer NOT NULL,
    username character varying(60) NOT NULL,
    frist_name character varying(40) NOT NULL,
    last_name character varying(40) NOT NULL,
    password character varying(40) NOT NULL
);


ALTER TABLE users OWNER TO byhflsokslaaes;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: byhflsokslaaes
--

CREATE SEQUENCE users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_user_id_seq OWNER TO byhflsokslaaes;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: byhflsokslaaes
--

ALTER SEQUENCE users_user_id_seq OWNED BY users.user_id;


SET search_path = doclookup, pg_catalog;

--
-- Name: addresses address_id; Type: DEFAULT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY addresses ALTER COLUMN address_id SET DEFAULT nextval('addresses_address_id_seq'::regclass);


--
-- Name: doc_specialties id; Type: DEFAULT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY doc_specialties ALTER COLUMN id SET DEFAULT nextval('doc_specialties_id_seq'::regclass);


--
-- Name: doctors doctor_id; Type: DEFAULT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY doctors ALTER COLUMN doctor_id SET DEFAULT nextval('doctors_doctor_id_seq'::regclass);


--
-- Name: specialties specialty_id; Type: DEFAULT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY specialties ALTER COLUMN specialty_id SET DEFAULT nextval('specialties_specialty_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY users ALTER COLUMN user_id SET DEFAULT nextval('users_user_id_seq'::regclass);


SET search_path = public, pg_catalog;

--
-- Name: notes note_id; Type: DEFAULT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY notes ALTER COLUMN note_id SET DEFAULT nextval('notes_note_id_seq'::regclass);


--
-- Name: sessions session_id; Type: DEFAULT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY sessions ALTER COLUMN session_id SET DEFAULT nextval('sessions_session_id_seq1'::regclass);


--
-- Name: speakers speaker_id; Type: DEFAULT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY speakers ALTER COLUMN speaker_id SET DEFAULT nextval('speakers_speaker_id_seq'::regclass);


--
-- Name: talks talk_id; Type: DEFAULT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY talks ALTER COLUMN talk_id SET DEFAULT nextval('talks_talk_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY users ALTER COLUMN user_id SET DEFAULT nextval('users_user_id_seq'::regclass);


SET search_path = doclookup, pg_catalog;

--
-- Data for Name: addresses; Type: TABLE DATA; Schema: doclookup; Owner: byhflsokslaaes
--

COPY addresses (address_id, doctor_id, docaddress1, docaddress2, docaddress3, doccity, docstate, doczip, docphone, docfax) FROM stdin;
1	1	Harry & Diane Rinker Bldg.	39000 Bob Hope Dr.	\N	Rancho Mirage	CA	92270	760-766-1212	\N
2	2	35900 Bob Hope Dr.	Suite 275	\N	Rancho Mirage	CA	92270	760-321-2500	\N
3	3	78120 Wildcat Dr 		\N	Palm Desert	CA	92211	760-340-2682	\N
4	4	78120 Wildcat Dr		\N	Palm Desert	CA	92211	760-340-2682	\N
5	5	47110 Washington St.	Suite 201	\N	La Quinta	CA	92253	760-972-4581	\N
6	5	71780 San Jacinto Dr	Bldg. I-1	\N	Rancho Mirage	CA	92270	760-636-0950	\N
\.


--
-- Data for Name: doc_specialties; Type: TABLE DATA; Schema: doclookup; Owner: byhflsokslaaes
--

COPY doc_specialties (id, doctor_id, specialties_id) FROM stdin;
1	1	1
2	2	11
3	3	10
4	4	10
5	5	22
\.


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: doclookup; Owner: byhflsokslaaes
--

COPY doctors (doctor_id, doctorfirstname, doctorlastname, sex, hospital_affiliation, doctor_title) FROM stdin;
1	Braun	Deidre K	F	\N	LAC
2	Annunziata	Gary Morton	M	\N	DO
3	Benson	Aurora Laperal	F	\N	DO
4	Benson	Mark Lyman	M	\N	DO
5	Boghosian	Ghassan E.	M	\N	DO
6	Cacdac	Ricar	M	\N	DO
7	Braun	Deidre K	F	\N	LAC
8	Annunziata	Gary Morton	M	\N	DO
9	Benson	Aurora Laperal	F	\N	DO
10	Benson	Mark Lyman	M	\N	DO
11	Boghosian	Ghassan E.	M	\N	DO
\.


--
-- Data for Name: specialties; Type: TABLE DATA; Schema: doclookup; Owner: byhflsokslaaes
--

COPY specialties (specialty_id, name) FROM stdin;
1	Acupuncturist
2	Allergy/Immunology
3	Arthritis/Rheumatology
4	Cardiac/Thoracic Surgery
5	Cardiology
6	Cardiovascular Disease
7	Child & Adolescent Psychiatry
8	Dentistry
9	Dermatology
10	Diagnostic Radiology
11	Electrophysiology
12	Endocrine/Metabolism
13	Family Medicine
14	Gastroenterology
15	General Surgery
16	Geriatrics
17	Gynecology
18	Hematology/Oncology
19	Infectious Disease
20	Internal Medicine
21	Interventional Cardiology
22	Medical Oncology
23	Nephrology
24	Neurology
25	Neurosurgery
26	Ophthalmology
27	Oral/Maxillofacial Surgery
28	Orthopedic Surgery
29	Otolaryngology
30	Pain Medicine
31	Physical Medicine & Rehabilitation
32	Plastic Surgery
33	Podiatry
34	Psychiatry
35	Psychology
36	Pulmonary Disease
37	Radiation Oncology
38	Radiology
39	Spinal Surgery
40	Thoracic Surgery
41	Urgent Care Medicine
42	Urology
43	Vascular Surgery
44	Wound Care (Hyperbaric Med)
45	Acupuncturist
46	Allergy/Immunology
47	Arthritis/Rheumatology
48	Cardiac/Thoracic Surgery
49	Cardiology
50	Cardiovascular Disease
51	Child & Adolescent Psychiatry
52	Dentistry
53	Dermatology
54	Diagnostic Radiology
55	Electrophysiology
56	Endocrine/Metabolism
57	Family Medicine
58	Gastroenterology
59	General Surgery
60	Geriatrics
61	Gynecology
62	Hematology/Oncology
63	Infectious Disease
64	Internal Medicine
65	Interventional Cardiology
66	Medical Oncology
67	Nephrology
68	Neurology
69	Neurosurgery
70	Ophthalmology
71	Oral/Maxillofacial Surgery
72	Orthopedic Surgery
73	Otolaryngology
74	Pain Medicine
75	Physical Medicine & Rehabilitation
76	Plastic Surgery
77	Podiatry
78	Psychiatry
79	Psychology
80	Pulmonary Disease
81	Radiation Oncology
82	Radiology
83	Spinal Surgery
84	Thoracic Surgery
85	Urgent Care Medicine
86	Urology
87	Vascular Surgery
88	Wound Care (Hyperbaric Med)
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: doclookup; Owner: byhflsokslaaes
--

COPY users (user_id, username, firstname, lastname, email, password) FROM stdin;
\.


SET search_path = public, pg_catalog;

--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: byhflsokslaaes
--

COPY notes (note_id, note, talk_id, user_id, session_id) FROM stdin;
1	Turn your soul toward the light. Begin your own wonderful journey home. As you do so, your life will be better, happier, and more purposeful.	1	1	1
2	The family proclamation is the Lord’s reemphasis of the gospel truths we need to sustain us through current challenges to the family.	2	1	1
3	Don’t let life’s distractions eclipse heaven’s light.	3	1	2
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: byhflsokslaaes
--

COPY sessions (session_id, session_name, session_year) FROM stdin;
1	October Saturday Morning	2017
2	October Saturday Afternoon	2017
3	October Sunday Morning	2017
4	October Sunday Afternoon	2017
\.


--
-- Data for Name: speakers; Type: TABLE DATA; Schema: public; Owner: byhflsokslaaes
--

COPY speakers (speaker_id, speaker_name, speaker_title) FROM stdin;
1	Dieter F. Uchtdorf	Second Counselor in the First Presidency
2	Dallin H. Oaks	Of the Quorum of the Twelve Apostles
3	Gary E. Stevenson	Of the Quorum of the Twelve Apostles
\.


--
-- Data for Name: talks; Type: TABLE DATA; Schema: public; Owner: byhflsokslaaes
--

COPY talks (talk_id, talk_name, speaker_id, session_id) FROM stdin;
1	A Yearning from Home	1	1
2	The Plan and the Proclamation	2	1
3	Spiritual Exlipse	3	2
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: byhflsokslaaes
--

COPY users (user_id, username, frist_name, last_name, password) FROM stdin;
1	ralphb	Ralph	Borcherds	12345678
2	stacyb	Stacy	Borcherds	12345678
\.


SET search_path = doclookup, pg_catalog;

--
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('address_id_seq', 1, false);


--
-- Name: addresses_address_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('addresses_address_id_seq', 6, true);


--
-- Name: doc_specialties_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('doc_specialties_id_seq', 5, true);


--
-- Name: doctor_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('doctor_id_seq', 1, false);


--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('doctors_doctor_id_seq', 11, true);


--
-- Name: id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('id_seq', 1, false);


--
-- Name: specialties_specialty_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('specialties_specialty_id_seq', 88, true);


--
-- Name: specialty_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('specialty_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('user_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: doclookup; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('users_user_id_seq', 1, false);


SET search_path = public, pg_catalog;

--
-- Name: notes_note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('notes_note_id_seq', 3, true);


--
-- Name: notes_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('notes_notes_id_seq', 1, false);


--
-- Name: sessions_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('sessions_session_id_seq', 1, false);


--
-- Name: sessions_session_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('sessions_session_id_seq1', 4, true);


--
-- Name: speakers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('speakers_id_seq', 1, false);


--
-- Name: speakers_speaker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('speakers_speaker_id_seq', 3, true);


--
-- Name: talk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('talk_id_seq', 1, false);


--
-- Name: talks_talk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('talks_talk_id_seq', 3, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('user_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: byhflsokslaaes
--

SELECT pg_catalog.setval('users_user_id_seq', 2, true);


SET search_path = doclookup, pg_catalog;

--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (address_id);


--
-- Name: doc_specialties doc_specialties_pkey; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY doc_specialties
    ADD CONSTRAINT doc_specialties_pkey PRIMARY KEY (id);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);


--
-- Name: users email_unique; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY users
    ADD CONSTRAINT email_unique UNIQUE (email);


--
-- Name: specialties specialties_pkey; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY specialties
    ADD CONSTRAINT specialties_pkey PRIMARY KEY (specialty_id);


--
-- Name: users username_unique; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY users
    ADD CONSTRAINT username_unique UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


SET search_path = public, pg_catalog;

--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (note_id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);


--
-- Name: speakers speakers_pkey; Type: CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY speakers
    ADD CONSTRAINT speakers_pkey PRIMARY KEY (speaker_id);


--
-- Name: talks talks_pkey; Type: CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY talks
    ADD CONSTRAINT talks_pkey PRIMARY KEY (talk_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


SET search_path = doclookup, pg_catalog;

--
-- Name: fk_addresses_1_idx; Type: INDEX; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE INDEX fk_addresses_1_idx ON addresses USING btree (doctor_id);


--
-- Name: fk_doc_specialties_1_idx; Type: INDEX; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE INDEX fk_doc_specialties_1_idx ON doc_specialties USING btree (doctor_id);


--
-- Name: fk_doc_specialties_2_idx; Type: INDEX; Schema: doclookup; Owner: byhflsokslaaes
--

CREATE INDEX fk_doc_specialties_2_idx ON doc_specialties USING btree (specialties_id);


--
-- Name: addresses fk_addresses_1; Type: FK CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY addresses
    ADD CONSTRAINT fk_addresses_1 FOREIGN KEY (doctor_id) REFERENCES addresses(address_id);


--
-- Name: doc_specialties fk_doc_specialties_1; Type: FK CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY doc_specialties
    ADD CONSTRAINT fk_doc_specialties_1 FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id);


--
-- Name: doc_specialties fk_doc_specialties_2; Type: FK CONSTRAINT; Schema: doclookup; Owner: byhflsokslaaes
--

ALTER TABLE ONLY doc_specialties
    ADD CONSTRAINT fk_doc_specialties_2 FOREIGN KEY (specialties_id) REFERENCES specialties(specialty_id);


SET search_path = public, pg_catalog;

--
-- Name: notes notes_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_session_id_fkey FOREIGN KEY (session_id) REFERENCES sessions(session_id);


--
-- Name: notes notes_talk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_talk_id_fkey FOREIGN KEY (talk_id) REFERENCES talks(talk_id);


--
-- Name: notes notes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(user_id);


--
-- Name: talks talks_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY talks
    ADD CONSTRAINT talks_session_id_fkey FOREIGN KEY (session_id) REFERENCES sessions(session_id);


--
-- Name: talks talks_speaker_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: byhflsokslaaes
--

ALTER TABLE ONLY talks
    ADD CONSTRAINT talks_speaker_id_fkey FOREIGN KEY (speaker_id) REFERENCES speakers(speaker_id);


--
-- Name: plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO byhflsokslaaes;


--
-- PostgreSQL database dump complete
--

