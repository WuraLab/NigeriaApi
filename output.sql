--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg16.04+1)
-- Dumped by pg_dump version 13.1 (Ubuntu 13.1-1.pgdg18.04+1)

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
-- Name: polytechnic_data; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.polytechnic_data (
    id integer NOT NULL,
    "State" text NOT NULL,
    "Name" text NOT NULL,
    "Type" text NOT NULL,
    "Location" text NOT NULL,
    "Status" text NOT NULL
);


ALTER TABLE public.polytechnic_data OWNER TO trxbthfngzrayf;

--
-- Name: Polytecnic_data_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public."Polytecnic_data_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Polytecnic_data_id_seq" OWNER TO trxbthfngzrayf;

--
-- Name: Polytecnic_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public."Polytecnic_data_id_seq" OWNED BY public.polytechnic_data.id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO trxbthfngzrayf;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO trxbthfngzrayf;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO trxbthfngzrayf;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO trxbthfngzrayf;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO trxbthfngzrayf;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO trxbthfngzrayf;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO trxbthfngzrayf;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO trxbthfngzrayf;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO trxbthfngzrayf;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO trxbthfngzrayf;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO trxbthfngzrayf;

--
-- Name: university_data; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.university_data (
    id integer NOT NULL,
    "Name" text NOT NULL,
    "State" text NOT NULL,
    "Location" text NOT NULL,
    "Type" text NOT NULL,
    "Founded" text NOT NULL,
    "URl" text NOT NULL,
    "Social_media_handle_URL" text NOT NULL,
    "Motto" text NOT NULL,
    "Abbrevation" text NOT NULL,
    "Academic_Calendar" text NOT NULL,
    "Academic_Staff" text NOT NULL,
    "Accreditations" text NOT NULL,
    "Admission_Rate" text NOT NULL,
    "Campus_Setting" text NOT NULL,
    "Colours" text NOT NULL,
    "Distance_Learning" text NOT NULL,
    "Entity_Type" text NOT NULL,
    "Faculty_or_Colleges" text NOT NULL,
    "Financial_Aids" text NOT NULL,
    "Gender" text NOT NULL,
    "Housing" text NOT NULL,
    "International_Students" text NOT NULL,
    "Library" text NOT NULL,
    "Number_of_Faculties" text NOT NULL,
    "Number_of_Students" text NOT NULL,
    "Programme_Offered" text NOT NULL,
    "Region" text NOT NULL,
    "Selection_Type" text NOT NULL,
    "Sport_Facilities" text NOT NULL,
    "Study_Abroad" text NOT NULL,
    "University_Overview" text NOT NULL,
    "Wikipedia_Article" text NOT NULL,
    "Memberships_and_Affiliations" text NOT NULL,
    "Religious_Affiliation" text NOT NULL
);


ALTER TABLE public.university_data OWNER TO trxbthfngzrayf;

--
-- Name: university_data_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.university_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.university_data_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: university_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.university_data_id_seq OWNED BY public.university_data.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: trxbthfngzrayf
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    apikey character varying(255),
    role character varying(255),
    activated boolean DEFAULT false NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO trxbthfngzrayf;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: trxbthfngzrayf
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO trxbthfngzrayf;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: trxbthfngzrayf
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: polytechnic_data id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.polytechnic_data ALTER COLUMN id SET DEFAULT nextval('public."Polytecnic_data_id_seq"'::regclass);


--
-- Name: university_data id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.university_data ALTER COLUMN id SET DEFAULT nextval('public.university_data_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public."SequelizeMeta" (name) FROM stdin;
20200829165700-create-university-data.js
20200829170022-create-users.js
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add uni_data	7	add_uni_data
26	Can change uni_data	7	change_uni_data
27	Can delete uni_data	7	delete_uni_data
28	Can view uni_data	7	view_uni_data
29	Can add poly_data	8	add_poly_data
30	Can change poly_data	8	change_poly_data
31	Can delete poly_data	8	delete_poly_data
32	Can view poly_data	8	view_poly_data
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	app	uni_data
8	app	poly_data
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-26 17:11:22.727306+00
2	auth	0001_initial	2020-09-26 17:11:25.501763+00
3	admin	0001_initial	2020-09-26 17:11:32.659573+00
4	admin	0002_logentry_remove_auto_add	2020-09-26 17:11:34.976575+00
5	admin	0003_logentry_add_action_flag_choices	2020-09-26 17:11:35.971807+00
6	app	0001_initial	2020-09-26 17:11:37.3965+00
7	app	0002_covid_data_foot_note	2020-09-26 17:11:39.008605+00
8	app	0003_auto_20200730_1557	2020-09-26 17:11:40.734073+00
9	app	0004_auto_20200730_1558	2020-09-26 17:11:42.183305+00
10	app	0005_auto_20200730_1602	2020-09-26 17:11:44.334649+00
11	app	0006_auto_20200730_1608	2020-09-26 17:11:46.791259+00
12	app	0007_auto_20200803_0305	2020-09-26 17:11:48.020062+00
13	app	0008_auto_20200803_0315	2020-09-26 17:11:50.068212+00
14	app	0009_auto_20200829_1417	2020-09-26 17:12:06.821666+00
15	app	0010_auto_20200829_1436	2020-09-26 17:12:09.492482+00
16	app	0011_poly_data	2020-09-26 17:12:11.103854+00
17	app	0012_remove_uni_data_religious_affiliation	2020-09-26 17:12:12.435639+00
18	app	0013_uni_data_religious_affiliation	2020-09-26 17:12:14.338264+00
19	app	0014_auto_20200926_0058	2020-09-26 17:12:15.669536+00
20	app	0015_auto_20200926_1645	2020-09-26 17:12:17.717154+00
21	contenttypes	0002_remove_content_type_name	2020-09-26 17:12:19.458483+00
22	auth	0002_alter_permission_name_max_length	2020-09-26 17:12:20.766367+00
23	auth	0003_alter_user_email_max_length	2020-09-26 17:12:22.018415+00
24	auth	0004_alter_user_username_opts	2020-09-26 17:12:23.042485+00
25	auth	0005_alter_user_last_login_null	2020-09-26 17:12:24.50028+00
26	auth	0006_require_contenttypes_0002	2020-09-26 17:12:25.521519+00
27	auth	0007_alter_validators_add_error_messages	2020-09-26 17:12:26.728927+00
28	auth	0008_alter_user_username_max_length	2020-09-26 17:12:28.265145+00
29	auth	0009_alter_user_last_name_max_length	2020-09-26 17:12:30.255562+00
30	auth	0010_alter_group_name_max_length	2020-09-26 17:12:31.64477+00
31	auth	0011_update_proxy_permissions	2020-09-26 17:12:32.976189+00
32	sessions	0001_initial	2020-09-26 17:12:34.307176+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: polytechnic_data; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.polytechnic_data (id, "State", "Name", "Type", "Location", "Status") FROM stdin;
1	Abuja FCT	Dorben Polytechnic	Polytechnic	Abuja	Private
2	Adamawa State	Adamawa State Polytechnic	Polytechnic	Yola	State
3	Adamawa State	Federal Polytechnic, Mubi	Polytechnic	Mubi	Federal
4	Akwa Ibom State	Akwa Ibom State Polytechnic	Polytechnic	Ikot Ekpene	State
5	Akwa Ibom State	Akwa-Ibom College of Agriculture	Agricultural	Akwa Ibom	
6	Akwa Ibom State	Foundation College of Technology	Innovation polytechnic	Ikot Ekpene	Private
7	Akwa Ibom State	Heritage Polytechnic	Polytechnic	Eket	Private
8	Akwa Ibom State	Maritime Academy of Nigeria	Miscellaneous	Oron	Federal
9	Anambra State	Ekwenugo Okeke Polytechnic	Polytechnic	Anambra	State
10	Anambra State	Federal Polytechnic, Oko	Polytechnic	Oko	Federal
11	Anambra State	The UA College of Science and Technology, Isuofia	Innovation  Polytechnic	Isuofia	Private
12	Bauchi State	Abubakar Tafari Ali Polytechnic	Polytechnic	Bauchi 	State
13	Bauchi State	Federal Polytechnic, Bauchi	Polytechnic	Bauchi	Federal
14	Bayelsa State	Bayelsa State College of Arts and Science	Polytechnic	Bayelsa	State
15	Bayelsa State	Federal Polytechnic Ekowe Bayelsa State	Polytechnic	Ekowe	Federal
16	Benue State	Benue State Polytechnic	Polytechnic	ugbokolo	State
17	Benue State	Akperan Orshi College of Agriculture	Agricultural	Gboko	State
18	Borno State	Borno College of Agriculture	Agricultural	Borno	
19	Borno State	Ramat Polytechnic	Polytechnic	Maiduguri	State
20	Cross River State	Ibrahim Babangida College of Agriculture	Agricultural	Obubra	
21	Cross River State	The Polytechnic, Calabar	Polytechnic	Calabar	State
22	Cross River State	Divine Polytechnic, Mkpani	Polytechnic	Mkpani	Private
23	Delta State	Delta State College of Agriculture	Agricultural	Delta	
24	Delta State	Delta State Polytechnic (three institutions)	Polytechnic	OzoroOgwashi-UkuOtefe-Oghara	State
25	Delta State	Petroleum Training Institute	Miscellaneous	Effurun	Federal
26	Ebonyi State	Akanu Ibiam Federal Polytechnic	Polytechnic	Unwana	Federal
27	Ebonyi State	Federal College of Agriculture, Ishiagu	Agricultural	Ishiagu	Federal
28	Edo State\n	Edo State Polytechnic Usen\n	Polytechnic\n	Usen\n	State
29	Edo State	Auchi Polytechnic	Polytechnic	Auchi	Federal
30	Edo State	Kings Polytechnic	Polytechnic	Ubiaja	Private
31	Edo State	Shaka Polytechnic	Polytechnic	Benin city	
32	Ekiti State	Federal Polytechnic, Ado-Ekiti	Polytechnic	Ado Ekiti	Federal
33	Enugu State	Federal School of Dental Technology & Therapy	Miscellaneous	Enugu	Federal
34	Enugu State	Institute of Management Technology, Enugu	Polytechnic	Enugu	State
35	Enugu State	Our Saviour Institute of Science and Technology	Polytechnic	Enugu	Private
36	Imo State	Federal College of Land Resources Technology, Owerri	Miscellaneous	Owerri	Federal
37	Imo State	Federal Polytechnic, Nekede	Polytechnic	Nekede	Federal
38	Abia State	Temple Gate Polytechnic	Polytechnic	Aba	Private
39	Imo State	Imo State Polytechnic	Polytechnic	Umuagwo	State
40	Imo State	Imo State Technological Skills Acquisition Center	Polytechnic	Imo	
41	Jigawa State	Hussaini Adamu Federal Polytechnic	Polytechnic	Kazaure	Federal
42	Jigawa State	Hussani Adamu Polytechnic	Polytechnic	Jigawa	State
43	Kaduna State	College of Agriculture and Animal Science	Agricultural	Kaduna	Federal
44	Kaduna State	Federal College of Chemical and Leather and Technology	Miscellaneous	Zaria	Federal
45	Kaduna State	Federal College of Forestry Mechanisation	Miscellaneous	Afaka	Federal
46	Kaduna State	Kaduna Polytechnic	Polytechnic	Kaduna	Federal
47	Kaduna State	Nigerian College of Aviation Technology	Miscellaneous	Zaria	Federal
48	Kaduna State	federal school of statistics Manchok	Miscellaneous	Manchok	Federal
49	Kaduna State	Nuhu Bamalli Polytechnic	Polytechnic	Zaria	State
50	Kaduna State	Samaru College of Agriculture	Agricultural	Zaria	Federal
51	Kano State	Audu Bako School of Agriculture	Agricultural	Dambatta	State
52	Kano State	Kano State Polytechnic	Polytechnic	Kano	State
53	Kano State	Mohammed Abdullahi Wase Polytechnic	Polytechnic	Kano	State
54	Katsina State	Hassan Usman Katsina Polytechnic	Polytechnic	Katsina	State
55	Kebbi State	College of Agriculture, Zuru	Agricultural	Zuru	State
56	Kebbi State	Federal Polytechnic, Birnin-Kebbi	Polytechnic	Birnin Kebbi	Federal
57	Kebbi State	Kebbi State Polytechnic	Polytechnic	Kebbi	State
58	Kogi State	College of Agriculture, Kabba	Agricultural	Kabba	Federal
59	Kogi State	Federal Polytechnic, Idah	Polytechnic	Idah	Federal
60	Kogi State	Kogi State Polytechnic	Polytechnic	Kogi	State
61	Kwara State	Federal Polytechnic, Offa	Polytechnic	Offa	Federal
62	Kwara State	Kwara State Polytechnic	Polytechnic	Kwara	State
63	Lagos State	Federal College of Fisheries and Marine Technology	Miscellaneous	Lagos	Federal
64	Lagos State	Grace Polytechnic	Polytechnic	Lagos	Private
65	Lagos State	Lagos City Polytechnic	Polytechnic	Lagos	Private
66	Lagos State	Lagos State Polytechnic	Polytechnic	Lagos	State
67	Lagos State	Ronik Polytechnic	Polytechnic	Lagos	Private
68	Lagos State	School of Agriculture, Ikorodu	Agricultural	Ikorodu	
69	Lagos State	Wavecrest College of Hospitality	Monotechnic	Lagos	Private
70	Lagos State	Wolex Polytechnic	Polytechnic	Lagos	
71	Lagos State	Yaba College of Technology	Polytechnic	Lagos	Federal
72	Nasarawa State	College of Agriculture, Lafia	Agricultural	Lafia	State
73	Nasarawa State	Maurid Institute of Management & Technology, Nasarawa	Polytechnic	Nasarawa	Private
74	Nasarawa State	Federal Polytechnic, Nassarawa	Polytechnic	Nasarawa	Federal
75	Nasarawa State	Nasarawa State Polytechnic	Polytechnic	Lafia	State
76	Niger State	Federal College of Fresh Water Fisheries Technology	Miscellaneous	New Bussa	Federal
77	Niger State	Federal College of Wildlife Management	Miscellaneous	New Bussa	Federal
78	Niger State	Federal Polytechnic, Bida	Polytechnic	Bida	Federal
79	Niger State	Niger State College of Agriculture	Agricultural	Mokwa	State
80	Niger State	Niger State Polytechnic	Polytechnic	Zungeru	State
81	Ogun State	Abraham Adesanya Polytechnic	Polytechnic	Ijebu-Igbo	State
82	Ogun State	Allover Central Polytechnic	Polytechnic	Sango-Ota	Private
83	Ogun State	Federal Polytechnic, Ilaro	Polytechnic	Ilaro	Federal
84	Ogun State	Gateway Polytechnic Saapade	Polytechnic	Ogun	State
85	Ogun State	Marvic Polytechnic	Polytechnic	Odeda	Private
86	Ogun State	Moshood Abiola Polytechnic	Polytechnic	Abeokuta	State
87	Ogun State	Ogun State College of Health Technology	Polytechnic	Ijebu Ode	State
88	Ondo State	Rufus Giwa Polytechnic	Polytechnic	Owo	State
89	Osun State	Federal Polytechnic, Ede	Polytechnic	Ede	Federal
90	Osun State	Osun State College of Technology	Polytechnic	Esa-Oke	State
91	Osun State	Osun State Polytechnic	Polytechnic	Iree	State
92	Osun State	Igbajo Polytechnic, Igbajo	Polytechnic	Igbajo, Osun State	Private
93	Osun State	Polytechnic Ile-Ife	Polytechnic	Ile-Ife	Private
94	Osun State	Interlink Polytechnic	Polytechnic	Ijebu-Jesa	Private
95	Osun State	Southern Nigeria Institute of Innovative Technology (SNIITPOLY)	Polytechnic	Ifewara	Private
96	Oyo State	Federal College of Animal Health & Production Technology	Polytechnic	Ibadan	Federal
97	Oyo State	Federal College of Animal Health and Production Technology, Ibadan	Agricultural	Ibadan	Federal
98	Oyo State	Federal College of Forestry, Ibadan	Miscellaneous	Ibadan	Federal
99	Oyo State	The Polytechnic, Ibadan	Polytechnic	Ibadan	State
100	Oyo State	The Kings Poly, Shaki, Oyo	Polytechnic	Shaki, Oyo	Private
101	Oyo State	Tower Polytechnic, Ibadan	Polytechnic	Ibadan	Private
102	Oyo State\n	The Oke-Ogun Polytechnic, Saki\n	Polytechnic\n	Saki, Oyo State\n	State
103	Plateau State	Federal College of Animal Health and Production Technology, Vom	Agricultural	Vom, Nigeria	Federal
104	Plateau State	Federal College of Education, Pankshin	Miscellaneous	Pankshin	Federal
105	Plateau State	Federal College of Forestry. Jos	Miscellaneous	Jos	Federal
106	Plateau State	Federal College of Land Resources Technology, Kuru	Miscellaneous	Jos	Federal
107	Plateau State	Plateau State College of Agriculture	Agricultural	Jos	State
108	Plateau State	Plateau State Polytechnic	Polytechnic	Jos	State
109	Rivers State	Eastern Polytechnic	Polytechnic	Port Harcourt	Private
110	Rivers State	Port Harcourt Polytechnic	Polytechnic	Port Harcourt	State
111	Rivers State	Rivers State Polytechnic	Polytechnic	Bori	State
112	Taraba State	College of Agriculture, Jalingo	Agricultural	Jalingo	State
113	Yobe State	Federal Polytechnic, Damaturu	Polytechnic	Damaturu	Federal
114	Yobe State	Mai Idris Alooma Polytechnic	Polytechnic	Geidam	State
115	Zamfara State	Abdul Gusau Polytechnic	Polytechnic	Zamfara	State
116	Zamfara State	Federal Polytechnic, Namoda	Polytechnic	Kaura-Namoda	Federal
117	Zamfara State	Abdul Gusau Polytechnic	Polytechnic	Zamfara	State
\.


--
-- Data for Name: university_data; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.university_data (id, "Name", "State", "Location", "Type", "Founded", "URl", "Social_media_handle_URL", "Motto", "Abbrevation", "Academic_Calendar", "Academic_Staff", "Accreditations", "Admission_Rate", "Campus_Setting", "Colours", "Distance_Learning", "Entity_Type", "Faculty_or_Colleges", "Financial_Aids", "Gender", "Housing", "International_Students", "Library", "Number_of_Faculties", "Number_of_Students", "Programme_Offered", "Region", "Selection_Type", "Sport_Facilities", "Study_Abroad", "University_Overview", "Wikipedia_Article", "Memberships_and_Affiliations", "Religious_Affiliation") FROM stdin;
210	Unviersity of technology lagoos	lagoos	Akoka, Yaba, Lagos (population range: over 5,000,000),101017 Lagos, Nigeria	Public	1962	https://univertech.edu.ng	https://www.linkedin.com/school/university-of-lagos/	In deed and in truth	UNIVERTECH	Semesters	1,500-1,999	National Universities Commission, Nigeria	10-20%	Urban	\tMaroon and gold	Yes	Non-Profit	12	Yes	Men and Women (coed)	Yes	Yes	Yes	7	over - 46 000	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1962, University of Lagos is a non-profit public higher education institution located in the urban setting of the large metropolis of Lagos (population range of over 5,000,000 inhabitants). This institution has also branch campuses in the following location(s): Idi-Araba, Yaba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Lagos (UNILAG) is a very large (uniRank enrollment range: over-45,000 students) coeducational higher education institution. University of Lagos (UNILAG) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 58 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Lagos	not reported	not reported
3	Covenant University	Ogun	Km 10 Idiroko Road, Canaan Land,Ota (population range: 50,000-249,999)11001 Ogun,Nigeria	Private	2002	https://covenantuniversity.edu.ng/	https://www.linkedin.com/school/covenant-university/	Raising a New Generation of Leaders	CU	Semesters	400-499	National Universities Commission, Nigeria	40-50%	Suburban	Purple	Not reported	Non-Profit	5	Not reported	Men and Women (coed)	Yes	Yes	Yes	5	6,000-6,999	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2002, Covenant University is a non-profit private higher education institution located in the suburban setting of the small city of Ota (population range of 50,000-249,999 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Covenant University (CU) is a medium-sized (uniRank enrollment range: 6,000-6,999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Covenant University (CU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 17 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Covenant_University		Christian-Pentecostal
123	Renaissance University	Enugu	Private Mailbox 01183 Enugu 	Private	2005	http://www.rnu.edu.ng/	https://twitter.com/RNU_Ugbawka					National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes				South East				Founded in 2005, Renaissance University is a private higher education institution located in the large city of Enugu (population range of 500,000-1,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Renaissance University is a coeducational higher education institution. Renaissance University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Renaissance_University		
1	University of Benin	Edo	Private Mailbox 1154, Ugbowo CampusBenin City (population range: 1,000,0005,000,000),Edo,Nigeria	Public	1970	https://www.uniben.edu/	https://www.linkedin.com/school/university-of-benin/	\tKnowledge and Character	\tUNIBEN	Continuous	4,000-4,499	National Universities Commission, Nigeria	90-100%	Not reported	Purple and gold	Not reported	Non-Profit	12	Not reported	Men and Women (coed)	Not reported	Yes	Yes	6	40,000-44,999	Undergraduate and Postgraduate	South South 	Yes, based on entrance examinations	Not reported	Not reported	Founded in 1970, University of Benin is a non-profit public higher education institution located in the metropolis of Benin City (population range of 1,000,000-5,000,000 inhabitants), Edo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Benin (UNIBEN) is a very large (uniRank enrollment range: 40,000-44,999 students) coeducational higher education institution. University of Benin (UNIBEN) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 50 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 90-100% making this Nigerian higher education organization a least selective institution.	https://en.wikipedia.org/wiki/University_of_Benin_(Nigeria)	Association of Commonwealth Universities (ACU)	None
4	University of Ibadan	Oyo	Ibadan (population range: 1,000,000-5,000,000) 200284 Oyo Nigeria	Public	1948	https://www.ui.edu.ng/	https://www.linkedin.com/school/university-of-ibadan/	Recte sapere fons Right thinking is the fount (of knowledge)	UNILAG	Semesters	1,500-1,999	National Universities Commission, Nigeria	40-50%	Urban	Indigo-blue and gold	Yes	Non-Profit	10	Yes	Men and Women (coed)	Yes	Yes	Yes	6	30,000-34,999	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1948, University of Ibadan is a non-profit public higher education institution located in the urban setting of the metropolis of Ibadan (population range of 1,000,000-5,000,000 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Ibadan (UI) is a very large (uniRank enrollment range: 30,000-34,999 students) coeducational higher education institution. University of Ibadan (UI) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 72 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Ibadan	Association of Commonwealth Universities (ACU)	None
5	University of Nigeria	Enugu	Innovation Centre, University of Nigeria, Nsukka (population range: 250,000-499,999),410101 Enugu Nigeria	Public	1960	http://www.unn.edu.ng/	https://www.linkedin.com/school/university-of-nigeria-nsukka/	To restore the dignity of man	UNN	Semesters	over-5,000	National Universities Commission, Nigeria	40-50%	Suburban	Green	Not reported	Non-Profit	15	Yes	Men and Women (coed)	Yes	Yes	Yes	6	40,000-44,999	Undergraduate and Postgraduate	South East	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1960, University of Nigeria is a non-profit public higher education institution located in the suburban setting of the medium city of Nsukka (population range of 250,000-499,999 inhabitants), Enugu. This institution has also branch campuses in the following location(s): Enugu, Aba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Nigeria (UNN) is a very large (uniRank enrollment range: 40,000-44,999 students) coeducational higher education institution. University of Nigeria (UNN) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 60 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Nigeria,_Nsukka	Association of Commonwealth Universities (ACU)	None
6	Rivers State University	Rivers	Ikwerre Road, Nkoplu Oroworukwo, Private Mailbox 5080, Nkpoku Oroworukwo Port Harcourt (population range: 1,000,000-5,000,000) Rivers Nigeria	Public	1980	http://www.rsu.edu.ng/	https://www.linkedin.com/school/rivers-state-university-of-science-and-technology/	\tExcellence and Creativity	RSU	Semesters	1,500-1,999	National Universities Commission, Nigeria	 0-10%	Urban	\tBlue, green and white	Yes	Non-Profit	12	Not reported	Men and Women (coed)	Yes	Yes	Yes	6	 30,000-34,999	Undergraduate and Postgraduate	South South 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1980, Rivers State University is a non-profit public higher education institution located in the urban setting of the metropolis of Port Harcourt (population range of 1,000,000-5,000,000 inhabitants), Rivers. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Rivers State University (RSU) is a very large (uniRank enrollment range: 30,000-34,999 students) coeducational higher education institution. Rivers State University (RSU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 40 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 0-10% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/Rivers_State_University	Association of Commonwealth Universities (ACU, Association of African Universities (AAU)	None
7	Obafemi Awolowo University	Osun	Ile-Ife (population range: 50,000-249,999),Osun,Nigeria	Public	1962	https://oauife.edu.ng/	https://www.linkedin.com/school/obafemi-awolowo-university/	For Learning and Culture	OAU	Semesters	4,000-4,499	National Universities Commission, Nigeria	Not Available	Suburban	Midnight blue and gold	Yes	Non-Profit	13	Yes	Men and Women (coed)	Yes	Yes	Yes	6	25,000-29,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1962, Obafemi Awolowo University is a non-profit public higher education institution located in the suburban setting of the small city of Ile-Ife (population range of 50,000-249,999 inhabitants), Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Obafemi Awolowo University (OAU) is a large (uniRank enrollment range: 25,000-29,999 students) coeducational higher education institution. Obafemi Awolowo University (OAU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 58 years old higher-education institution has a selective admission policy based on entrance examinations. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Obafemi_Awolowo_University	Association of Commonwealth Universities (ACU)	None
8	Ahmadu Bello University	Kaduna	Sokoto Road, Samaru-Zaria, Zaria (population range: 1,000,000-5,000,000), 2222 Kaduna, Nigeria	Public	1962	https://abu.edu.ng/	https://www.linkedin.com/school/ahmadu-bello-university-zaria-/		ABU	Semesters	over-5,000	National Universities Commission, Nigeria	90-100%	Urban	Blue and green	Not reported	Non-Profit	12	Yes	Men and Women (coed)	Yes	Yes	Yes	6	25,000-29,999	Undergraduate and Postgraduate	North West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1962, Ahmadu Bello University is a non-profit public higher education institution located in the urban setting of the metropolis of Zaria (population range of 1,000,000-5,000,000 inhabitants), Kaduna. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ahmadu Bello University (ABU) is a large (uniRank enrollment range: 25,000-29,999 students) coeducational higher education institution. Ahmadu Bello University (ABU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 57 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 90-100% making this Nigerian higher education organization a least selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Ahmadu_Bello_University	Association of Commonwealth Universities (ACU, Association of African Universities (AAU)	None
57	Edo University	Edo	Km 7, Auchi-Abuja Road; PMB 04, Auchi Iyamho (population range: Not reported) Edo Nigeria	Public	2016	https://www.edouniversity.edu.ng/	Not Available		EUI	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Not reported	4	Not reported	Men and Women (coed)	Not reported	Yes	Yes		Not reported		South South	Not reported	Not reported	Not reported	Established in 2016, Edo University is a public higher education institution located in Iyamho, Edo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Edo University (EUI) is a coeducational higher education institution. Edo University (EUI) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Edo_University,_Iyamho	Not available	None
9	University of Ilorin	Kwara	Private Mailbox 1515, Ilorin (population range: 500,000-1,000,000) 240103 Kwara Nigeria	Public	1975	http://www.unilorin.edu.ng/	https://www.linkedin.com/company/university-of-ilorin-ilorin/	Probitas Doctrina - Character and learning	\tUIL	Semesters	2,500-2,999	National Universities Commission, Nigeria	Not Available	Urban	Deep blue, green, golden and white	Yes	Non-Profit	15	Yes	Men and Women (coed)	Yes	Yes	Yes	6	30,000-34,999	Undergraduate and Postgraduate	North Central	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1975, University of Ilorin is a non-profit public higher education institution located in the urban setting of the large city of Ilorin (population range of 500,000-1,000,000 inhabitants), Kwara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Ilorin (UIL) is a very large (uniRank enrollment range: 30,000-34,999 students) coeducational higher education institution. University of Ilorin (UIL) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Ilorin	Association of Commonwealth Universities (ACU),Association of African Universities (AAU),National University Commission (NUC),Institute of Chartered Accountants of Nigeria (ICAN)	None
10	University of Port Harcourt	Rivers	East/West Road; PMB 5323 Choba, Port Harcourt (population range: 1,000,000-5,000,000)500001 Rivers Nigeria	Public	1975	https://www.uniport.edu.ng/	https://www.linkedin.com/school/university-of-port-harcourt/	For Enlightenment and Self-Reliance	Uniport	Semesters	over-5,000	National Universities Commission, Nigeria	0-10%	Suburban	Blue and white	Not reported	Non-Profit	12	Yes	Men and Women (coed)	Yes	Yes	Yes	6	35,000-39,999	Undergraduate and Postgraduate	South South	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1975, University of Port Harcourt is a non-profit public higher education institution located in the suburban setting of the metropolis of Port Harcourt (population range of 1,000,000-5,000,000 inhabitants), Rivers. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Port Harcourt (Uniport) is a very large (uniRank enrollment range: 35,000-39,999 students) coeducational higher education institution. University of Port Harcourt (Uniport) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 0-10% making this Nigerian higher education organization a most selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Port_Harcourt	Association of Commonwealth Universities (ACU, Association of African Universities (AAU)	None
11	Adekunle Ajasin University	Ondo	Private Mailbox 01 Akungba Akoko (population range: 250,000-499,999) 23401 Ondo Nigeria	Public	1982	https://aaua.edu.ng/	https://www.linkedin.com/school/adekunle-ajasin-university/	For Learning and Service	AAUA	Semesters	1,000-1,499	National Universities Commission, Nigeria	40-50%	Suburban		Not reported	Non-Profit	6	Not reported	Men and Women (coed)	Not reported	Yes	Yes	4	10,000-14,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1982, Adekunle Ajasin University is a non-profit public higher education institution located in the suburban setting of the medium city of Akungba Akoko (population range of 250,000-499,999 inhabitants), Ondo. This institution has also branch campuses in the following location(s): Ikare Akoko. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Adekunle Ajasin University (AAUA) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Adekunle Ajasin University (AAUA) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 38 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment	https://en.wikipedia.org/wiki/Adekunle_Ajasin_University	Association of African Universities (AAU)	None
12	Federal University of Agriculture, Abeokuta	Ogun	Alabata Road Abeokuta (population range: 500,000-1,000,000) 110124 Ogun Nigeria	Public	1988	https://unaab.edu.ng/	https://www.linkedin.com/school/university-of-agriculture-abeokuta/	Knowledge for Development	FUNAAB	Semesters	1,500-1,999	National Universities Commission, Nigeria	40-50%	Urban	Green	Not reported	Non-Profit	9	Yes	Men and Women (coed)	Yes	Yes	Yes	2	10,000-14,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1988, Federal University of Agriculture, Abeokuta is a non-profit public higher education institution located in the urban setting of the large city of Abeokuta (population range of 500,000-1,000,000 inhabitants), Ogun. This institution has also branch campuses in the following location(s): Cenhurd. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University of Agriculture, Abeokuta (FUNAAB) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Federal University of Agriculture, Abeokuta (FUNAAB) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 32 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Federal_University_of_Agriculture,_Abeokuta	Association of Commonwealth Universities (ACU, Association of African Universities (AAU)	None
13	Landmark University	Kwara	Km 4 Ipetu,Omu Aran Road; PMB 1001 Omu-Aran (population range: 50,000-249,999)Kwara Nigeria	Private	2011	https://lmu.edu.ng/	https://www.linkedin.com/school/landmark-university/	Breaking New Grounds	LMU	Semesters	200-299	National Universities Commission, Nigeria	60-70%	Suburban	Green, brown and gold	Not reported	Non-Profit	3	Yes	Men and Women (coed)	Yes	Yes	Yes	4	2,000-2,999	Undergraduate and Postgraduate	North Central 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Established in 2011, Landmark University is a non-profit private higher education institution located in the suburban setting of the small city of Omu-Aran (population range of 50,000-249,999 inhabitants), Kwara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Landmark University (LMU) is a small (uniRank enrollment range: 2,000-2,999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Landmark University (LMU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 9 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Landmark_University	Association of African Universities (AAU)	Christian-Pentecostal
14	Ladoke Akintola University of Technology	Oyo	Private Mailbox 4000 Ogbomoso (population range: 500,000-1,000,000) Oyo Nigeria	Public	1990	http://www.lautech.edu.ng/	https://www.linkedin.com/school/ladoke-akintola-university-of-technology/	Excellence, Integrity and Service	LAUTECH	Semesters	1,000-1,499	National Universities Commission, Nigeria	10-20%	Rural		Not reported	Non-Profit	9	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	20,000-24,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1990, Ladoke Akintola University of Technology is a non-profit public higher education institution located in the rural setting of the large city of Ogbomoso (population range of 500,000-1,000,000 inhabitants), Oyo. This institution has also branch campuses in the following location(s): Osogbo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ladoke Akintola University of Technology (LAUTECH) is a large (uniRank enrollment range: 20,000-24,999 students) coeducational higher education institution. Ladoke Akintola University of Technology (LAUTECH) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 30 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/Ladoke_Akintola_University_of_Technology	Association of African Universities (AAU)	None
15	American University of Nigeria	Adamawa	Lamido Zubairu Way; PMB 2250Yola (population range: 50,000-249,999) 640001 Adamawa Nigeria	Private	2004	http://www.aun.edu.ng/	https://www.linkedin.com/school/american-university-of-nigeria-yola/	\tQuality, Integrity, Style	AUN	Semesters	400-499	National Universities Commission, Nigeria	30-40%	Rural	Red, blue and white	Not reported	Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	4	1,000-1,999	Undergraduate and Postgraduate	North East 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2004, American University of Nigeria is a non-profit private higher education institution located in the rural setting of the small city of Yola (population range of 50,000-249,999 inhabitants), Adamawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, American University of Nigeria (AUN) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution. American University of Nigeria (AUN) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 16 years old higher-education institution has a selective admission policy based on students' past academic record and grades. The admission rate range is 30-40% making this Nigerian higher education organization a very selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/American_University_of_Nigeria	Not available	None
16	Federal University of Technology, Akure	Ondo	Along Ilesa / Owo Expressway; PMB 704 Akure (population range: 250,000 499,999) 2340001 Ondo Nigeria	Public	1981	http://www.futa.edu.ng/	https://www.linkedin.com/school/federal-university-of-technology-akure/	Technology for Self Reliance	FUTA	Semesters	2,500-2,999	National Universities Commission, Nigeria	50-60%	Suburban	Purple and blue	Not reported	Non-Profit	9	Yes	Men and Women (coed)	Yes	Yes	Yes	4	20,000-24,999	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1981, Federal University of Technology, Akure is a non-profit public higher education institution located in the suburban setting of the medium city of Akure (population range of 250,000-499,999 inhabitants), Ondo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University of Technology, Akure (FUTA) is a large (uniRank enrollment range: 20,000-24,999 students) coeducational higher education institution. Federal University of Technology, Akure (FUTA) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 39 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 50-60% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/Federal_University_of_Technology_Akure	Association of Commonwealth Universities (ACU, Association of African Universities (AAU)	None
17	Afe Babalola University	Ekiti	Km 8.5 Afe Babalola Way Ado-Ekiti (population range: 250,000-499,999) 360001 Ekiti Nigeria	Private	2009	http://www.abuad.edu.ng/	https://www.linkedin.com/school/afe-babalola-university/	Labor Servitum Et Integritas (Labor for Service and Integrity)	\tABUAD	Semesters	500-599	National Universities Commission, Nigeria	90-100%	Urban	Red and blue	Not reported	Non-Profit	5	Yes	Men and Women (coed)	Yes	Yes	Yes	6	5,000-5,999	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2009, Afe Babalola University is a non-profit private higher education institution located in the urban setting of the medium city of Ado-Ekiti (population range of 250,000-499,999 inhabitants), Ekiti. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Afe Babalola University (ABUAD) is a small (uniRank enrollment range: 5,000-5,999 students) coeducational higher education institution. Afe Babalola University (ABUAD) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 10 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 90-100% making this Nigerian higher education organization a least selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Afe_Babalola_University	Not available	None
18	Pan-Atlantic University	Lagos	PO Box 73688Lagos (population range: over 5,000,000) Lagos Nigeria	Private	2002	https://www.pau.edu.ng/	https://www.linkedin.com/company/pan-atlantic-university-pau/		\tPAU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Not reported	-	Not reported	Men and Women (coed)	Not reported	Yes	Yes	2	Not reported	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Not reported	Not reported	Founded in 2002, Pan-Atlantic University is a private higher education institution located in the large metropolis of Lagos (population range of over 5,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Pan-Atlantic University (PAU) is a coeducational higher education institution. Pan-Atlantic University (PAU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	Not Available	Not available	None
19	Babcock University	Ogun	Private Mailbox 21244 Ilishan-Remo (population range: 10,000-49,999) Ogun Nigeria	Private	1999	https://www.babcock.edu.ng/	Not Available	Knowledge, Truth, Service	BU	Semesters	1,000-1,499	National Universities Commission, Nigeria	10-20%	Suburban	Blue and gold	Not reported	Non-Profit	9	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	5,000-5,999	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1999, Babcock University is a non-profit private higher education institution located in the suburban setting of the large town of Ilishan-Remo (population range of 10,000-49,999 inhabitants), Ogun. This institution has also branch campuses in the following location(s): Iperu-Remo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Babcock University (BU) is a small (uniRank enrollment range: 5,000-5,999 students) coeducational higher education institution formally affiliated with the Christian-Adventist religion. Babcock University (BU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 21 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Babcock_University	Association of African Universities (AAU)	Christian-Adventist 
20	University of Jos	Plateau	Private Mailbox 2084 Jos (population range: 1,000,000-5,000,000) 930001 Plateau Nigeria	Public	1975	https://www.unijos.edu.ng/	https://www.linkedin.com/company/unijos	\tDiscipline and Dedication	UNIJOS	Semesters	1,500-1,999	National Universities Commission, Nigeria	0-10%	Urban	Blue, white, brown, gold and green	Not reported	Non-Profit	12	Not reported	Men and Women (coed)	Yes	Yes	Yes	6	20,000-24,999	Undergraduate and Postgraduate	North Central 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1975, University of Jos is a non-profit public higher education institution located in the urban setting of the metropolis of Jos (population range of 1,000,000-5,000,000 inhabitants), Plateau. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Jos (UNIJOS) is a large (uniRank enrollment range: 20,000-24,999 students) coeducational higher education institution. University of Jos (UNIJOS) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 0-10% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Jos	Association of Commonwealth Universities (ACU)	None
21	Lagos State University	Lagos	Badagry Expressway PMB 1087 Ojo (population range: 500,000-1,000,000) Lagos Nigeria	Public	1983	https://lasu.edu.ng/	https://www.linkedin.com/school/lagos-state-university-ojo-campus/	Per la verità e di servizio For Truth and Service	LASU	Continuous	1,000-1,499	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	11	Not reported	Men and Women (coed)	Not reported	Yes	Yes	6	15,000-19,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Established in 1983, Lagos State University is a non-profit public higher education institution located in the large city of Ojo (population range of 500,000-1,000,000 inhabitants), Lagos. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Lagos State University (LASU) is a large (uniRank enrollment range: 15,000-19,999 students) coeducational higher education institution. Lagos State University (LASU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 37 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/Lagos_State_University	Not available	None
22	Federal University, Oye-Ekiti	Ekiti	Oye-Afao Road Oye-Ekiti (population range: 10,000-49,999) 360001 Ekiti Nigeria	Public	2011	https://fuoye.edu.ng/	Not Available	Innovation and Character for National Transformation Dignity and Character for National Transformation	FUOYE	Semesters	2,000-2,499	National Universities Commission, Nigeria	60-70%	Rural	Green and gold	Not reported	Non-Profit	7	Not reported	Men and Women (coed)	Yes	Yes	Yes	5	6,000-6,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2011, Federal University, Oye-Ekiti is a non-profit public higher education institution located in the rural setting of the large town of Oye-Ekiti (population range of 10,000-49,999 inhabitants), Ekiti. This institution has also branch campuses in the following location(s): Ikole. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Oye-Ekiti (FUOYE) is a medium-sized (uniRank enrollment range: 6,000-6,999 students) coeducational higher education institution. Federal University, Oye-Ekiti (FUOYE) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 9 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Federal_University_Oye_Ekiti	National Universities Commission, Nigeria	None
23	Skyline University Nigeria	Kano	No 2 Zaria Road Opposite Old Kano-Line Bus-Stop Kano (population range: 1,000,000 5,000,000) Kano Nigeria	Private	2018	https://www.sun.edu.ng/	https://www.linkedin.com/company/skylineuniversitynigeria/		SUN	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Not reported	2	Not reported	Men and Women (coed)	Not reported	Yes	Yes	Not reported	Not reported	Undergraduate and Postgraduate	North West 	Yes, based on entrance examinations and students' past academic record and grades	Not reported	Not reported	Founded in 2018, Skyline University Nigeria is a private higher education institution located in the metropolis of Kano (population range of 1,000,000-5,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Skyline University Nigeria (SUN) is a coeducational higher education institution. Skyline University Nigeria (SUN) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	Not Available	Not available	None
24	Federal University of Technology, Owerri	Imo	Private Mailbox 1526 Owerri (population range: 50,000-249,999) Imo Nigeria	Public	1980	https://futo.edu.ng/	Not Available	Technology for Service	FUTO	Semesters	Not reported	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Non-Profit	9	Not reported	Men and Women (coed)	Yes	Yes	Yes	5	Not reported	Undergraduate and Postgraduate	South East	Not reported	Yes	Not reported	Founded in 1980, Federal University of Technology, Owerri is a non-profit public higher education institution located in the urban setting of the small city of Owerri (population range of 50,000-249,999 inhabitants), Imo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University of Technology, Owerri (FUTO) is a coeducational higher education institution. Federal University of Technology, Owerri (FUTO) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Federal_University_of_Technology_Owerri	Not available	None
25	Nile University of Nigeria	Abuja	Plot 681, Cadastral Zone C 00, Research & Institution Area, Jabi Airport Bypass Abuja (population range: 50,000-249,999) Federal Capital Territory Nigeria	Private	2009	https://www.nileuniversity.edu.ng/	Not Available		NTNU	Not reported	50-99	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Not reported	6	Not reported	Men and Women (coed)	Yes	Yes	Yes	5	500-999	Undergraduate and Postgraduate	North Central	Not reported	Yes	Not reported	Founded in 2009, Nile University of Nigeria is a private higher education institution located in the small city of Abuja (population range of 50,000-249,999 inhabitants), Federal Capital Territory. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Nile University of Nigeria (NTNU) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution. Nile University of Nigeria (NTNU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Nigerian_Turkish_Nile_University	Not available	None
26	University of Abuja	Abuja	Private Mailbox 117, Gwagwalada Abuja (population range: 50,000-249,999) Federal Capital Territory Nigeria	Public	1988	http://www.uniabuja.edu.ng/	https://www.linkedin.com/school/university-of-abuja/	For Unity And Scholarship	UNIABUJA	Semesters	2,500-2,999	National Universities Commission, Nigeria	Not reported	Suburban	Green and white	Yes	Non-Profit	10	Not reported	Men and Women (coed)	Not reported	Yes	Yes	6	Not reported	Undergraduate and Postgraduate	North Central	Yes, based on entrance examinations and students' past academic record and grades	Not reported	Not reported	Established in 1988, University of Abuja is a non-profit public higher education institution located in the suburban setting of the small city of Abuja (population range of 50,000-249,999 inhabitants), Federal Capital Territory. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Abuja is a coeducational higher education institution. University of Abuja offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 32 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Abuja	Association of African Universities (AAU)	None
27	Bayero University Kano	Kano	Private Mailbox 3011 Kano (population range: 1,000,000-5,000,000) Kano Nigeria	Public	1975	http://www.buk.edu.ng/	https://www.linkedin.com/school/bayero-university-kano/	...and above every possessor of knowledge there is One more learned	BUK	Semesters	1,000-1,499	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	12	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	7,000-7,999	Undergraduate and Postgraduate	North West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Established in 1975, Bayero University Kano is a non-profit public higher education institution located in the metropolis of Kano (population range of 1,000,000-5,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Bayero University Kano (BUK) is a medium-sized (uniRank enrollment range: 7,000-7,999 students) coeducational higher education institution. Bayero University Kano (BUK) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/Bayero_University_Kano	Association of Commonwealth Universities (ACU),Federation of the Universities of the   Islamic World (FUIW)	None
28	Bowen University	Osun	Iwo (population range: 250,000-499,999) 23401 Osun Nigeria	Private	2001	https://bowen.edu.ng//	Not Available		BUI	Semesters	Not reported	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Non-Profit	6	Not reported	Men and Women (coed)	Not reported	Yes	Yes	6	5,000-5,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Founded in 2001, Bowen University is a non-profit private higher education institution located in the urban setting of the medium city of Iwo (population range of 250,000-499,999 inhabitants), Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Bowen University (BUI) is a small (uniRank enrollment range: 5,000-5,999 students) coeducational higher education institution formally affiliated with the Christian-Baptist religion. Bowen University (BUI) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 19 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/Bowen_University	Not available	Christian-Baptist
29	University of Uyo	Akwa Ibom	Private Mailbox 1017 Uyo (population range: 50,000-249,999) Akwa Ibom Nigeria	Public	1991	http://www.uniuyo.edu.ng/	https://www.linkedin.com/school/university-of-uyo/	Unity, Learning and Service	UNIUYO	Semesters	1,000-1,499	National Universities Commission, Nigeria	Not reported	Not reported		Yes	Non-Profit	12	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	Not reported	Undergraduate and Postgraduate	South South	Not reported	Not reported	Not reported	Founded in 1991, University of Uyo is a non-profit public higher education institution located in the small city of Uyo (population range of 50,000-249,999 inhabitants), Akwa Ibom. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Uyo is a coeducational higher education institution. University of Uyo offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/University_of_Uyo	Association of African Universities (AAU)	None
30	University of Maiduguri	Borno	Bama Road Maiduguri (population range: 500,000-1,000,000) Borno Nigeria	Public	1975	http://www.unimaid.edu.ng/	https://www.linkedin.com/school/university-of-maiduguri/		Unimaid	Not reported	2,500-2,999	National Universities Commission, Nigeria	Not reported	Urban	Blue and white	Yes	Non-Profit	12	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	25,000-29,999	Undergraduate and Postgraduate	North East	Yes, based on entrance examinations	Yes	Not reported	Founded in 1975, University of Maiduguri is a non-profit public higher education institution located in the urban setting of the large city of Maiduguri (population range of 500,000-1,000,000 inhabitants), Borno. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Maiduguri (Unimaid) is a large (uniRank enrollment range: 25,000-29,999 students) coeducational higher education institution. University of Maiduguri (Unimaid) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/University_of_Maiduguri	Not available	None
31	Federal University of Technology, Minna	Niger	Main Campus, Gidan Kwanu, Along Minna - Bida Road; PMB 65 Minna (population range: 250,000499,999) 290262 Niger Nigeria	Public	1982	https://www.futminna.edu.ng/	https://www.linkedin.com/school/federal-university-of-technology-minna/	\tTechnology for Empowerment	\tFUT Minna	Semesters	4,000-4,499	National Universities Commission, Nigeria	70-80%	Urban	Purple, cream and skyblue	Yes	Non-Profit	10	Not reported	Men and Women (coed)	Yes	Yes	Yes	3	15,000-19,999	Undergraduate and Postgraduate	North Central	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1982, Federal University of Technology, Minna is a non-profit public higher education institution located in the urban setting of the medium city of Minna (population range of 250,000-499,999 inhabitants), Niger. This institution has also branch campuses in the following location(s): Bosso. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University of Technology, Minna (FUT Minna) is a large (uniRank enrollment range: 15,000-19,999 students) coeducational higher education institution. Federal University of Technology, Minna (FUT Minna) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 38 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 70-80% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment	https://en.wikipedia.org/wiki/Federal_University_of_Technology_Minna	Association of African Universities (AAU)	None
32	Nnamdi Azikiwe University	Anambra	Private Mailbox 5025 Awka (population range: 250,000-499,999) Anambra Nigeria	Public	1991	https://www.unizik.edu.ng/	https://www.linkedin.com/school/nnamdi-azikiwe-university-awka/	Discipline, Self Reliance and Excellence	NAU	Semesters	1,000-1,499	National Universities Commission, Nigeria	10-20%	Suburban		Not reported	Non-Profit	14	Not reported	Men and Women (coed)	Not reported	Yes	Yes	6	30,000-34,999	Undergraduate and Postgraduate	South East	\tYes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1991, Nnamdi Azikiwe University is a non-profit public higher education institution located in the suburban setting of the medium city of Awka (population range of 250,000-499,999 inhabitants), Anambra. This institution has also branch campuses in the following location(s): Nnewi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Nnamdi Azikiwe University (NAU) is a very large (uniRank enrollment range: 30,000-34,999 students) coeducational higher education institution. Nnamdi Azikiwe University (NAU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 29 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Nnamdi_Azikiwe_University	Not available	None
33	African University of Science and Technology	Abuja	Private Mailbox 681, Garki Abuja (population range: 50,000-249,999) Federal Capital Territory Nigeria	Private	2007	https://aust.edu.ng/	https://www.linkedin.com/company/african-university-of-science-&-technology-abuja-nigeria/		AUST	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Not reported	6	Not reported	Men and Women (coed)	Not reported	Yes	Yes	Not reported	250-499	Not reported	North Central 	Not reported	Not reported	Not reported	Founded in 2007, African University of Science and Technology is a private higher education institution located in the urban setting of the small city of Abuja (population range of 50,000-249,999 inhabitants), Federal Capital Territory. Officially accredited and/or recognized by the National Universities Commission, Nigeria, African University of Science and Technology (AUST) is a very small (uniRank enrollment range: 250-499 students) coeducational higher education institution. African University of Science and Technology (AUST) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/African_University_of_Science_and_Technology	Not available	None
34	Baze University	Abuja	Plot 686, Cadastral Zone C 00, Jabi Airport Road Bypass (Ring Road) Abuja (population range: 50,000-249,999) Federal Capital Territory Nigeria	Private	2011	https://www.bazeuniversity.edu.ng/	Not Available	Learn to live		Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Suburban	\tSilver	Not reported	Not reported	7	Not reported	Men and Women (coed)	Yes	Yes	Yes	4	Not reported	Undergraduate and Postgraduate	North Central 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Established in 2011, Baze University is a private higher education institution located in the suburban setting of the small city of Abuja (population range of 50,000-249,999 inhabitants), Federal Capital Territory. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Baze University is a coeducational higher education institution. Baze University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 9 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Baze_University	Not available	None
35	Osun State University	Osun	Oke Baale; PMB 4494 Oshogbo (population range: 250,000-499,999) 230001 Osun Nigeria	Public	2007	http://uniosun.edu.ng/	Not Available	Living Spring of Knowledge and Culture	\tUNIOSUN	Semesters	100-199	National Universities Commission, Nigeria	 40-50%	Suburban	Gold, green and blue	Yes	Non-Profit	7	Yes	Men and Women (coed)	Yes	Yes	Yes	6	2,000-2,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2007, Osun State University is a non-profit public higher education institution located in the suburban setting of the medium city of Oshogbo (population range of 250,000-499,999 inhabitants), Osun. This institution has also branch campuses in the following location(s): Ejigbo, Ifetedo, Ikire, Ipetu-Ijesa, Okuku. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Osun State University (UNIOSUN) is a small (uniRank enrollment range: 2,000-2,999 students) coeducational higher education institution. Osun State University (UNIOSUN) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 12 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment	https://en.wikipedia.org/wiki/Osun_State_University	Association of African Universities (AAU)	None
58	Kaduna State University	Kaduna	Address\tPrivate Mailbox 2339 Kaduna (population range: 1,000,000-5,000,000) Kaduna Nigeria	Public	2004	https://www.kasu.edu.ng/	Not Available	Knowledge for Development and Unity	KASU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	9	Not reported	Men and Women (coed)	Not reported	Yes	Yes		Not reported		North West 	Not reported	Not reported	Not reported	Established in 2004, Kaduna State University is a non-profit public higher education institution located in the metropolis of Kaduna (population range of 1,000,000-5,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kaduna State University (KASU) is a coeducational higher education institution. Kaduna State University (KASU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Kaduna_State_University	Not available	None
36	University of Calabar	Cross River	Private Mailbox 1115, Eta Agbo Road Calabar (population range: 250,000-499,999) Cross River Nigeria	Public	1975	https://www.unical.edu.ng/	https://www.linkedin.com/school/university-of-calabar/		UNICAL	Semesters	3,000-3,499	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	13	Yes	Men and Women (coed)	Yes	Yes	Yes	5	40,000-44,999	Undergraduate and Postgraduate	South South	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1975, University of Calabar is a non-profit public higher education institution located in the medium city of Calabar (population range of 250,000-499,999 inhabitants), Cross River. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Calabar (UNICAL) is a very large (uniRank enrollment range: 40,000-44,999 students) coeducational higher education institution. University of Calabar (UNICAL) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations. International applicants are eligible to apply for enrollment.	https://www.linkedin.com/school/university-of-calabar/	Association of Commonwealth Universities (ACU) Association of African Universities (AAU)	None
37	Redeemer's University	Osun	Gbongan-Osogbo Road, Akoda-Ede Ede (population range: 50,000-249,999) 232103 Osun Nigeria	Private	2005	http://run.edu.ng/	https://www.linkedin.com/school/redeemersuniversity/	Running with a Vision	RUN	Semesters	200-299	National Universities Commission, Nigeria	50-60%	Suburban	Blue, white and gold	Not reported	Non-Profit	6	Yes	Men and Women (coed)	Yes	Yes	Yes	4	1,000-1,999	Undergraduate and Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Founded in 2005, Redeemer's University is a non-profit private higher education institution located in the suburban setting of the small city of Ede (population range of 50,000-249,999 inhabitants), Osun. This institution has also branch campuses in the following location(s): Osogbo, Ilesha, Ile-Ife, Iwo, Ikire, Ipetumodu. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Redeemer's University (RUN) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Redeemer's University (RUN) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 50-60% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/Redeemer%27s_University_Nigeria	Association of Commonwealth Universities (ACU)	Christian-Pentecostal
38	Veritas University	Abuja	Plot 1, Block 1, By Urban Planning Way, 4th Avenue, Gwarinpa Abuja (population range: 50,000-249,999) Federal Capital Territory Nigeria	Private	2007	https://www.veritas.edu.ng/	Not Available		VU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Not reported	5	Not reported	Men and Women (coed)	Not reported	Yes	Yes	Not reported	Not reported	Undergraduate and Postgraduate	North Central 	Not reported	Not reported	Not reported	Established in 2007, Veritas University is a private higher education institution located in the small city of Abuja (population range of 50,000-249,999 inhabitants), Federal Capital Territory. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Veritas University (VU) is a coeducational higher education institution. Veritas University (VU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Veritas_University	Not available	None
39	Alex Ekwueme Federal University, Ndufu-Alike	Ebonyi	Ikwo (population range: 50,000-249,999) Ebonyi Nigeria	Public	2011	https://funai.edu.ng/	Not Available	Excellence and Integrity	FUNAI	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	7	Not reported	Men and Women (coed)	Not reported	Yes	Yes	4	3,000-3,999	Undergraduate	South East 	Not reported	Not reported	Not reported	Founded in 2011, Alex Ekwueme Federal University, Ndufu-Alike is a non-profit public higher education institution located in the small city of Ikwo (population range of 50,000-249,999 inhabitants), Ebonyi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Alex Ekwueme Federal University, Ndufu-Alike (FUNAI) is a small (uniRank enrollment range: 3,000-3,999 students) coeducational higher education institution. Alex Ekwueme Federal University, Ndufu-Alike (FUNAI) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Federal_University_Ndufu_Alike_Ikwo	Not available	None
40	Igbinedion University Okada	Edo	Mission Road Okada (population range: 2,500-9,999) 1090 Edo Nigeria	Private	1999	https://www.iuokada.edu.ng/	https://www.linkedin.com/school/igbinedion-university-okada/	Knowledge and Excellence	IUO	Semesters	 700-799	National Universities Commission, Nigeria	70-80%	Urban		Not reported	For-Profit	7	Yes	Men and Women (coed)	Yes	Yes	Yes	6	 5,000-5,999	Undergraduate and Postgraduate	South South 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1999, Igbinedion University Okada is a for-profit private higher education institution located in the urban setting of the medium town of Okada (population range of 2,500-9,999 inhabitants), Edo. This institution has also branch campuses in the following location(s): Benin City. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Igbinedion University Okada (IUO) is a small (uniRank enrollment range: 5,000-5,999 students) coeducational higher education institution. Igbinedion University Okada (IUO) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 21 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 70-80% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Igbinedion_University	Not available	None
41	Michael Okpara University of Agriculture	Abia	Private Mailbox 7267 Umuahia (population range: 50,000-249,999)Abia Nigeria	Public	1992	https://mouauportal.edu.ng/	Not Available	Knowledge, Food and Security	MOUAU	Continuous	1,000-1,499	National Universities Commission, Nigeria	Not reported	Not reported	\tGreen and yellow	Not reported	Non-Profit	-	Not reported	Men and Women (coed)	Not reported	Yes	Yes	3	10,000-14,999	Undergraduate and Postgraduate	South East	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Founded in 1992, Michael Okpara University of Agriculture is a non-profit public higher education institution located in the small city of Umuahia (population range of 50,000-249,999 inhabitants), Abia. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Michael Okpara University of Agriculture (MOUAU) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Michael Okpara University of Agriculture (MOUAU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 28 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/Michael_Okpara_University_of_Agriculture	Not available	None
42	Benson Idahosa University	Edo	University Way, Off Upper Adesuwa Grammer School Road; PMB 1100 Benin City (population range: 1,000,000-5,000,000) Edo Nigeria	Private	2002	https://www.biu.edu.ng/	https://www.linkedin.com/company/benson-idahosa-university/	\tAcademic Excellence with Godliness	BIU	Semesters	300-399	National Universities Commission, Nigeria	50-60%	Urban	\tGold, white and blue	Not reported	Non-Profit	8	Yes	Men and Women (coed)	Yes	Yes	Yes	4	4,000-4,999	Undergraduate and Postgraduate	South South 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2002, Benson Idahosa University is a non-profit private higher education institution located in the urban setting of the metropolis of Benin City (population range of 1,000,000-5,000,000 inhabitants), Edo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Benson Idahosa University (BIU) is a small (uniRank enrollment range: 4,000-4,999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Benson Idahosa University (BIU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 18 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 50-60% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment	https://en.wikipedia.org/wiki/Benson_Idahosa_University	Not available	Christian-Pentecostal 
43	Abubakar Tafawa Balewa University	Bauchi	Private Mailbox 0248 Bauchi (population range: 250,000-499,999) 740004 Bauchi Nigeria	Public	1988	http://www.atbu.edu.ng/	https://www.linkedin.com/school/abubakar-tafawa-balewa-university/	Doctrina matter artium Education is the mother of the practical arts	ATBU	Semesters	500-599	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Non-Profit	9	Not reported	Men and Women (coed)	Not reported	Yes	Yes	4	Not reported	Undergraduate and Postgraduate	North East	Yes, based on entrance examinations and students' past academic record and grades	Yes	Not reported	Founded in 1988, Abubakar Tafawa Balewa University is a non-profit public higher education institution located in the urban setting of the medium city of Bauchi (population range of 250,000-499,999 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Abubakar Tafawa Balewa University (ATBU) is a coeducational higher education institution. Abubakar Tafawa Balewa University (ATBU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Abubakar_Tafawa_Balewa_University	Association of Commonwealth Universities (ACU) Association of African Universities (AAU)	None
44	Ebonyi State University	Ebonyi	Private Mailbox 53 Abakaliki (population range: 50,000-249,999) Ebonyi Nigeria	Public	2000	http://ebsu.edu.ng/	Not Available		EBSU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	9	Not reported	Men and Women (coed)	Not reported	Yes	Yes	1	Not reported		South East 	Not reported	Not reported	Not reported	Established in 2000, Ebonyi State University is a non-profit public higher education institution located in the small city of Abakaliki (population range of 50,000-249,999 inhabitants), Ebonyi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ebonyi State University (EBSU) is a coeducational higher education institution. Ebonyi State University (EBSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Ebonyi_State_University	Not available	None
45	Enugu State University of Science and Technology	Enugu	Private Mailbox 01660 Enugu (population range: 500,000-1,000,000) Enugu Nigeria	Public	1981	https://www.esut.edu.ng/	https://www.linkedin.com/school/enugu-state-university-of-science-and-technology/		\tESUTECH	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Non-Profit	11	Not reported	Men and Women (coed)	Not reported	Yes	Yes	2	over-45,000	Undergraduate	South East 	Not reported	Not reported	Not reported	Established in 1981, Enugu State University of Science and Technology is a non-profit public higher education institution located in the urban setting of the large city of Enugu (population range of 500,000-1,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Enugu State University of Science and Technology (ESUTECH) is a very large (uniRank enrollment range: over-45,000 students) coeducational higher education institution. Enugu State University of Science and Technology (ESUTECH) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Enugu_State_University_of_Science_and_Technology	Not available	None
46	Elizade University	Ondo	500 Wuraola Adeojo Street Ilara-Mokin (population range: 10,000-49,999) 340252 Ondo Nigeria	Private	2012	https://www.elizadeuniversity.edu.ng/	Not Available	Pragmatic Innovation for Development	ElizadeU	Semesters	under-50	National Universities Commission, Nigeria	\tNot reported	Rural	\tGreen, yellow, black and white	Not reported	Non-Profit	5	Yes	Men and Women (coed)	Yes	Yes	Yes	5	250-499	Undergraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2012, Elizade University is a non-profit private higher education institution located in the rural setting of the large town of Ilara-Mokin (population range of 10,000-49,999 inhabitants), Ondo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Elizade University (ElizadeU) is a very small (uniRank enrollment range: 250-499 students) coeducational higher education institution. Elizade University (ElizadeU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 8 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International applicants are eligible to apply for enrollment	https://en.wikipedia.org/wiki/Elizade_University	Not available	None
47	Usmanu Danfodio University	Sokoto	Private Mailbox 2346 Sokoto (population range: 250,000-499,999) Sokoto Nigeria	Public	1975	https://www.udusok.edu.ng/	https://www.linkedin.com/school/usmanu-danfodiyo-university-sokoto/	Read	UDU	Semesters	300-399	National Universities Commission, Nigeria	Not reported	Urban		Yes	Non-Profit	18	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	Not reported	Undergraduate and Postgraduate	North West 	Yes, based on entrance examinations and students' past academic record and grades	Not reported	Not reported	Founded in 1975, Usmanu Danfodio University is a non-profit public higher education institution located in the urban setting of the medium city of Sokoto (population range of 250,000-499,999 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Usmanu Danfodio University (UDU) is a coeducational higher education institution. Usmanu Danfodio University (UDU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 45 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/Usmanu_Danfodiyo_University	Association of Commonwealth Universities (ACU), Association of African Universities (AAU)	None
48	Delta State University, Abraka	Delta	Private Mailbox 1Abraka (population range: 10,000-49,999)Delta Nigeria	Public	1992	https://www.delsu.edu.ng/	https://www.linkedin.com/school/delsu-main-campus/	Knowledge, Character and Service	DELSU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Urban		Not reported	Non-Profit	7	Not reported	Men and Women (coed)	Not reported	Yes	Yes	1	Not reported	Undergraduate	South South	Not reported	Not reported	Not reported	Established in 1992, Delta State University, Abraka is a non-profit public higher education institution located in the urban setting of the large town of Abraka (population range of 10,000-49,999 inhabitants), Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Delta State University, Abraka (DELSU) is a coeducational higher education institution. Delta State University, Abraka (DELSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Delta_State_University,_Abraka	Association of African Universities (AAU)	None
49	Taraba State University	Taraba	Jalingo (population range: 50,000-249,999) Taraba Nigeriaa	Public	2008	http://www.tsuniversity.edu.ng/	Not Available		TSU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit		Not reported	Men and Women (coed)	Not reported	Yes	Yes		Not reported		North East 	Not reported	Not reported	Not reported	Founded in 2008, Taraba State University is a non-profit public higher education institution located in the small city of Jalingo (population range of 50,000-249,999 inhabitants), Taraba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Taraba State University (TSU) is a coeducational higher education institution. Taraba State University (TSU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Taraba_State_University	Not available	None
50	Umaru Musa Yar'Adua University	Katsina	Dutsinma Road Katsina (population range: 250,000-499,999) Katsina Nigeria	Public	2006	https://www.umyu.edu.ng/	Not Available		UMYU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	 Non-Profit	5	Not reported	Men and Women (coed)	Not reported	Yes	Yes		Not reported		North West 	Not reported	Not reported	Not reported	Founded in 2006, Umaru Musa Yar'Adua University is a non-profit public higher education institution located in the medium city of Katsina (population range of 250,000-499,999 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Umaru Musa Yar'Adua University (UMYU) is a coeducational higher education institution. Umaru Musa Yar'Adua University (UMYU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Umaru_Musa_Yar%27adua_University	Not available	None
51	Kwara State University	Kwara	Address\tSecretariat, Zango Ilorin (population range: 500,000-1,000,000) Kwara Nigeria	Public	2009	https://www.kwasu.edu.ng/	Not Available	Service and Integrity	\tKWASU	Semesters	Not reported	National Universities Commission, Nigeria	Not reported	Suburban		Not reported	Non-Profit	8	Not reported	Men and Women (coed)	Not reported	Yes	Yes	4	 9,000-9,999	Undergraduate and Postgraduate	North Central	Yes, based on entrance examinations	Not reported	Not reported	Established in 2009, Kwara State University is a non-profit public higher education institution located in the suburban setting of the large city of Ilorin (population range of 500,000-1,000,000 inhabitants), Kwara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kwara State University (KWASU) is a medium-sized (uniRank enrollment range: 9,000-9,999 students) coeducational higher education institution. Kwara State University (KWASU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 11 years old higher-education institution has a selective admission policy based on entrance examinations. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Kwara_State_University	Not available	None
52	Tai Solarin University of Education	Ogun	Private Mailbox 2118 Ijebu-Ode (population range: 50,000-249,999) 120001 Ogun Nigeria	Public	2005	https://tasued.edu.ng/	https://www.4icu.org/twitter/ng/12287/	Integrity and Selflessness	TASUED	Semesters	1,000-1,499	National Universities Commission, Nigeria	 40-50%	Suburban	Gold, blue and green	Not reported	Non-Profit	5	Yes	Men and Women (coed)	Not reported	Yes	Yes	4	10,000-14,999	Undergraduate and Postgraduate	South West 	\tYes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2005, Tai Solarin University of Education is a non-profit public higher education institution located in the suburban setting of the small city of Ijebu-Ode (population range of 50,000-249,999 inhabitants), Ogun. This institution has also branch campuses in the following location(s): Ijagun, Ososa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Tai Solarin University of Education (TASUED) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Tai Solarin University of Education (TASUED) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/Tai_Solarin_University_of_Education	Not available	None
53	Imo State University	Imo	Private Mailbox 2000 Owerri (population range: 50,000-249,999) Imo Nigeria	Public	1981	http://www.imsu.edu.ng/	https://www.linkedin.com/school/imo-state-university/	Excellence in service	IMSU	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported		Not reported	Non-Profit	12	Not reported	Men and Women (coed)	Not reported	Yes	Yes	2	Not reported	Undergraduate	South East 	Not reported	Not reported	Not reported	Established in 1981, Imo State University is a non-profit public higher education institution located in the small city of Owerri (population range of 50,000-249,999 inhabitants), Imo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Imo State University (IMSU) is a coeducational higher education institution. Imo State University (IMSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Imo_State_University	Not available	None
54	Federal University of Petroleum Resources	Delta	Private Mailbox 1221 Effurun (population range: Not reported) Delta Nigeria	Public	2007	https://fupre.edu.ng/	https://www.4icu.org/facebook/ng/13950/	Excellence and Relevance	FUPRE	Not reported	Not reported	National Universities Commission, Nigeria	Not reported	Not reported	Black and dusty gold	Not reported	Non-Profit	2	Not reported	Men and Women (coed)	Yes	Yes	Yes	1	Not reported		South South 	Yes, based on entrance examinations	Yes	Not reported	Established in 2007, Federal University of Petroleum Resources is a non-profit public higher education institution located in Effurun, Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University of Petroleum Resources (FUPRE) is a coeducational higher education institution. Federal University of Petroleum Resources (FUPRE) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 13 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/Federal_University_of_Petroleum_Resources_Effurun	Not available	None
55	Abia State University	Abia	Private Mailbox 2000 Uturu (population range: 10,000-49,999) Abia Nigeria	Public	1981	http://abiastateuniversity.edu.ng/	https://www.linkedin.com/school/abia-state-university/	Excellence and Service	ABSU	Semesters	1,000-1,499	National Universities Commission, Nigeria	Not reported	Rural		Not reported	Non-Profit	11	Not reported	Men and Women (coed)	Not reported	Yes	Yes	5	 20,000-24,999	Undergraduate and Postgraduate	South East	Yes, based on entrance examinations	Not reported	Not reported	Founded in 1981, Abia State University is a non-profit public higher education institution located in the rural setting of the large town of Uturu (population range of 10,000-49,999 inhabitants), Abia. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Abia State University (ABSU) is a large (uniRank enrollment range: 20,000-24,999 students) coeducational higher education institution. Abia State University (ABSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 38 years old higher-education institution has a selective admission policy based on entrance examinations.	https://en.wikipedia.org/wiki/Abia_State_University	Association of African Universities (AAU)	None
56	Lead City University	Oyo	No. 1 Oba Otudeko Road Toll Gate Area Ibadan (population range: 1,000,000 5,000,000) Oyo Nigeria	Private	2005	https://www.lcu.edu.ng/	https://www.4icu.org/twitter/ng/10780/	Knowledge for Self-reliance	LCU	Semesters	50-99	National Universities Commission, Nigeria	60-70%	Urban	Blue and white	Not reported	Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	3	3,000-3,999	Undergraduate and Postgraduate	South West	\tYes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2005, Lead City University is a non-profit private higher education institution located in the urban setting of the metropolis of Ibadan (population range of 1,000,000-5,000,000 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Lead City University (LCU) is a small (uniRank enrollment range: 3,000-3,999 students) coeducational higher education institution. Lead City University (LCU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution.	https://en.wikipedia.org/wiki/Lead_City_University	Not available	None
59	Ekiti State University, Ado Ekiti	Ekiti	Ado-Iworoko Road, PMB 5363, Ado-Ekiti, Ekiti	Public	1982	http://www.eksu.edu.ng//	https://twitter.com/ekiti_uni	Knowledge, Honour, Servic	EKSU	Semesters	1,500-1,999	National Universities Commission, Nigeria	10-20%	Suburban	Red, yellow and black		Non-Profit	10	Yes	Men and Women (coed)	Yes	Yes	Yes	6	35,000-39,999	Undergraduate, Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1982, Ekiti State University, Ado Ekiti is a non-profit public higher education institution located in the suburban setting of the medium city of Ado-Ekiti (population range of 250,000-499,999 inhabitants), Ekiti. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ekiti State University, Ado Ekiti (EKSU) is a very large (uniRank enrollment range: 35,000-39,999 students) coeducational higher education institution. Ekiti State University, Ado Ekiti (EKSU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 38 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Ekiti_State_University		
60	Benue State University	Benue	Private Mailbox 102119, Makurdi, Benue	Public	1992	https://www.bsum.edu.ng/	https://www.linkedin.com/school/benue-state-university/	Scientia Liberatio Populurum, Science makes People free	BSU			National Universities Commission, Nigeria					Non-Profit	9		Men and Women (coed)		Yes	Yes	1	30,000-34,999	Undergraduate	North Central				Founded in 1992, Benue State University is a non-profit public higher education institution located in the small city of Makurdi (population range of 50,000-249,999 inhabitants), Benue. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Benue State University (BSU) is a very large (uniRank enrollment range: 30,000-34,999 students) coeducational higher education institution. Benue State University (BSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Benue_State_University		
61	Federal University, Otuoke	Bayelsa	Otuoke, Bayelsa	Public	2011	http://www.fuotuoke.edu.ng/	https://www.linkedin.com/school/federal-university-otuoke/	Knowledge, Excellence, Service	FUOTUOKE			National Universities Commission, Nigeria		Urban			Non-Profit	2		Men and Women (coed)		Yes	Yes				South South				Founded in 2011, Federal University, Otuoke is a non-profit public higher education institution located in the urban setting of the medium town of Otuoke (population range of 2,500-9,999 inhabitants), Bayelsa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Otuoke (FUOTUOKE) is a very small (uniRank enrollment range: 250-499 students) coeducational higher education institution. Federal University, Otuoke (FUOTUOKE) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Federal_University,_Otuoke		
62	Al-Hikmah University	Kwara	Ilorin, Kwara	Private	2005	https://www.alhikmah.edu.ng/	https://twitter.com/AlhikmahUni	Learning for wisdom and morality	HUI	Semesters	400-499	National Universities Commission, Nigeria	90-100%	Urban			For-Profit	8	Yes	Men and Women (coed)	Yes	Yes	Yes	4	4,000-4,999	Undergraduate	North Central 	Yes, based on entrance examinations	Yes	Yes	Founded in 2005, Al-Hikmah University is a for-profit private higher education institution located in the urban setting of the large city of Ilorin (population range of 500,000-1,000,000 inhabitants), Kwara. This institution has also branch campuses in the following location(s): Ilorin, Atere, Igbaja. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Al-Hikmah University (HUI) is a small (uniRank enrollment range: 4,000-4,999 students) coeducational higher education institution. Al-Hikmah University (HUI) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 90-100% making this Nigerian higher education organization a least selective institution. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Al-Hikmah_University		
63	Godfrey Okoye University	Enugu	Private Mailbox 01014, Ugwuomu-Nike, Enugu	Private	2009	http://www.gouni.edu.ng/	https://twitter.com/gouni_enugu	Unity of Knowledge	GO Uni	Semesters	500-599	National Universities Commission, Nigeria		Urban	Gold, green, blue and yellow	Yes	Non-Profit	5	Yes	Men and Women (coed)	Yes	Yes	Yes	5	2,000-2,999	Undergraduate, Postgraduate	South East 	Yes, based on students' past academic record and grades	Yes	Yes	Founded in 2009, Godfrey Okoye University is a non-profit private higher education institution located in the urban setting of the large city of Ugwuomu-Nike (population range of 500,000-1,000,000 inhabitants), Enugu. This institution has also branch campuses in the following location(s): Enugu. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Godfrey Okoye University (GO Uni) is a small (uniRank enrollment range: 2,000-2,999 students) coeducational higher education institution formally affiliated with the Christian-Catholic religion. Godfrey Okoye University (GO Uni) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 10 years old higher-education institution has a selective admission policy based on students' past academic record and grades. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Godfrey_Okoye_University		Christian-Catholic
81	Caleb University	Lagos	Ikorodu, Imota, Lagos	Private	2007	https://calebuniversity.edu.ng/		For God and Humanity				National Universities Commission, Nigeria						5		Men and Women (coed)		Yes	Yes				South West				Established in 2007, Caleb University is a private higher education institution located in the medium town of Imota (population range of 2,500-9,999 inhabitants), Lagos. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Caleb University is a coeducational higher education institution. Caleb University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Caleb_University		
64	Joseph Ayo Babalola University	Osun	Along Ilesa-Akure Express Road, Ikeji-Arakeji, Osun	Private	2006	https://jabu.edu.ng/	https://www.facebook.com/jabu.info/	For knowledge and Godly Service	JABU	Semesters	800-899	National Universities Commission, Nigeria	60-70%	Suburban	Blue, green and red		For-Profit	7	Yes	Men and Women (coed)	Yes	Yes	Yes	4	4,000-4,999	Undergraduate, Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2006, Joseph Ayo Babalola University is a for-profit private higher education institution located in the suburban setting of the small city of Ikeji-Arakeji (population range of 50,000-249,999 inhabitants), Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Joseph Ayo Babalola University (JABU) is a small (uniRank enrollment range: 4,000-4,999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Joseph Ayo Babalola University (JABU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 14 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Joseph_Ayo_Babalola_University	Chartered Insurance Institute of Nigeria (CIIN),  Institute of Chartered Accountants of Nigeria (ICAN), Association of African Business Schools (AABS)	Christian-Pentecostal
65	Akwa Ibom State University	Akwa Ibom	Ikot Akpaden, Mkpat Enin Local Government Area, P.M.B. 1167 Uyo, Ikot Akpad, Akwa Ibom	Public	2009	https://www.aksu.edu.ng/	https://twitter.com/aksu360	Knowledge and Technology for Development	AKSU	Semesters	600-699	National Universities Commission, Nigeria	60-70%	Urban	Blue, green and brick		Non-Profit	8	Yes	Men and Women (coed)	Yes	Yes	Yes	5	8,000-8,999	Undergraduate	South South	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2009, Akwa Ibom State University is a non-profit public higher education institution located in the urban setting of the small city of Ikot Akpad (population range of 50,000-249,999 inhabitants), Akwa Ibom. This institution has also branch campuses in the following location(s): Obio Akpa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Akwa Ibom State University (AKSU) is a medium-sized (uniRank enrollment range: 8,000-8,999 students) coeducational higher education institution. Akwa Ibom State University (AKSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 10 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Akwa_Ibom_State_University		
66	Chukwuemeka Odumegwu Ojukwu University	Anambra	Private Mailbox 02, Uli, Anambra	Public	2000	https://coou.edu.ng/	https://www.facebook.com/uniojukwu/	Education for Development	COOU	Semesters	2,500-2,999	National Universities Commission, Nigeria	60-70%	Urban	Yellow, white and green	Yes	Non-Profit	1	Yes	Men and Women (coed)	Yes	Yes	Yes	6	10,000-14,999	Undergraduate, Postgraduate	South East	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2000, Chukwuemeka Odumegwu Ojukwu University is a non-profit public higher education institution located in the urban setting of the large town of Uli (population range of 10,000-49,999 inhabitants), Anambra. This institution has also branch campuses in the following location(s): Igbariam, Awka. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Chukwuemeka Odumegwu Ojukwu University (COOU) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Chukwuemeka Odumegwu Ojukwu University (COOU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 20 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Chukwuemeka_Odumegwu_Ojukwu_University		
67	Bells University of Technology	Ogun	Kilometer 8, Idiroko Road - Benja Village, Ota, Ogun	Private	2005	http://www.bellsuniversity.edu.ng/	https://www.linkedin.com/company/bells-university-of-technology-ota-ogun-state/	Only the best is good for Bells	BellsTech	Semesters		National Universities Commission, Nigeria		Suburban			Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	3	1,000-1,999	Undergraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2005, Bells University of Technology is a non-profit private higher education institution located in the suburban setting of the small city of Ota (population range of 50,000-249,999 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Bells University of Technology (BellsTech) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution. Bells University of Technology (BellsTech) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Bells_University_of_Technology		
100	Yusuf Maitama Sule University Kano	Kano	Kofar Ruwa Road, Kano	Public	2012	https://www.nwu.edu.ng/	https://twitter.com/nwu_mis					National Universities Commission, Nigeria		Urban			Non-Profit	5		Men and Women (coed)		Yes					North West 				Founded in 2012, Yusuf Maitama Sule University Kano is a non-profit public higher education institution located in the urban setting of the metropolis of Kano (population range of 1,000,000-5,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Yusuf Maitama Sule University Kano is a coeducational higher education institution. Yusuf Maitama Sule University Kano offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Maitama_Sule_University_Kano		
68	Ajayi Crowther University	Oyo	Ogbomosho Expressway; PMB 1066, Oyo Town 	Private	2005	https://www.acu.edu.ng/	https://www.linkedin.com/school/acu-ng/	Scientia Probitas Knowledge with Probity	ACU	Semesters	200-299	National Universities Commission, Nigeria	90-100%	Suburban	Gold, royal blue and red		Non-Profit	8	Yes	Men and Women (coed)		Yes	Yes	5	2,000-2,999	Undergraduate, Postgraduate	South West 	Yes, based on entrance examinations	Yes	Yes	Established in 2005, Ajayi Crowther University is a non-profit private higher education institution located in the suburban setting of the small city of Oyo Town (population range of 50,000-249,999 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ajayi Crowther University (ACU) is a small (uniRank enrollment range: 2,000-2,999 students) coeducational higher education institution formally affiliated with the Christian-Anglican religion. Ajayi Crowther University (ACU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 90-100% making this Nigerian higher education organization a least selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Ajayi_Crowther_University		Christian-Anglican
69	Nasarawa State University	Nasarawa	Private Mailbox 1022,Keffi, Nasarawa	Public	2002	https://nsuk.edu.ng/	https://twitter.com/nsuk_update		NSU			National Universities Commission, Nigeria					Non-Profit	7		Men and Women (coed)		Yes	Yes	1		Undergraduate	North Central 				Founded in 2002, Nasarawa State University is a non-profit public higher education institution located in the small city of Keffi (population range of 50,000-249,999 inhabitants), Nasarawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Nasarawa State University (NSU) is a coeducational higher education institution. Nasarawa State University (NSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Nasarawa_State_University		
70	Federal University, Dutsin-Ma	Katsina	Dutsinma Road, Dutsin-Ma, Katsina	Public	2011	https://www.fudutsinma.edu.ng/			FUDMA			National Universities Commission, Nigeria		Urban			Non-Profit	10		Men and Women (coed)		Yes	Yes				North West 				Founded in 2011, Federal University, Dutsin-Ma is a non-profit public higher education institution located in the urban setting of the small city of Dutsin-Ma (population range of 50,000-249,999 inhabitants), Katsina. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Dutsin-Ma (FUDMA) is a coeducational higher education institution. Federal University, Dutsin-Ma (FUDMA) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Federal_University,_Dutsin-Ma		
71	The Technical University	Oyo	Km 15, Ibadan-Lagos Expressway, Ibadan	Public	2012	http://tech-u.edu.ng/	https://twitter.com/techu_Ibadan		Tech-U			National Universities Commission, Nigeria					Non-Profit	4		Men and Women (coed)		Yes	Yes	3		Undergraduate	South West 				Founded in 2012, The Technical University is a non-profit public higher education institution located in the metropolis of Ibadan (population range of 1,000,000-5,000,000 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, The Technical University (Tech-U) is a coeducational higher education institution. The Technical University (Tech-U) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
72	Bingham University	Nasarawa	Abuja-Keffi Expressway, Auta Balifi, Nasarawa	Private	2005	http://binghamuni.edu.ng/	https://twitter.com/BinghamUniKaru	Mission for Service	BHU	Semesters	100-199	National Universities Commission, Nigeria	50-60%	Rural	Yellow		For-Profit	11	Yes	Men and Women (coed)	Yes	Yes	Yes	4	500-999	Undergraduate	North Central 	Yes, based on entrance examinations and students' past academic record and grades	Yes		Established in 2005, Bingham University is a for-profit private higher education institution located in the rural setting of the small town of Auta Balifi (population range of under 2,500 inhabitants), Nasarawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Bingham University (BHU) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution formally affiliated with the Christian-Evangelical religion. Bingham University (BHU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 50-60% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Bingham_University		Christian-Evangelical
73	Niger Delta University	Bayelsa	Wilberforce Island, Bayelsa	Public	2000	http://ndu.edu.ng/	https://twitter.com/nduvarsity	Creativity, Excellence and Service	NDU			National Universities Commission, Nigeria					Non-Profit	12		Men and Women (coed)		Yes	Yes				South South 				Founded in 2000, Niger Delta University is a non-profit public higher education institution located in Wilberforce Island, Bayelsa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Niger Delta University (NDU) is a coeducational higher education institution. Niger Delta University (NDU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Niger_Delta_University		
124	Federal University, Gashua	Yobe	Sabon Gari, Nguru-Gashua-Damasak Road; PMB 1005 Gashua, Yobe	Public	2013	http://fugashua.edu.ng/			FUG			National Universities Commission, Nigeria					Non-Profit	-		Men and Women (coed)		Yes					North East 				Established in 2013, Federal University, Gashua is a non-profit public higher education institution located in the small city of Gashua (population range of 50,000-249,999 inhabitants), Yobe. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Gashua (FUG) is a coeducational higher education institution. Federal University, Gashua (FUG) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Federal_University,_Gashua		
74	University of Medical Sciences	Ondo	Laje Road; PMB 536, Ondo City	Public	2015	https://www.unimed.edu.ng/	https://twitter.com/Official_UNIMED		UNIMED			National Universities Commission, Nigeria					Non-Profit	7		Men and Women (coed)		Yes	Yes	2		Undergraduate, Postgraduate	South West 				Established in 2015, University of Medical Sciences is a non-profit public higher education institution located in the medium city of Ondo City (population range of 250,000-499,999 inhabitants), Ondo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Medical Sciences (UNIMED) is a coeducational higher education institution. University of Medical Sciences (UNIMED) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/University_of_Medical_Sciences,_Ondo		
75	Coal City University	Enugu	Km 3 Enugu Abakaliki Express Way Emene, Enugu	Private	2016	https://ccu.edu.ng/	https://twitter.com/CCUEnugu		CCU			National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes	3	500-999	Undergraduate	South East				Established in 2016, Coal City University is a private higher education institution located in the large city of Enugu (population range of 500,000-1,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Coal City University (CCU) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution. Coal City University (CCU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Coal_City_University		
76	Crawford University	Ogun	Private Mailbox 2001, Faith City, Ogun	Private	2005	https://crawforduniversity.edu.ng/	https://www.linkedin.com/company/crawford-university/	Knowledge with Godliness	CRU	Semesters	200-299	National Universities Commission, Nigeria	70-80%	Suburban	Blue and white		Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	3	1,000-1,999	Undergraduate, Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2005, Crawford University is a non-profit private higher education institution located in the suburban setting of the small city of Faith City (population range of 50,000-249,999 inhabitants), Ogun. This institution has also branch campuses in the following location(s): Lusada, Igbesa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Crawford University (CRU) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Crawford University (CRU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 70-80% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Crawford_University	Association of African Universities (AAU)	Christian-Pentecostal
77	University of Agriculture, Makurdi	Benue	Private Mailbox 2373, Makurdi, Benue	Public	1988	https://uam.edu.ng/	https://www.linkedin.com/school/university-of-agriculture-makurdi/	Innovation and Service	UAM			National Universities Commission, Nigeria					Non-Profit	10		Men and Women (coed)		Yes	Yes	2		Undergraduate	North Central				Established in 1988, University of Agriculture, Makurdi is a non-profit public higher education institution located in the small city of Makurdi (population range of 50,000-249,999 inhabitants), Benue. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Agriculture, Makurdi (UAM) is a coeducational higher education institution. University of Agriculture, Makurdi (UAM) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/University_of_Agriculture,_Makurdi		
78	Federal University, Lokoja	Kogi	Lokoja, Kogi	Public	2011	https://www.fulokoja.edu.ng/	https://twitter.com/fulokoja	The sky is the limit				National Universities Commission, Nigeria		Urban			Non-Profit	4		Men and Women (coed)		Yes	Yes				North Central				Established in 2011, Federal University, Lokoja is a non-profit public higher education institution located in the urban setting of the small city of Lokoja (population range of 50,000-249,999 inhabitants), Kogi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Lokoja is a coeducational higher education institution. Federal University, Lokoja offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Federal_University,_Lokoja		
79	Federal University, Dutse	Jigawa	Ibrahim Aliyu Way Bye-Pass, Dutse, Jigawa	Public	2011	https://fud.edu.ng/	https://twitter.com/fedutse		FUD			National Universities Commission, Nigeria		Urban			Non-Profit	7		Men and Women (coed)		Yes	Yes				North West 				Established in 2011, Federal University, Dutse is a non-profit public higher education institution located in the urban setting of the large town of Dutse (population range of 10,000-49,999 inhabitants), Jigawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Dutse (FUD) is a coeducational higher education institution. Federal University, Dutse (FUD) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Federal_University_Dutse		
80	Adeleke University	Osun	Loogun-Ogberin Road, Ede, Osun	Private	2011	http://adelekeuniversity.edu.ng/	https://twitter.com/adeleke_uni					National Universities Commission, Nigeria						6		Men and Women (coed)		Yes	Yes	1		Undergraduate	South West 				Founded in 2011, Adeleke University is a private higher education institution located in the small city of Ede (population range of 50,000-249,999 inhabitants), Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Adeleke University is a coeducational higher education institution. Adeleke University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Adeleke_University		
82	Olabisi Onabanjo University	Ogun	Private Mailbox 2002 Ago Iwoye, Ogun	Public	1982	https://oouagoiwoye.edu.ng/	https://twitter.com/OouAgoiwoye	Excellentia Humana et Patriae opus The Flowering of Human Abilities and Service to the Fatherland	OOU	Semesters	300-399	National Universities Commission, Nigeria	60-70%	Suburban	Navy Blue and gold		Non-Profit	10	Yes	Men and Women (coed)	Yes	Yes	Yes	6	10,000-14,999	Undergraduate, Postgraduate	South West	Yes, based on entrance examinations	Yes	Yes	Established in 1982, Olabisi Onabanjo University is a non-profit public higher education institution located in the suburban setting of the metropolis of Ago Iwoye (population range of 1,000,000-5,000,000 inhabitants), Ogun. This institution has also branch campuses in the following location(s): Ikenne, Sagamu, Ibogun, Ayetoro , Shagamu, Ijebu Igbo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Olabisi Onabanjo University (OOU) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Olabisi Onabanjo University (OOU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 38 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution.	https://en.wikipedia.org/wiki/Olabisi_Onabanjo_University	Association of Commonwealth Universities (ACU)	
83	Modibbo Adama University of Technology	Adamawa	Private Mailbox 2076, Yola, Adamawa	Public	1988	https://mautech.edu.ng//	https://twitter.com/InfoMautech		MAUTECH			National Universities Commission, Nigeria					Non-Profit	8		Men and Women (coed)		Yes	Yes	1		Undergraduate	North East				Founded in 1988, Modibbo Adama University of Technology is a non-profit public higher education institution located in the small city of Yola (population range of 50,000-249,999 inhabitants), Adamawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Modibbo Adama University of Technology (MAUTECH) is a coeducational higher education institution. Modibbo Adama University of Technology (MAUTECH) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Federal_University_of_Technology_Yola	Association of African Universities (AAU)	
84	Achievers University, Owo	Ondo	Kilometer 1, Idasen-Ute Road Owo, Ondo	Private	2008	http://www.achievers.edu.ng/	https://twitter.com/achieversuniowo	Knowledge, Integrity and Leadership	AUO	Semesters	50-99	National Universities Commission, Nigeria	40-50%	Urban	Blue, green yellow, red and purple		Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	3	500-999	Undergraduate	South West	Yes, based on students' past academic record and grades	Yes		Established in 2008, Achievers University, Owo is a non-profit private higher education institution located in the urban setting of the large city of Owo (population range of 500,000-1,000,000 inhabitants), Ondo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Achievers University, Owo (AUO) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution. Achievers University, Owo (AUO) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees) in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 12 years old higher-education institution has a selective admission policy based on students' past academic record and grades. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Achievers_University		
85	Ignatius Ajuru University of Education	Rivers	Private Mailbox 5047, Rumuolumeni, Port Harcourt	Public	2010	https://iauoe.edu.ng/	https://twitter.com/IAUEPHC		IAUE			National Universities Commission, Nigeria					Non-Profit	6		Men and Women (coed)		Yes	Yes	3		Undergraduate, Postgraduate	South South				Founded in 2010, Ignatius Ajuru University of Education is a non-profit public higher education institution located in the metropolis of Port Harcourt (population range of 1,000,000-5,000,000 inhabitants), Rivers. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ignatius Ajuru University of Education (IAUE) is a coeducational higher education institution. Ignatius Ajuru University of Education (IAUE) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Ignatius_Ajuru_University_of_Education		
86	Ondo State University of Science and Technology	Ondo	Okitipupa, Ondo	Public	2008	http://www.osustech.edu.ng/	https://www.facebook.com/OsustechAdmin/					National Universities Commission, Nigeria					Non-Profit	3		Men and Women (coed)		Yes	Yes	1		Undergraduate	South West 				Founded in 2008, Ondo State University of Science and Technology is a non-profit public higher education institution located in the small city of Okitipupa (population range of 50,000-249,999 inhabitants), Ondo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ondo State University of Science and Technology is a coeducational higher education institution. Ondo State University of Science and Technology offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Ondo_State_University_of_Science_and_Technology		
101	Bauchi State University	Bauchi	Gadau, Bauchi	Public	2011	https://basug.edu.ng/		Ilimi Tushen Cigaba knowledge is the foundation of progress				National Universities Commission, Nigeria					Non-Profit	5		Men and Women (coed)		Yes	Yes		2,000-2,999		North East				Established in 2011, Bauchi State University is a non-profit public higher education institution located in the small city of Gadau (population range of 50,000-249,999 inhabitants), Bauchi. This institution has also branch campuses in the following location(s): Misau, Bauchi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Bauchi State University is a small (uniRank enrollment range: 2,000-2,999 students) coeducational higher education institution. Bauchi State University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Bauchi_State_University		
87	Cross River University of Technology	Cross River	Ekpo Abasi, Calabar, Cross River	Public	2002	https://crutech.edu.ng/	https://twitter.com/crutechOfficial	Technology for human advancement	CRUTECH	Semesters		National Universities Commission, Nigeria		Urban	Blue and white		Non-Profit	8		Men and Women (coed)		Yes	Yes	2	10,000-14,999	Undergraduate	South South	Yes, based on entrance examinations and students' past academic record and grades	Yes		Established in 2002, Cross River University of Technology is a non-profit public higher education institution located in the urban setting of the medium city of Calabar (population range of 250,000-499,999 inhabitants), Cross River. This institution has also branch campuses in the following location(s): Obubra, Okuku, Ogoja. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Cross River University of Technology (CRUTECH) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Cross River University of Technology (CRUTECH) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 17 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. 	https://en.wikipedia.org/wiki/Cross_River_University_of_Technology	National University Commission (NUC)	
88	Kogi State University	Kogi	Anyigba-Ankpa Express Way, Anyigba, Kogi	Public	1999	https://www.ksu.edu.ng//	https://twitter.com/ksuAnyigba	Knowledge for Self Reliance	KSU	Semesters	600-699	National Universities Commission, Nigeria	30-40%	Suburban	Light blue and light brown		Non-Profit	-	Yes	Men and Women (coed)	Yes	Yes	Yes	5	25,000-29,999	Undergraduate, Postgraduate	North Central 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 1999, Kogi State University is a non-profit public higher education institution located in the suburban setting of the small city of Anyigba (population range of 50,000-249,999 inhabitants), Kogi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kogi State University (KSU) is a large (uniRank enrollment range: 25,000-29,999 students) coeducational higher education institution. Kogi State University (KSU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 21 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 30-40% making this Nigerian higher education organization a very selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Kogi_State_University	Association of African Universities (AAU), Association of Commonwealth Universities (ACU)	
89	Federal University, Lafia	Nasarawa	Lafia, Nasarawa	Public	2011	https://www.fulafia.edu.ng/	https://twitter.com/FULafiaOfficial					National Universities Commission, Nigeria					Non-Profit	5		Men and Women (coed)		Yes	Yes				North Central 				Founded in 2011, Federal University, Lafia is a non-profit public higher education institution located in the medium city of Lafia (population range of 250,000-499,999 inhabitants), Nasarawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Lafia is a coeducational higher education institution. Federal University, Lafia offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
90	Ibrahim Badamasi Babangida University	Niger	Lapai, Niger	Public	2005	http://ibbu.edu.ng/	https://twitter.com/IBBUL					National Universities Commission, Nigeria					Non-Profit	7		Men and Women (coed)		Yes	Yes				North Central				Founded in 2005, Ibrahim Badamasi Babangida University is a non-profit public higher education institution located in the small city of Lapai (population range of 50,000-249,999 inhabitants), Niger. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ibrahim Badamasi Babangida University is a coeducational higher education institution. Ibrahim Badamasi Babangida University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Ibrahim_Badamasi_Babangida_University		
91	Moshood Abiola University of Science and Technology, Abeokuta	Ogun	Abeokuta, Ogun	Public	2017	http://mapoly.edu.ng/			MAUSTECH			National Universities Commission, Nigeria					Non-Profit	5		Men and Women (coed)		Yes		1		Undergraduate	South West				Established in 2017, Moshood Abiola University of Science and Technology, Abeokuta is a non-profit public higher education institution located in the large city of Abeokuta (population range of 500,000-1,000,000 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Moshood Abiola University of Science and Technology, Abeokuta (MAUSTECH) is a coeducational higher education institution. Moshood Abiola University of Science and Technology, Abeokuta (MAUSTECH) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
92	Oduduwa University	Osun	Private Mailbox 5533 Ile Ife, Osun	Private	2009	http://www.oduduwauniversity.edu.ng/		Learning for human development				National Universities Commission, Nigeria						4		Men and Women (coed)		Yes	Yes				South West				Established in 2009, Oduduwa University is a private higher education institution located in the small city of Ile Ife (population range of 50,000-249,999 inhabitants), Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Oduduwa University is a coeducational higher education institution. Oduduwa University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Oduduwa_University		
93	Kano University of Science and Technology	Kano	Private Mailbox 3469 Wudil, Kano	Public	2000	http://kustwudil.edu.ng/	https://twitter.com/KUSTWudil		KUST			National Universities Commission, Nigeria					Non-Profit	6		Men and Women (coed)		Yes	Yes	2		Undergraduate	North West 				Founded in 2000, Kano University of Science and Technology is a non-profit public higher education institution located in the small city of Wudil (population range of 50,000-249,999 inhabitants), Kano. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kano University of Science and Technology (KUST) is a coeducational higher education institution. Kano University of Science and Technology (KUST) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
94	Madonna University, Okija	Anambra	Owerri/Onitsha Expressway Okija, Anambra	Private	1999	https://www.madonnauniversity.edu.ng/	https://www.facebook.com/maunigeria/	Decency in Education and Morals	MU	Semesters	 2,000-2,499	National Universities Commission, Nigeria	70-80%	Suburban	Blue and white		Non-Profit	8		Men and Women (coed)	Yes	Yes	Yes	6	5,000-5,999	Undergraduate, Postgraduate	South East 	Yes, based on entrance examinations and students' past academic record and grades	Yes		Founded in 1999, Madonna University, Okija is a non-profit private higher education institution located in the suburban setting of the large town of Okija (population range of 10,000-49,999 inhabitants), Anambra. This institution has also branch campuses in the following location(s): Elele, Akpugo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Madonna University, Okija (MU) is a small (uniRank enrollment range: 5,000-5,999 students) coeducational higher education institution formally affiliated with the Christian-Catholic religion. Madonna University, Okija (MU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 21 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 70-80% making this Nigerian higher education organization a somewhat selective institution. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Madonna_University,_Elele	International Federation of Catholic Universities (IFCU)	Christian-Catholic
95	Mountain Top University	Ogun	Km 12, Lagos-Ibadan Expressway Makogi Oba, Ogun	Private	2015	http://www.mtu.edu.ng/	https://www.linkedin.com/school/mountain-top-university/	Empowered to Excel	MTU			National Universities Commission, Nigeria						2		Men and Women (coed)		Yes	Yes	2		Undergraduate	South West 				Established in 2015, Mountain Top University is a private higher education institution located in Makogi Oba, Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Mountain Top University (MTU) is a coeducational higher education institution. Mountain Top University (MTU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
96	Caritas University	Enugu	Amorji Nike, Emene, Enugu	Private	2005	http://www.caritasuni.edu.ng/	https://www.linkedin.com/school/caritas-university/	Love for Education and Morals	CAU	Semesters	500-599	National Universities Commission, Nigeria	60-70%	Suburban	Red and brown		For-Profit	4	Yes	Men and Women (coed)		Yes	Yes	4	6,000-6,999	Undergraduate	South East	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2005, Caritas University is a for-profit private higher education institution located in the suburban setting of the large city of Enugu (population range of 500,000-1,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Caritas University (CAU) is a medium-sized (uniRank enrollment range: 6,000-6,999 students) coeducational higher education institution formally affiliated with the Christian-Catholic religion. Caritas University (CAU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Caritas_University		Christian-Catholic
97	Sokoto State University	Sokoto	Sokoto	Public	2009	https://ssu.edu.ng/	https://twitter.com/ssusokoto	It all begins here!	SSU			National Universities Commission, Nigeria		Urban			Non-Profit	3		Men and Women (coed)		Yes	Yes				North West 				Established in 2009, Sokoto State University is a non-profit public higher education institution located in the urban setting of the medium city of Sokoto (population range of 250,000-499,999 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Sokoto State University (SSU) is a coeducational higher education institution. Sokoto State University (SSU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Sokoto_State_University		
98	Federal University, Kashere	Gombe	Kashere, Gombe	Public	2011	http://fukashere.edu.ng/	https://twitter.com/FUKashere		FUK			National Universities Commission, Nigeria					Non-Profit	5		Men and Women (coed)		Yes	Yes				North East 				Established in 2011, Federal University, Kashere is a non-profit public higher education institution located in the small city of Kashere (population range of 50,000-249,999 inhabitants), Gombe. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Kashere (FUK) is a coeducational higher education institution. Federal University, Kashere (FUK) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
99	Yobe State University	Yobe	Km 7, Gujba Road; PMB 1144 Damaturu, Yobe	Public	2006	https://www.ysu.edu.ng/	https://twitter.com/yobestateuni		YSU			National Universities Commission, Nigeria					Non-Profit	6		Men and Women (coed)		Yes	Yes				North East 				Established in 2006, Yobe State University is a non-profit public higher education institution located in the small city of Damaturu (population range of 50,000-249,999 inhabitants), Yobe. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Yobe State University (YSU) is a coeducational higher education institution. Yobe State University (YSU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Yobe_State_University		
109	Novena University	Delta	Private Mailbox 2, Kwale Ogume, Delta	Private	2005	https://novenauniversity.edu.ng/		Knowledge through diligence				National Universities Commission, Nigeria						4		Men and Women (coed)		Yes	Yes				South South				Founded in 2005, Novena University is a private higher education institution located in Ogume, Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Novena University is a coeducational higher education institution. Novena University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Novena_University		
102	Gombe State University	Gombe	Tudun Wada Quarters, Gombe	Public	2004	http://gsu.edu.ng/		Primus inter pares First among equals	GSU	Semesters	under-50	National Universities Commission, Nigeria	60-70%	Urban	Blue		Non-Profit	7	Yes	Men and Women (coed)	Yes	Yes	Yes	5	 500-999	Undergraduate, Postgraduate	North East 	Yes, based on entrance examinations	Yes	Yes	Established in 2004, Gombe State University is a non-profit public higher education institution located in the urban setting of the small city of Gombe (population range of 50,000-249,999 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Gombe State University (GSU) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution. Gombe State University (GSU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 16 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Gombe_State_University		
103	Paul University	Anambra	1 Nnamdi Azikiwe Avenue; PMB 6074 Awka, Anambra	Private	2009	http://www.pauluniversity.edu.ng/	https://twitter.com/paulunivawka	Ecce Ego Mite Me				National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes				South East 				Founded in 2009, Paul University is a private higher education institution located in the medium city of Awka (population range of 250,000-499,999 inhabitants), Anambra. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Paul University is a coeducational higher education institution formally affiliated with the Christian-Anglican religion. Paul University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Paul_University		Christian-Anglican 
104	Plateau State University	Plateau	Bokkos, Plateau	Public	2005	http://plasu.edu.ng/			PLASU			National Universities Commission, Nigeria					Non-Profit	-		Men and Women (coed)		Yes	Yes				North Central				Established in 2005, Plateau State University is a non-profit public higher education institution located in the small city of Bokkos (population range of 50,000-249,999 inhabitants), Plateau. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Plateau State University (PLASU) is a coeducational higher education institution. Plateau State University (PLASU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Plateau_State_University		
105	Crescent University, Abeokuta	Ogun	Km. 5, Ayetoro Road, Sapon Abeokuta, Ogun	Private	2005	https://crescent.edu.ng/	https://www.linkedin.com/company/crescent-university-abeokuta/	Knowledge and Faith	CUAB	Semesters	200-299	National Universities Commission, Nigeria	50-60%	Rural	Yellow and green		Non-Profit	-		Men and Women (coed)	Yes	Yes	Yes	3	3,000-3,999	Undergraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2005, Crescent University, Abeokuta is a non-profit private higher education institution located in the rural setting of the large city of Abeokuta (population range of 500,000-1,000,000 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Crescent University, Abeokuta (CUAB) is a small (uniRank enrollment range: 3,000-3,999 students) coeducational higher education institution formally affiliated with the Islamic religion. Crescent University, Abeokuta (CUAB) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees) in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 50-60% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Crescent_University	Association of African Universities (AAU)	Islamic
106	Federal University, Birnin Kebbi	Kebbi	Along Kalgo-Bunza Road; PMB 1157 Birnin Kebbi, Kebbi	Public	2013	http://www.fubk.edu.ng/	https://www.facebook.com/OfficialFUBK/		FUBK			National Universities Commission, Nigeria					Non-Profit	4		Men and Women (coed)		Yes	Yes				North West 				Founded in 2013, Federal University, Birnin Kebbi is a non-profit public higher education institution located in the small city of Birnin Kebbi (population range of 50,000-249,999 inhabitants), Kebbi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Birnin Kebbi (FUBK) is a coeducational higher education institution. Federal University, Birnin Kebbi (FUBK) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Federal_University,_Birnin_Kebbi		
107	Federal University, Wukari	Taraba	Wukari, Taraba	Public	2011	http://fuwukari.edu.ng/						National Universities Commission, Nigeria					Non-Profit	3		Men and Women (coed)		Yes	Yes				North East 				Founded in 2011, Federal University, Wukari is a non-profit public higher education institution located in the small city of Wukari (population range of 50,000-249,999 inhabitants), Taraba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Wukari is a coeducational higher education institution. Federal University, Wukari offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
108	Adamawa State University	Adamawa	Private Mailbox 25 Mubi, Adamawa	Public	2002	http://www.adsu.edu.ng/			ADSU			National Universities Commission, Nigeria					Non-Profit	3		Men and Women (coed)		Yes	Yes	1		Undergraduate	North East 				Established in 2002, Adamawa State University is a non-profit public higher education institution located in the small city of Mubi (population range of 50,000-249,999 inhabitants), Adamawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Adamawa State University (ADSU) is a coeducational higher education institution. Adamawa State University (ADSU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Adamawa_State_University		
110	Anchor University, Lagos	Lagos	1-4, Ayobo Road Ayobo-Ipaja, Lagos	Private	2014	https://aul.edu.ng/	https://twitter.com/AnchorUni?ref_src=uniRank	Character, Competence, Courage	AUL	Semesters	100-199	National Universities Commission, Nigeria	Not available	Urban	Royal Blue and purple		Non-Profit	3	Yes	Men and Women (coed)	Yes	Yes	Yes	4	500-999	Undergraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2014, Anchor University, Lagos is a non-profit private higher education institution located in the urban setting of the small city of Ayobo-Ipaja (population range of 50,000-249,999 inhabitants), Lagos. This institution has also branch campuses in the following location(s): Mowe. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Anchor University, Lagos (AUL) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution formally affiliated with the Christian-Evangelical religion. Anchor University, Lagos (AUL) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 5 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Anchor_University	Anchor University Center for Interdisciplinary Statistical Science and Data Analysis (AULISSDA), India Centre for Space Physics	Christian-Evangelical 
111	Augustine University	Lagos	Igbonla Road; PMB 1010 Ilara, Lagos	Private	2015	https://augustineuniversity.edu.ng/	https://www.linkedin.com/in/augustine-university-ilara-epe-3235a5147/	Pro-scientia et Moribus For Learning and Character	AUI	Semesters		National Universities Commission, Nigeria		Suburban	Brown, gold and navy blue		For-Profit	2	Yes	Men and Women (coed)	Yes	Yes	Yes	4	250-499	Undergraduate	South West		Yes		Established in 2015, Augustine University is a for-profit private higher education institution located in the suburban setting of the small city of Ilara (population range of 50,000-249,999 inhabitants), Lagos. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Augustine University (AUI) is a very small (uniRank enrollment range: 250-499 students) coeducational higher education institution formally affiliated with the Christian-Catholic religion. Augustine University (AUI) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Augustine_University_Ilara		Christian-Catholic
112	Admiralty University of Nigeria	Delta	Ogwashi-Uku/ Ibusa Road Ibusa, Delta	Private	2017	https://adun.edu.ng/	https://twitter.com/adununi?ref_src=uniRank	Exellence in Education	ADUN	Semesters		National Universities Commission, Nigeria		Suburban			For-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	4		Undergraduate	South South 				Established in 2017, Admiralty University of Nigeria is a for-profit private higher education institution located in the suburban setting of the large city of Ibusa (population range of 500,000-1,000,000 inhabitants), Delta. This institution has also branch campuses in the following location(s): Asaba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Admiralty University of Nigeria (ADUN) is a coeducational higher education institution. Admiralty University of Nigeria (ADUN) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
113	Fountain University, Osogbo	Osun	Opposite Olomola Hospital, Along Agric Settlement Road, Oke-Osun, Oshogbo	Private	2007	https://fuo.edu.ng/	https://twitter.com/fuoweb	Faith, Knowledge and Service	FUO	Semesters	100-199	National Universities Commission, Nigeria	Not available	Suburban			For-Profit	3	Yes	Men and Women (coed)	Yes	Yes	Yes	3	1,000-1,999	Undergraduate, Postgraduate	South West 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2007, Fountain University, Osogbo is a for-profit private higher education institution located in the suburban setting of the medium city of Oshogbo (population range of 250,000-499,999 inhabitants), Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Fountain University, Osogbo (FUO) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution. Fountain University, Osogbo (FUO) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 13 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Fountain_University		
114	PAMO University of Medical Sciences	Rivers	1, Tap Road, Elelenwo, Off Aba Expressway Port-Harcourt	Private	2017	https://www.pums.edu.ng/	https://twitter.com/pums_edu_ng?ref_src=uniRank					National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes	1		Postgraduate	South South				Founded in 2017, PAMO University of Medical Sciences is a private higher education institution located in the metropolis of Port-Harcourt (population range of 1,000,000-5,000,000 inhabitants), Rivers. Officially accredited and/or recognized by the National Universities Commission, Nigeria, PAMO University of Medical Sciences is a coeducational higher education institution. PAMO University of Medical Sciences offers courses and programs leading to officially recognized higher education degrees such as doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
122	Sule Lamido University	Jigawa	Private Mailbox 048 Kafin Hausa, Jigawa	Public	2013	https://slu.edu.ng//						National Universities Commission, Nigeria					Non-Profit	3		Men and Women (coed)		Yes	Yes	2		Undergraduate	North West 				Established in 2013, Sule Lamido University is a non-profit public higher education institution located in the medium city of Kafin Hausa (population range of 250,000-499,999 inhabitants), Jigawa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Sule Lamido University is a coeducational higher education institution. Sule Lamido University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
115	Obong University	Akwa Ibom	Godswill Akpabio Way Obong Ntak, Akwa Ibom	Private	2007	http://www.obonguniversity.edu.ng/	https://www.linkedin.com/school/obong-university/	Education for Sustainable Development	Obong	Semesters	50-99	National Universities Commission, Nigeria	50-60%	Suburban	Red, gold and green		Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	2	250-499	Undergraduate	South South	Yes, based on entrance examinations	Yes	Yes	Established in 2007, Obong University is a non-profit private higher education institution located in the suburban setting of the medium town of Obong Ntak (population range of 2,500-9,999 inhabitants), Akwa Ibom. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Obong University (Obong) is a very small (uniRank enrollment range: 250-499 students) coeducational higher education institution formally affiliated with the Christian-Restorationist religion. Obong University (Obong) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 13 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 50-60% making this Nigerian higher education organization a averagely selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Obong_University		Christian-Restorationist
116	Kings University	Osun	Km 7, Gbongan-Osogbo Road; PMB 555 Odeomu, Osun	Private	2015	https://www.kingsuniversity.edu.ng/	https://twitter.com/kingsuniodeomu?ref_src=uniRank		KU			National Universities Commission, Nigeria						2		Men and Women (coed)		Yes	Yes	3		Undergraduate	South West				Founded in 2015, Kings University is a private higher education institution located in Odeomu, Osun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kings University (KU) is a coeducational higher education institution formally affiliated with the Christian-Evangelical religion. Kings University (KU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			Christian-Evangelical
117	University of Mkar	Benue	Mkar, Benue	Private	2005	https://www.umm.edu.ng/						National Universities Commission, Nigeria		Urban				3		Men and Women (coed)		Yes	Yes	1		Undergraduate	North Central				Founded in 2005, University of Mkar is a private higher education institution located in the urban setting of the large town of Mkar (population range of 10,000-49,999 inhabitants), Benue. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Mkar is a coeducational higher education institution formally affiliated with the Christian-Reformed religion. University of Mkar offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/University_of_Mkar		Christian-Reformed
118	Kebbi State University of Science and Technology	Sokoto	Along Sokoto Road, PO Box 1144 Aliero, Sokoto	Public	2006	http://www.ksusta.edu.ng/			KSUSTA			National Universities Commission, Nigeria					Non-Profit	3		Men and Women (coed)		Yes	Yes	1		Undergraduate	North West 				Founded in 2006, Kebbi State University of Science and Technology is a non-profit public higher education institution located in the small city of Aliero (population range of 50,000-249,999 inhabitants), Kebbi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kebbi State University of Science and Technology (KSUSTA) is a coeducational higher education institution. Kebbi State University of Science and Technology (KSUSTA) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Kebbi_State_University_of_Science_and_Technology		
119	Kola Daisi University	Oyo	Km 18, Ibadan-Oyo Express Road Ibadan	Private	2016	https://koladaisiuniversity.edu.ng/	https://twitter.com/kduonline?ref_src=uniRank		KDU			National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes	3		Undergraduate	South West 				Established in 2016, Kola Daisi University is a private higher education institution located in the metropolis of Ibadan (population range of 1,000,000-5,000,000 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kola Daisi University (KDU) is a coeducational higher education institution. Kola Daisi University (KDU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
120	Chrisland University	Ogun	Abeokuta Campus, Ajebo Road, after Federal Medical Centre Abeokuta	Private	2015	https://www.chrislanduniversity.edu.ng//	https://twitter.com/Chrislanduni					National Universities Commission, Nigeria						2		Men and Women (coed)		Yes	Yes	2		Undergraduate	South West				Founded in 2015, Chrisland University is a private higher education institution located in the large city of Abeokuta (population range of 500,000-1,000,000 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Chrisland University is a coeducational higher education institution. Chrisland University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
121	Rhema University	Abia	153 Aba-Owerri Road, Abayi Aba, Abia	Private	2009	https://www.rhemauniversity.edu.ng/	https://twitter.com/RhemaUniNigeria?ref_src=uniRank	Equipping Humanity for Excellence	RU	Semesters	50-99	National Universities Commission, Nigeria	80-90%	Urban	Blue and orange		For-Profit	3		Men and Women (coed)	Yes	Yes	Yes	3	 500-999	Undergraduate	South East 	Yes, based on entrance examinations	Yes		Established in 2009, Rhema University is a for-profit private higher education institution located in the urban setting of the large city of Aba (population range of 500,000-1,000,000 inhabitants), Abia. This institution has also branch campuses in the following location(s): Asa. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Rhema University (RU) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution. Rhema University (RU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 11 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 80-90% making this Nigerian higher education organization a least selective institution. International applicants are eligible to apply for enrollment. 	https://en.wikipedia.org/wiki/Rhema_University		
125	Tansian University	Anambra	Enugu - Onitsha Road Umunya, Anambra	Private	2009	http://www.tansianuniversity.edu.ng/	https://www.facebook.com/tansianuniversityumunya/	Scientia postestas et virtus Knowledge is power and virtue	TANU			National Universities Commission, Nigeria			Blue and white		Non-Profit	7		Men and Women (coed)	Yes	Yes	Yes	3		Undergraduate	South East	Yes, based on entrance examinations and students' past academic record and grades	Yes		Established in 2009, Tansian University is a non-profit private higher education institution located in Umunya, Anambra. This institution has also branch campuses in the following location(s): Oba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Tansian University (TANU) is a coeducational higher education institution. Tansian University (TANU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 11 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International applicants are eligible to apply for enrollment.	https://en.wikipedia.org/wiki/Tansian_University		
126	Gregory University, Uturu	Abia	Uturu, Abia	Private	2012	https://gregoryuniversityuturu.edu.ng/	https://twitter.com/Gu_uturu?ref_src=uniRank	Knowledge for Tomorrow	GUU			National Universities Commission, Nigeria						9		Men and Women (coed)		Yes		6		Undergraduate	South East 				Established in 2012, Gregory University, Uturu is a private higher education institution located in the large town of Uturu (population range of 10,000-49,999 inhabitants), Abia. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Gregory University, Uturu (GUU) is a coeducational higher education institution formally affiliated with the Christian-Catholic religion. Gregory University, Uturu (GUU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Gregory_University		 Christian-Catholic
127	Glorious Vision University	Edo	Ehor-Ogwa Road Ogwa, Edo	Private	2011	https://www.sau.edu.ng/	https://twitter.com/SAUOGWA?ref_src=uniRank	To nurture for discipline and excellence	GVU	Semesters	200-299	National Universities Commission, Nigeria	70-80%	Urban	Blue, red and gold		Non-Profit	3	Yes	Men and Women (coed)	Yes	Yes	Yes	3	500-999	Undergraduate, Postgraduate	South South	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2011, Glorious Vision University is a non-profit private higher education institution located in the urban setting of the small town of Ogwa (population range of under 2,500 inhabitants), Edo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Glorious Vision University (GVU) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution formally affiliated with the Christian-Pentecostal religion. Glorious Vision University (GVU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 8 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 70-80% making this Nigerian higher education organization a somewhat selective institution. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Samuel_Adegboyega_University		Christian-Pentecostal
128	Federal University, Gusau	Zamfara	Zaria Road; PMB 1001 Gusau, Zamfara	Public	2013	https://fugusau.edu.ng/			FUGUS			National Universities Commission, Nigeria					Non-Profit	4		Men and Women (coed)		Yes	Yes	3		Undergraduate	North West 				Established in 2013, Federal University, Gusau is a non-profit public higher education institution located in the medium city of Gusau (population range of 250,000-499,999 inhabitants), Zamfara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Federal University, Gusau (FUGUS) is a coeducational higher education institution. Federal University, Gusau (FUGUS) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
129	Mcpherson University	Ogun	Km 96, Lagos Ibadan Expressway Seriki-Sotayo, Ogun	Private	2012	http://www.mcu.edu.ng/	https://twitter.com/Mcphersonuni		MCU			National Universities Commission, Nigeria						3		Men and Women (coed)		Yes					South West				Established in 2012, Mcpherson University is a private higher education institution located in Seriki-Sotayo, Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Mcpherson University (MCU) is a coeducational higher education institution. Mcpherson University (MCU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
130	Summit University Offa	Kwara	Dr. Tunji Olagunju Street (Irra Road); PMB 4412 Offa, Kwara	Private	2015	https://www.summituniversity.edu.ng/	https://twitter.com/summit_offa		SUNO			National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes	4		Undergraduate	North Central 				Founded in 2015, Summit University Offa is a private higher education institution located in the small city of Offa (population range of 50,000-249,999 inhabitants), Kwara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Summit University Offa (SUNO) is a coeducational higher education institution. Summit University Offa (SUNO) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
131	Wesley University of Science and Technology	Ondo	Ondo City, Ondo	Private	2007	https://wesleyuni.edu.ng/	https://www.facebook.com/wesleyuniondo/	Knowledge and Character for Development	WUSTO			National Universities Commission, Nigeria						5		Men and Women (coed)		Yes	Yes				South West				Established in 2007, Wesley University of Science and Technology is a private higher education institution located in the medium city of Ondo City (population range of 250,000-499,999 inhabitants), Ondo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Wesley University of Science and Technology (WUSTO) is a coeducational higher education institution formally affiliated with the Christian-Methodist religion. Wesley University of Science and Technology (WUSTO) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Wesley_University_of_Science_and_Technology		Christian-Methodist
132	Al-Qalam University	Katsina	Private Mailbox 2137 Katsina	Private	2005	http://www.auk.edu.ng/	https://twitter.com/aukict?ref_src=uniRank		AUK			National Universities Commission, Nigeria						2		Men and Women (coed)		Yes	Yes	1		Undergraduate	North West 				Established in 2005, Al-Qalam University, Katsina is a private higher education institution located in the medium city of Katsina (population range of 250,000-499,999 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Al-Qalam University, Katsina (AUK) is a coeducational higher education institution formally affiliated with the Islamic religion. Al-Qalam University, Katsina (AUK) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Katsina_University		Islamic
133	Western Delta University	Delta	Private Mailbox 10 Oghara, Delta	Private	2007	http://www.wdu.edu.ng/	https://www.facebook.com/WesternDeltaUniversityOghara/	Knowledge for Human Advancement	WDU	Semesters	100-199	National Universities Commission, Nigeria		Urban	Blue, yellow and green			3	Yes	Men and Women (coed)	Yes	Yes	Yes	2	2,000-2,999	Undergraduate	South South 	Yes, based on entrance examinations and students' past academic record and grades	Yes		Founded in 2007, Western Delta University is a private higher education institution located in Oghara, Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Western Delta University (WDU) is a small (uniRank enrollment range: 2,000-2,999 students) coeducational higher education institution. Western Delta University (WDU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 13 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades.	https://en.wikipedia.org/wiki/Western_Delta_University		
134	Evangel University	Enugu	Km 48 Enugu-Abakaliki Expressway Enugu	Private	2012	https://evangeluniversity.edu.ng/			EUA			National Universities Commission, Nigeria						4		Men and Women (coed)		Yes	Yes			Undergraduate	South East				Founded in 2012, Evangel University, Akaeze is a private higher education institution located in the large city of Enugu (population range of 500,000-1,000,000 inhabitants). Officially accredited and/or recognized by the National Universities Commission, Nigeria, Evangel University, Akaeze (EUA) is a coeducational higher education institution. Evangel University, Akaeze (EUA) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
135	Southwestern University	Ogun	Km 20, Sagamu-Benin Expressway; PMB 2088 Okun Owa, Ogun	Private	2012	https://southwesternuniversity.edu.ng/	https://twitter.com/southwesternun?ref_src=uniRank	In God We Trust	SUN	Continuous	100-199	National Universities Commission, Nigeria	80-90%	Suburban	Navy blue, yellow and white		For-Profit	2	Yes	Men and Women (coed)	Yes	Yes	Yes	4	1,000-1,999	Undergraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2012, Southwestern University, Nigeria is a for-profit private higher education institution located in the suburban setting of the large town of Okun Owa (population range of 10,000-49,999 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Southwestern University, Nigeria (SUN) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution. Southwestern University, Nigeria (SUN) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 8 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 80-90% making this Nigerian higher education organization a least selective institution. International applicants are eligible to apply for enrollment. 			
136	Atiba University	Oyo	Km 5, Oyo-Iseyin Road PMB 1077 Oyo Town	Private	2017	https://www.atibauniversity.edu.ng/	https://twitter.com/atibauniversity					National Universities Commission, Nigeria						3		Men and Women (coed)		Yes	Yes	4		Undergraduate	South West		Yes		Established in 2017, Atiba University is a private higher education institution located in the small city of Oyo Town (population range of 50,000-249,999 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Atiba University is a coeducational higher education institution. Atiba University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
137	Salem University	Kogi	Lokoja, Kogi	Private	2007	https://www.salemuniversity.edu.ng/			SU			National Universities Commission, Nigeria						5		Men and Women (coed)		Yes	Yes				North Central 				Founded in 2007, Salem University is a private higher education institution located in the small city of Lokoja (population range of 50,000-249,999 inhabitants), Kogi. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Salem University (SU) is a coeducational higher education institution. Salem University (SU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
138	Michael and Cecilia Ibru University	Delta	Ibru Village Agbara-Otor, Delta	Private	2015	https://www.mciu.edu.ng/	https://twitter.com/mciunigeria	 Knowledge for the alleviation of poverty	MCIU			National Universities Commission, Nigeria						4		Men and Women (coed)		Yes	Yes	2		Undergraduate	South South 				Founded in 2015, Michael and Cecilia Ibru University is a private higher education institution located in the small city of Agbara-Otor (population range of 50,000-249,999 inhabitants), Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Michael and Cecilia Ibru University (MCIU) is a coeducational higher education institution. Michael and Cecilia Ibru University (MCIU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
139	Ritman University	Akwa Ibom	104B Umuahia Road Ikot Ekpene, Akwa Ibom	Private	2015	https://www.ritmanuniversity.edu.ng/	https://twitter.com/Ritmanuniverse					National Universities Commission, Nigeria						3		Men and Women (coed)		Yes		3		Undergraduate	South South 				Founded in 2015, Ritman University is a private higher education institution located in the small city of Ikot Ekpene (population range of 50,000-249,999 inhabitants), Akwa Ibom. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Ritman University is a coeducational higher education institution. Ritman University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
140	University of Africa	Bayelsa	Sagbama LGA Toru-Orua, Bayelsa	Public	2016	https://uat.edu.ng/	https://twitter.com/UniAfricaOrua?ref_src=uniRank	Cognitio, Diligentia, Servitium Understanding, Diligence, Service	UAT	Semesters	50-99	National Universities Commission, Nigeria		Rural	Green, red and yellow	Yes	Non-Profit	5	Yes	Men and Women (coed)	Yes	Yes	Yes	6	500-999	Undergraduate	South South 	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Established in 2016, University of Africa is a non-profit public higher education institution located in the rural setting of the small city of Toru-Orua (population range of 50,000-249,999 inhabitants), Bayelsa. This institution has also branch campuses in the following location(s): Bolou Orua. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Africa (UAT) is a very small (uniRank enrollment range: 500-999 students) coeducational higher education institution. University of Africa (UAT) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 4 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. International applicants are eligible to apply for enrollment. 			
141	Wellspring University	Edo	Irhirhi Road, off Airport Road Benin City	Private	2009	http://wellspringuni.edu.ng/	https://twitter.com/wellspringuni		WU			National Universities Commission, Nigeria						2		Men and Women (coed)		Yes	Yes				South South 				Founded in 2009, Wellspring University is a private higher education institution located in the metropolis of Benin City (population range of 1,000,000-5,000,000 inhabitants), Edo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Wellspring University (WU) is a coeducational higher education institution. Wellspring University (WU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Wellspring_University		
142	Edwin Clark University	Delta	Private Mailbox 101, Ughelli Kiagbodo, Delta	Private	2015	https://www.edwinclarkuniversity.edu.ng/	https://twitter.com/ecuniversity?ref_src=uniRank	Knowledge and Development	ECU			National Universities Commission, Nigeria						4		Men and Women (coed)		Yes	Yes	3		Undergraduate	South South 				Established in 2015, Edwin Clark University is a private higher education institution located in the large town of Kiagbodo (population range of 10,000-49,999 inhabitants), Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Edwin Clark University (ECU) is a coeducational higher education institution. Edwin Clark University (ECU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
143	Nigerian Maritime University	Delta	Okerenghigho, Delta	Public	2018	https://www.nmu.edu.ng/	https://twitter.com/NigMaritimeUni		NMU			National Universities Commission, Nigeria					Non-Profit	3		Men and Women (coed)		Yes		2		Undergraduate	South South 				Founded in 2018, Nigerian Maritime University, Okerenkoko is a non-profit public higher education institution located in Okerenghigho, Delta. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Nigerian Maritime University, Okerenkoko (NMU) is a coeducational higher education institution. Nigerian Maritime University, Okerenkoko (NMU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
144	Arthur Jarvis University	Cross River	Brigadier Dan Archibong Drive, Ikot Effanga Akpabuyo, Calabar	Private	2016	http://arthurjarvisuniversity.edu.ng/	https://twitter.com/AJUniversity?ref_src=uniRank					National Universities Commission, Nigeria						5		Men and Women (coed)		Yes					South South 				Established in 2016, Arthur Jarvis University is a private higher education institution located in the medium city of Calabar (population range of 250,000-499,999 inhabitants), Cross River. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Arthur Jarvis University is a coeducational higher education institution. Arthur Jarvis University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
145	Precious Cornerstone University	Oyo		Private	2017	https://pcu.edu.ng/			PCU			National Universities Commission, Nigeria						2		Men and Women (coed)		Yes				Undergraduate	South West				Established in 2017, Precious Cornerstone University is a private higher education institution located in the metropolis of Ibadan (population range of 1,000,000-5,000,000 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Precious Cornerstone University (PCU) is a coeducational higher education institution formally affiliated with the Christian-Nondenominational religion. Precious Cornerstone University (PCU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			Christian-Nondenominational
146	Crown Hill University	Kwara	Ballah Road, Eiyenkorin Ilorin, Kwara	Private	2016	https://crownhilluniversity.edu.ng/	https://twitter.com/crownhilluniv	Knowledge is Power				National Universities Commission, Nigeria			Green, white and brown			-		Men and Women (coed)		Yes				Undergraduate	North Central 		Yes		Founded in 2016, Crown Hill University is a private higher education institution located in the large city of Ilorin (population range of 500,000-1,000,000 inhabitants), Kwara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Crown Hill University is a coeducational higher education institution. Crown Hill University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
147	Christopher University	Ogun	Km 34 Lagos Ibadan Expressway Ibokun Aro Mowe, Ogun	Private	2015	http://www.christopheruniversity.edu.ng/	https://twitter.com/christopherUni_					National Universities Commission, Nigeria						3		Men and Women (coed)		Yes		2		Undergraduate	South West				Established in 2015, Christopher University is a private higher education institution located in the large city of Mowe (population range of 500,000-1,000,000 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Christopher University is a coeducational higher education institution. Christopher University offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.	https://en.wikipedia.org/wiki/Christopher_University		
148	Hallmark University	Ogun	Km 65, Shagamu-Ore Expressway Ijebu-Itele, Ogun	Private	2015	https://hallmarkuniversity.edu.ng/	https://twitter.com/hallmark_u		HU			National Universities Commission, Nigeria						2		Men and Women (coed)		Yes		2		Undergraduate	South West				Founded in 2015, Hallmark University, Ijebu-Itele is a private higher education institution located in the small city of Ijebu-Itele (population range of 50,000-249,999 inhabitants), Ogun. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Hallmark University, Ijebu-Itele (HU) is a coeducational higher education institution. Hallmark University, Ijebu-Itele (HU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Hallmark_University,_Ijebu-Itele		
149	Clifford University	Abia	Ihie, Abia	Private	2016	https://clifforduni.edu.ng/	https://twitter.com/cliffordedu	Excellence, Faith and Service	CLU			National Universities Commission, Nigeria						4		Men and Women (coed)		Yes	Yes	3		Undergraduate	South East 				Founded in 2016, Clifford University is a private higher education institution located in Ihie, Abia. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Clifford University (CLU) is a coeducational higher education institution formally affiliated with the Christian-Adventist religion. Clifford University (CLU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Clifford_University		Christian-Adventist
150	Eastern Palm University	Imo	Ogboko, Imo	Public	2016	https://www.epu.edu.ng/	https://twitter.com/easternpalmuni?ref_src=uniRank		EPU			National Universities Commission, Nigeria						-		Men and Women (coed)		Yes					South East				Founded in 2016, Eastern Palm University is a public higher education institution located in Ogboko, Imo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Eastern Palm University (EPU) is a coeducational higher education institution. Eastern Palm University (EPU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 	https://en.wikipedia.org/wiki/Eastern_Palm_University		
151	Kwararafa University	Taraba	Km 7, Jalingo Road Wukari, Taraba	Private	2005	https://www.kuw.edu.ng/		Education for Total Development	KWU	Semesters	100-199	National Universities Commission, Nigeria	60-70%	Suburban	Green and gold		For-Profit	3		Men and Women (coed)	Yes	Yes	Yes	2	1,000-1,999	Undergraduate	North East	Yes, based on entrance examinations	Yes	Yes	Founded in 2005, Kwararafa University, Wukari is a for-profit private higher education institution located in the suburban setting of the small city of Wukari (population range of 50,000-249,999 inhabitants), Taraba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Kwararafa University, Wukari (KWU) is a very small (uniRank enrollment range: 1,000-1,999 students) coeducational higher education institution. Kwararafa University, Wukari (KWU) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 15 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 60-70% making this Nigerian higher education organization a somewhat selective institution. International students are welcome to apply for enrollment. 	https://en.wikipedia.org/wiki/Kwararafa_University		
152	Dominican University	Oyo	Plot 10A Educational Layout, Samonda; P.M.B. 5361 Ibadan	Private	2016	https://dui.edu.ng/	https://twitter.com/dunigeria		DU			National Universities Commission, Nigeria						2		Men and Women (coed)	Yes	Yes	Yes	3		Undergraduate	South West		Yes		Established in 2016, Dominican University, Ibadan is a private higher education institution located in the metropolis of Ibadan (population range of 1,000,000-5,000,000 inhabitants), Oyo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Dominican University, Ibadan (DU) is a coeducational higher education institution formally affiliated with the Christian-Catholic religion. Dominican University, Ibadan (DU) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			Christian-Catholic
153	Hezekiah University	Imo	Private Mailbox 3002 Umudi, Imo	Private	2015	https://www.hezekiah.edu.ng/	https://www.linkedin.com/company/hezekiah-university/	Academic Excellence with Good Morals	UNIHEZ	Semesters	800-899	National Universities Commission, Nigeria	80-90%	Rural	Blue, white and pink	Yes	Non-Profit	3	Yes	Men and Women (coed)	Yes	Yes	Yes		10,000-14,999	Undergraduate	South East 	Yes, based on entrance examinations	Yes		Established in 2015, Hezekiah University is a non-profit private higher education institution located in the rural setting of the large town of Umudi (population range of 10,000-49,999 inhabitants), Imo. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Hezekiah University (UNIHEZ) is a large (uniRank enrollment range: 10,000-14,999 students) coeducational higher education institution. Hezekiah University (UNIHEZ) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 5 years old higher-education institution has a selective admission policy based on entrance examinations. The admission rate range is 80-90% making this Nigerian higher education organization a least selective institution. International applicants are eligible to apply for enrollment. 			
154	Legacy University	Anambra	Onitsha-Owerri Expr. Way Okija, Anambra	Private	2016	http://www.legacyuniversity.edu.ng/	https://www.facebook.com/AdminLegacyUniversity/					National Universities Commission, Nigeria						4		Men and Women (coed)		Yes		5		Undergraduate	South East 				Founded in 2016, Legacy University, Okija is a private higher education institution located in the large town of Okija (population range of 10,000-49,999 inhabitants), Anambra. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Legacy University, Okija is a coeducational higher education institution. Legacy University, Okija offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
155	Eko University of Medical and Health Sciences	Lagos	Km 28 Ijanikin, Badagry Express Way Ijanikin, Lagos	Private	2017	https://ekounimed.edu.ng/	https://twitter.com/Ekounimed1		EKOUNIVMED			National Universities Commission, Nigeria						-		Men and Women (coed)		Yes	Yes	1		Undergraduate, Postgraduate	South West 				Founded in 2017, Eko University of Medical and Health Sciences is a private higher education institution located in Ijanikin, Lagos. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Eko University of Medical and Health Sciences (EKOUNIVMED) is a coeducational higher education institution. Eko University of Medical and Health Sciences (EKOUNIVMED) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. 			
156	Spiritan University	Abia	PMB 10, Ngodo-Isuochi Umunneochi, Abia	Private	2017	https://www.spiritanuniversity.edu.ng/	https://www.facebook.com/Spiritan-University-148028882666209/	Learning for Industry and Dignity	SUN	Semesters	under-50	National Universities Commission, Nigeria	40-50%	Suburban	Red, blue and white		Non-Profit	4	Yes	Men and Women (coed)	Yes	Yes	Yes	4	under-250	Undergraduate	South East	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 2017, Spiritan University, Nneochi is a non-profit private higher education institution located in the suburban setting of the small city of Umunneochi (population range of 50,000-249,999 inhabitants), Abia. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Spiritan University, Nneochi (SUN) is a very small (uniRank enrollment range: under-250 students) coeducational higher education institution formally affiliated with the Christian-Catholic religion. Spiritan University, Nneochi (SUN) offers courses and programs leading to officially recognized higher education degrees such as bachelor degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 3 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 40-50% making this Nigerian higher education organization a averagely selective institution. International students are welcome to apply for enrollment.		Association of Nigerian Universities ,  Association of Nigerian Private Universities , Association of South-East Universities	Christian-Catholic
157	Borno State University	Borno	Maiduguri, Borno	Public	2016	https://bosu.edu.ng/			BSU			National Universities Commission, Nigeria						4		Men and Women (coed)		Yes					North East 				Established in 2016, Borno State University is a public higher education institution located in the large city of Maiduguri (population range of 500,000-1,000,000 inhabitants), Borno. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Borno State University (BSU) is a coeducational higher education institution. Borno State University (BSU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
158	Gombe State University of Science and Technology	Gombe	Kumo, Gombe	Public	2017				GSUST			National Universities Commission, Nigeria						7		Men and Women (coed)		Yes					North East 				Founded in 2017, Gombe State University of Science and Technology is a public higher education institution located in the medium town of Kumo (population range of 2,500-9,999 inhabitants), Gombe. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Gombe State University of Science and Technology (GSUST) is a coeducational higher education institution. Gombe State University of Science and Technology (GSUST) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
159	Zamfara State University	Zamfara	Talata Mafara, Zamfara	Public	2018				ZSU			National Universities Commission, Nigeria					Non-Profit	-		Men and Women (coed)		Yes				Undergraduate	North West 				Founded in 2018, Zamfara State University is a non-profit public higher education institution located in the small city of Talata Mafara (population range of 50,000-249,999 inhabitants), Zamfara. Officially accredited and/or recognized by the National Universities Commission, Nigeria, Zamfara State University (ZSU) is a coeducational higher education institution. Zamfara State University (ZSU) offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.			
2	University of lagos	Lagos state	Akoka, Yaba, Lagos (population range: over 5,000,000),101017 Lagos, Nigeria	Public	1962	https://unilag.edu.ng/	https://www.linkedin.com/school/university-of-lagos/	In deed and in truth	UNILAG	Semesters	1,500-1,999	National Universities Commission, Nigeria	10-20%	Urban	\tMaroon and gold	Yes	Non-Profit	12	Yes	Men and Women (coed)	Yes	Yes	Yes	7	over - 46 000	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1962, University of Lagos is a non-profit public higher education institution located in the urban setting of the large metropolis of Lagos (population range of over 5,000,000 inhabitants). This institution has also branch campuses in the following location(s): Idi-Araba, Yaba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Lagos (UNILAG) is a very large (uniRank enrollment range: over-45,000 students) coeducational higher education institution. University of Lagos (UNILAG) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 58 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Lagos	Association of Commonwealth Universities (ACU),Association of African Universities (AAU),National University Commission (NUC),Institute of Chartered Accountants of Nigeria (ICAN)	None
206	University of fawas	Lagos state	Akoka, Yaba, Lagos (population range: over 5,000,000),101017 Lagos, Nigeria	Public	1962	https://unilag.edu.ng/	https://www.linkedin.com/school/university-of-lagos/	In deed and in truth	UNIFAWAS	Semesters	1,500-1,999	National Universities Commission, Nigeria	10-20%	Urban	\tMaroon and gold	Yes	Non-Profit	12	Yes	Men and Women (coed)	Yes	Yes	Yes	7	over - 46 000	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1962, University of Lagos is a non-profit public higher education institution located in the urban setting of the large metropolis of Lagos (population range of over 5,000,000 inhabitants). This institution has also branch campuses in the following location(s): Idi-Araba, Yaba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Lagos (UNILAG) is a very large (uniRank enrollment range: over-45,000 students) coeducational higher education institution. University of Lagos (UNILAG) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 58 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Lagos	not reported	not reported
173	Federal University of fawas	fawaskareem4 state	Akoka, Yaba, Lagos (population range: over 5,000,000),101017 Lagos, Nigeria	Public	1962	https://unilag.edu.ng/	https://www.linkedin.com/school/university-of-lagos/	In deed and in truth	UNIFAW	Semesters	1,500-1,999	National Universities Commission, Nigeria	10-20%	Urban	\tMaroon and gold	Yes	Non-Profit	12	Yes	Men and Women (coed)	Yes	Yes	Yes	7	over - 46 000	Undergraduate and Postgraduate	South West	Yes, based on entrance examinations and students' past academic record and grades	Yes	Yes	Founded in 1962, University of Lagos is a non-profit public higher education institution located in the urban setting of the large metropolis of Lagos (population range of over 5,000,000 inhabitants). This institution has also branch campuses in the following location(s): Idi-Araba, Yaba. Officially accredited and/or recognized by the National Universities Commission, Nigeria, University of Lagos (UNILAG) is a very large (uniRank enrollment range: over-45,000 students) coeducational higher education institution. University of Lagos (UNILAG) offers courses and programs leading to officially recognized higher education degrees such as pre-bachelor degrees (i.e. certificates, diplomas, associate or foundation degrees), bachelor degrees, master degrees, doctorate degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details. This 58 years old higher-education institution has a selective admission policy based on entrance examinations and students' past academic record and grades. The admission rate range is 10-20% making this Nigerian higher education organization a most selective institution. International students are welcome to apply for enrollment.	https://en.wikipedia.org/wiki/University_of_Lagos	not reported	not reported
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: trxbthfngzrayf
--

COPY public.users (id, email, password, username, apikey, role, activated, "createdAt", "updatedAt") FROM stdin;
5	gbesereminder@gmail.com	$2b$10$IGztcaNYW7V1C3ZwoWbiMOVINnMhdK14xqL08RAhwSX6z24IxPEqG	phawazzzy	\N	USER	f	2020-10-14 12:03:05.112+00	2020-10-14 12:03:05.112+00
4	phawazzzy@gmail.com	$2b$10$THM5gr7rqrQYNYIpIvwKp.XxmcmBR/wfTgu9kvCRTJpWLfuwhgR7y	phawazzzy	32cee53a54cae3f4b7b2742811b69f771689569eb8faaf03bea0ab5dd1e2ee55	ADMIN	t	2020-10-14 11:50:23.839+00	2020-10-14 12:38:12.399+00
11	dsclasu@gmail.com	$2b$10$//7Rk7VQ0A.irFtEJjNLnuHvvXLlROG/QH8yAYEc.FvURwP14Ec06	phawazzzy	\N	ADMIN	f	2020-10-17 10:19:15.282+00	2020-10-17 10:19:15.282+00
18	dsclsu@gmail.com	$2b$10$XiV8tej22ZdOzedb91N6V.RCvwfnIIl2T19319jdiXjEtNjB6MUUK	phawazzzy	\N	\N	f	2020-10-17 10:57:30.362+00	2020-10-17 10:57:30.362+00
19	clemtest@gmail.com	$2b$10$uRHsmt2/wcl0/gJ.qYkSLece5nfpt30lItXuLYoNsU3zvIJQYlahu	fufu	\N	\N	f	2020-10-17 11:10:31.418+00	2020-10-17 11:10:31.418+00
20	dabsclement@yahoo.com	$2b$10$WT4/JM0SD.X1dhEB.J8muuMXTczsbZv3fMoW9JNbOVfQA9O4qh/Cu	semo	f5247eec876c880ca39d1931e66b2f75d276f76ff57ad5526d4baf6d4a5e7101	\N	t	2020-10-17 14:00:40.275+00	2020-10-17 14:02:00.734+00
21	phawaz@gmail.com	$2b$10$FoLFtNVk0Uw0tiV0AAe1mep/U3gZ.wPzlPPly1sOvCPeaaPMndG8m	phawazzzy	\N	\N	f	2020-10-24 15:09:42.821+00	2020-10-24 15:09:42.821+00
22	i4glasu@gmail.com	$2b$10$Q3Rj6RIQ1rdWv7yjmhUqx.dRNjSDFtBiLsQyvb096F7gBLbiOlXM6	clemclem	\N	\N	f	2020-10-30 17:49:21.779+00	2020-10-30 17:49:21.779+00
23	drummersville1@gmail.com	$2b$10$8JsyW/lUsP4xJwO.bLYsZO3QJrceJMBpckdKqc0pfqEoCCKUadCCK	clem	\N	\N	f	2020-10-31 02:54:57.771+00	2020-10-31 02:54:57.771+00
24	talkto@gmail.com	$2b$10$9ngiamoJN7epxMgGn7kaJebSVLXC8LOQXtQdOOePfBV9CKglWXiEW	clem	\N	\N	f	2020-10-31 03:56:27.461+00	2020-10-31 03:56:27.461+00
37	nigeriaai@gmail.com	$2b$10$m6PXNrojw8wOL4Nuv0nppuCAsySTAG5W4xbJUx/0.pHJX.ytxj2Vi	phawazzzy	\N	ADMIN	f	2020-10-31 14:31:18.579+00	2020-10-31 14:31:18.579+00
38	nigeriaapi@gmail.com	$2b$10$Yl.nhV3JKB2jhzlpXGbWHOd/RpMUbcYa8/oU4zwpHpUBDVaSg7Jbe	phawazzzy	87ab985510541f914571c44a1e3ed27904be01a152a07cf8f5d414d909e60c48	ADMIN	t	2020-10-31 14:50:33.368+00	2020-10-31 14:54:01.628+00
39	oaikhenahpeterson@gmail.com	$2b$10$VE.oHU0Eittl6LnXnOJYfum81vhF/aGva6w9xYquiKPA.B38scxSW	phawazzzy	\N	users	f	2020-10-31 18:26:18.58+00	2020-10-31 18:26:18.58+00
40	clem@gmail.com	$2b$10$APlSL820dkY/BKTD6UAkBuXt.5BHArBxOuwkBo8AdrQmWqA.U6XAi	sufi	\N	\N	f	2020-10-31 18:33:37.604+00	2020-10-31 18:33:37.604+00
\.


--
-- Name: Polytecnic_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public."Polytecnic_data_id_seq"', 117, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- Name: university_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.university_data_id_seq', 212, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: trxbthfngzrayf
--

SELECT pg_catalog.setval('public.users_id_seq', 40, true);


--
-- Name: polytechnic_data Polytecnic_data_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.polytechnic_data
    ADD CONSTRAINT "Polytecnic_data_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: university_data university_data_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.university_data
    ADD CONSTRAINT university_data_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: trxbthfngzrayf
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: trxbthfngzrayf
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO trxbthfngzrayf;


--
-- PostgreSQL database dump complete
--

