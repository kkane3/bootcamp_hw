--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-07-23 15:46:10 CDT

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

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16656)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16666)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    dept_emp_id integer NOT NULL,
    emp_no integer NOT NULL,
    dept_no character varying NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16664)
-- Name: dept_emp_dept_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dept_emp_dept_emp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dept_emp_dept_emp_id_seq OWNER TO postgres;

--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 197
-- Name: dept_emp_dept_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dept_emp_dept_emp_id_seq OWNED BY public.dept_emp.dept_emp_id;


--
-- TOC entry 199 (class 1259 OID 16675)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    manage_id integer NOT NULL
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16735)
-- Name: dept_manager_manage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dept_manager_manage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dept_manager_manage_id_seq OWNER TO postgres;

--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 203
-- Name: dept_manager_manage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dept_manager_manage_id_seq OWNED BY public.dept_manager.manage_id;


--
-- TOC entry 200 (class 1259 OID 16682)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    gender character varying NOT NULL,
    hire_date date NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16692)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    salary_id integer NOT NULL
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16744)
-- Name: salaries_salary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salaries_salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salaries_salary_id_seq OWNER TO postgres;

--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 204
-- Name: salaries_salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salaries_salary_id_seq OWNED BY public.salaries.salary_id;


--
-- TOC entry 202 (class 1259 OID 16698)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    emp_no integer NOT NULL,
    title character varying NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL,
    title_id integer NOT NULL
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16750)
-- Name: titles_title_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.titles_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.titles_title_id_seq OWNER TO postgres;

--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 205
-- Name: titles_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.titles_title_id_seq OWNED BY public.titles.title_id;


--
-- TOC entry 3033 (class 2604 OID 16669)
-- Name: dept_emp dept_emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp ALTER COLUMN dept_emp_id SET DEFAULT nextval('public.dept_emp_dept_emp_id_seq'::regclass);


--
-- TOC entry 3034 (class 2604 OID 16737)
-- Name: dept_manager manage_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager ALTER COLUMN manage_id SET DEFAULT nextval('public.dept_manager_manage_id_seq'::regclass);


--
-- TOC entry 3035 (class 2604 OID 16746)
-- Name: salaries salary_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries ALTER COLUMN salary_id SET DEFAULT nextval('public.salaries_salary_id_seq'::regclass);


--
-- TOC entry 3036 (class 2604 OID 16752)
-- Name: titles title_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles ALTER COLUMN title_id SET DEFAULT nextval('public.titles_title_id_seq'::regclass);


--
-- TOC entry 3040 (class 2606 OID 16765)
-- Name: dept_manager dept_manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (manage_id);


--
-- TOC entry 3038 (class 2606 OID 16663)
-- Name: departments pk_departments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT pk_departments PRIMARY KEY (dept_no);


--
-- TOC entry 3042 (class 2606 OID 16689)
-- Name: employees pk_employees; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (emp_no);


--
-- TOC entry 3044 (class 2606 OID 16763)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (salary_id);


--
-- TOC entry 3046 (class 2606 OID 16761)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


--
-- TOC entry 3048 (class 2606 OID 16710)
-- Name: dept_emp fk_dept_emp_dept_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 3047 (class 2606 OID 16705)
-- Name: dept_emp fk_dept_emp_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 3049 (class 2606 OID 16715)
-- Name: dept_manager fk_dept_manager_dept_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 3050 (class 2606 OID 16720)
-- Name: dept_manager fk_dept_manager_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 3051 (class 2606 OID 16725)
-- Name: salaries fk_salaries_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 3052 (class 2606 OID 16730)
-- Name: titles fk_titles_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


-- Completed on 2019-07-23 15:46:10 CDT

--
-- PostgreSQL database dump complete
--

