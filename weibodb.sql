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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE comments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    posts_id integer NOT NULL,
    created_at timestamp with time zone,
    content text DEFAULT ''::text NOT NULL
);


ALTER TABLE comments OWNER TO dbuser;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO dbuser;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: comments_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE comments_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_posts_id_seq OWNER TO dbuser;

--
-- Name: comments_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE comments_posts_id_seq OWNED BY comments.posts_id;


--
-- Name: comments_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE comments_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_user_id_seq OWNER TO dbuser;

--
-- Name: comments_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE comments_user_id_seq OWNED BY comments.user_id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE likes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    posts_id integer NOT NULL,
    number integer NOT NULL,
    created_at timestamp with time zone,
    content text DEFAULT ''::text NOT NULL
);


ALTER TABLE likes OWNER TO dbuser;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE likes_id_seq OWNER TO dbuser;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE likes_id_seq OWNED BY likes.id;


--
-- Name: likes_number_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE likes_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE likes_number_seq OWNER TO dbuser;

--
-- Name: likes_number_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE likes_number_seq OWNED BY likes.number;


--
-- Name: likes_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE likes_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE likes_posts_id_seq OWNER TO dbuser;

--
-- Name: likes_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE likes_posts_id_seq OWNED BY likes.posts_id;


--
-- Name: likes_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE likes_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE likes_user_id_seq OWNER TO dbuser;

--
-- Name: likes_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE likes_user_id_seq OWNED BY likes.user_id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE posts (
    id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone,
    content text DEFAULT ''::text NOT NULL
);


ALTER TABLE posts OWNER TO dbuser;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE posts_id_seq OWNER TO dbuser;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: posts_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE posts_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE posts_user_id_seq OWNER TO dbuser;

--
-- Name: posts_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE posts_user_id_seq OWNED BY posts.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: dbuser
--

CREATE TABLE users (
    id integer NOT NULL,
    username text,
    password text NOT NULL
);


ALTER TABLE users OWNER TO dbuser;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: dbuser
--

CREATE SEQUENCE users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO dbuser;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbuser
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: comments user_id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY comments ALTER COLUMN user_id SET DEFAULT nextval('comments_user_id_seq'::regclass);


--
-- Name: comments posts_id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY comments ALTER COLUMN posts_id SET DEFAULT nextval('comments_posts_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes ALTER COLUMN id SET DEFAULT nextval('likes_id_seq'::regclass);


--
-- Name: likes user_id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes ALTER COLUMN user_id SET DEFAULT nextval('likes_user_id_seq'::regclass);


--
-- Name: likes posts_id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes ALTER COLUMN posts_id SET DEFAULT nextval('likes_posts_id_seq'::regclass);


--
-- Name: likes number; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes ALTER COLUMN number SET DEFAULT nextval('likes_number_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: posts user_id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY posts ALTER COLUMN user_id SET DEFAULT nextval('posts_user_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY comments (id, user_id, posts_id, created_at, content) FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY likes (id, user_id, posts_id, number, created_at, content) FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY posts (id, user_id, created_at, content) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: dbuser
--

COPY users (id, username, password) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Name: comments_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('comments_posts_id_seq', 1, false);


--
-- Name: comments_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('comments_user_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('likes_id_seq', 1, false);


--
-- Name: likes_number_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('likes_number_seq', 1, false);


--
-- Name: likes_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('likes_posts_id_seq', 1, false);


--
-- Name: likes_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('likes_user_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('posts_id_seq', 1, false);


--
-- Name: posts_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('posts_user_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbuser
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: comments comments_posts_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_posts_id_fkey FOREIGN KEY (posts_id) REFERENCES posts(id);


--
-- Name: comments comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: likes likes_posts_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT likes_posts_id_fkey FOREIGN KEY (posts_id) REFERENCES posts(id);


--
-- Name: likes likes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbuser
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id);


--
-- PostgreSQL database dump complete
--

