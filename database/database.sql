-- Postgres SQL Database server

-- Criação do usuário PostgreSQL
CREATE ROLE pji240 WITH
	LOGIN
	NOSUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'xxxxxx';

-- Criação da Base Dados atrelada ao usuário PJI240
CREATE DATABASE pji240
    WITH 
    OWNER = pji240
    TEMPLATE = template1
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

-- TABELA EMPRESA
CREATE TABLE public.empresa
(
    id serial NOT NULL,
    razao_social character varying(100) NOT NULL,
    cnpj numeric(14) NOT NULL,
    senha character varying(20) NOT NULL,
    resp_nome character varying(100) NOT NULL,
    resp_telefone character varying(15) NOT NULL,
    resp_email character varying(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (cnpj)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.empresa
    OWNER to pji240;

COMMENT ON TABLE public.empresa
    IS 'Cadastro das empresas que vão coletar o material eletrônico de descarte';

COMMENT ON COLUMN public.empresa.senha
    IS 'Campo destinado ao HASH da senha';

-- TABELA MATERIAL
-- Destinada aos cadastros dos eletrônicos que podem ser descartados
CREATE TABLE public.descarte
(
    id serial NOT NULL,
    material_nome character varying(100) NOT NULL,
    material_desc text NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (material_nome)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.descarte
    OWNER to pji240;

COMMENT ON TABLE public.descarte
    IS 'Cadastro dos tipos de eletrônicos que podem ser descartados, este cadastro é importante devido que cada estabelecimento/empresa pode ou não receber um determinado tipo de eletrônico';


--Tabela EMPRESA_DESCARTE Relação N-N 
CREATE TABLE public.empresa_descarte
(
    empresa_id integer,
    descarte_id integer,
    PRIMARY KEY (empresa_id, descarte_id),
    FOREIGN KEY (empresa_id)
        REFERENCES public.empresa (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID,
    FOREIGN KEY (descarte_id)
        REFERENCES public.descarte (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.empresa_descarte
    OWNER to pji240;

COMMENT ON TABLE public.empresa_descarte
    IS 'Relação N-N entre a tabela empresa e a tabela descarte
Diz qual material pode ser descartado por qual empresa.';

COMMENT ON COLUMN public.empresa_descarte.empresa_id
    IS 'No postgreSQL, diferente do MySQL, o campo SERIAL é um INTEGER (INT4), no MySQL ele é um integer sem sinal.';



-- -----------------------------------------------------
-- MICROBLOG
-- -----------------------------------------------------

-- Tabela BLOG_EDITOR 
CREATE TABLE public.blog_editor
(
    id serial NOT NULL,
    nome character varying(100) NOT NULL,
    login character varying(25) NOT NULL,
    senha character varying(20),
    PRIMARY KEY (id),
    UNIQUE (login)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.blog_editor
    OWNER to pji240;

COMMENT ON TABLE public.blog_editor
    IS 'Cadastro das pessoas que podem publicar um artigo no blog = editores';

COMMENT ON COLUMN public.blog_editor.senha
    IS 'Armazenar somente o HASH da senha.';

-- Tabela BLOG_POST
CREATE TABLE public.blog_postt
(
    id serial NOT NULL,
    descarte_id integer NOT NULL,
    editor_id integer NOT NULL,
    data timestamp with time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    texto text NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (descarte_id)
        REFERENCES public.descarte (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
        NOT VALID,
    FOREIGN KEY (editor_id)
        REFERENCES public.blog_editor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS public.blog_postt
    OWNER to pji240;

