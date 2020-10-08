CREATE TABLE public.departments
(
    dept_no character varying(10),
    dept_name character varying(30),
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

CREATE TABLE public.dept_emp
(
    dept_no character varying(10) COLLATE pg_catalog."default",
    emp_no character varying(30) COLLATE pg_catalog."default"
)

CREATE TABLE public.dept_manager
(
    dept_no character varying(10),
    emp_no character varying(30)
)

CREATE TABLE public.employees
(
    emp_no character varying(30),
    emp_title character varying(10),
    birth_date date,
    first_name character varying(30),
    last_name character varying(30),
    sex character varying(1) COLLATE,
    hire_date date,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

CREATE TABLE public.salaries
(
    emp_no character varying(30) COLLATE,
    salary integer,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no)
)

CREATE TABLE public.titles
(
    title_no character varying(30) COLLATE,
    title character varying(30) COLLATE,
    CONSTRAINT titles_pkey PRIMARY KEY (title_no)
)
