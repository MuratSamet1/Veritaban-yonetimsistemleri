--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.0

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
-- Name: gorevliekle(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.gorevliekle() RETURNS trigger
    LANGUAGE plpgsql
    AS $$  
 BEGIN
 update teknikekipekip set sayi=sayi+1;
 return new;
 end;
 $$;


ALTER FUNCTION public.gorevliekle() OWNER TO postgres;

--
-- Name: inch2m(real); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.inch2m(sayiinch real) RETURNS real
    LANGUAGE plpgsql
    AS $$ -- Fonksiyon govdesinin (tanımının) başlangıcı
BEGIN
    RETURN 2.54 * sayiINCH / 100;
END;
$$;


ALTER FUNCTION public.inch2m(sayiinch real) OWNER TO postgres;

--
-- Name: oyuncuara(integer, character varying, character varying, money); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.oyuncuara(oyuncuno integer, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) RETURNS text
    LANGUAGE plpgsql
    AS $$
BEGIN
 insert into "Takim"
 ("oyuncuNo",   "oyuncuad","oyuncusoyad")
 VALUES
 (oyuncunono,kaptan ,oyuncuad,oyuncusoyad);
 insert Into "Maliisler"
 ("oyuncumaaslari")
 values
 (oyuncumaaslari);
 RETURN NULL;
 END;
$$;


ALTER FUNCTION public.oyuncuara(oyuncuno integer, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) OWNER TO postgres;

--
-- Name: oyuncuekle(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.oyuncuekle() RETURNS trigger
    LANGUAGE plpgsql
    AS $$ 
  BEGIN
  update Takim set oyuncuno=oyuncuno+1;
  return new;
  end;
  $$;


ALTER FUNCTION public.oyuncuekle() OWNER TO postgres;

--
-- Name: oyuncuekle(integer, character varying, character varying, character varying, money); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.oyuncuekle(oyuncuno integer, kaptan character varying, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) RETURNS text
    LANGUAGE plpgsql
    AS $$
BEGIN
 insert into "Takim"
 ("oyuncuNo", "kaptan" , "oyuncuad","oyuncusoyad")
 VALUES
 (oyuncunono,kaptan ,oyuncuad,oyuncusoyad);
 insert Into "Maliisler"
 ("oyuncumaaslari")
 values
 (oyuncumaaslari);
 RETURN NULL;
 END;
$$;


ALTER FUNCTION public.oyuncuekle(oyuncuno integer, kaptan character varying, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) OWNER TO postgres;

--
-- Name: oyuncuguncelle(integer, character varying, character varying, character varying, money); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.oyuncuguncelle(oyuncuno integer, kaptan character varying, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) RETURNS text
    LANGUAGE plpgsql
    AS $$
BEGIN
 insert into "Takim"
 ("oyuncuNo", "kaptan" , "oyuncuad","oyuncusoyad")
 VALUES
 (oyuncunono,kaptan ,oyuncuad,oyuncusoyad);
 insert Into "Maliisler"
 ("oyuncumaaslari")
 values
 (oyuncumaaslari);
 RETURN NULL;
 END;
$$;


ALTER FUNCTION public.oyuncuguncelle(oyuncuno integer, kaptan character varying, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) OWNER TO postgres;

--
-- Name: oyuncusil(integer, character varying, character varying, character varying, money); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.oyuncusil(oyuncuno integer, kaptan character varying, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) RETURNS text
    LANGUAGE plpgsql
    AS $$
BEGIN
 insert into "Takim"
 ("oyuncuNo", "kaptan" , "oyuncuad","oyuncusoyad")
 VALUES
 (oyuncunono,kaptan ,oyuncuad,oyuncusoyad);
 insert Into "Maliisler"
 ("oyuncumaaslari")
 values
 (oyuncumaaslari);
 RETURN NULL;
 END;
$$;


ALTER FUNCTION public.oyuncusil(oyuncuno integer, kaptan character varying, oyuncuadad character varying, oyuncusoyad character varying, oyuncumaaslari money) OWNER TO postgres;

--
-- Name: satırekle(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public."satırekle"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$ 
 BEGIN
 update Takim set sayi=sayi+1;
 return new;
 end;
 $$;


ALTER FUNCTION public."satırekle"() OWNER TO postgres;

--
-- Name: yoneticiekle(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.yoneticiekle() RETURNS trigger
    LANGUAGE plpgsql
    AS $$ 
   BEGIN
   update yonetimekibi set sayi=sayi+1;
   return new;
   end;
   $$;


ALTER FUNCTION public.yoneticiekle() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Altyapi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Altyapi" (
    kocyardimcisi character varying(40),
    altyapihocasi character varying(40) NOT NULL,
    menajer character varying(40)
);


ALTER TABLE public."Altyapi" OWNER TO postgres;

--
-- Name: Amerika; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Amerika" (
    scoutlar character varying(40),
    takipedilenler character varying(40) NOT NULL
);


ALTER TABLE public."Amerika" OWNER TO postgres;

--
-- Name: Asya; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Asya" (
    scoutlar character varying(40),
    takipedilenler character varying(40) NOT NULL
);


ALTER TABLE public."Asya" OWNER TO postgres;

--
-- Name: Avrupa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Avrupa" (
    scoutlar character varying(40),
    takipedilenler character varying(40) NOT NULL
);


ALTER TABLE public."Avrupa" OWNER TO postgres;

--
-- Name: Avustralya; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Avustralya" (
    scoutlar character varying(40),
    takipedilenler character varying(40) NOT NULL
);


ALTER TABLE public."Avustralya" OWNER TO postgres;

--
-- Name: Forvet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Forvet" (
    oyuncuno integer NOT NULL,
    oyuncumaaslari bigint
);


ALTER TABLE public."Forvet" OWNER TO postgres;

--
-- Name: Gard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Gard" (
    oyuncuno integer NOT NULL,
    oyuncumaaslari bigint
);


ALTER TABLE public."Gard" OWNER TO postgres;

--
-- Name: Maliisler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Maliisler" (
    malisorumluadi character varying(40) NOT NULL,
    oyuncuno integer NOT NULL,
    oyuncumaaslari money NOT NULL
);


ALTER TABLE public."Maliisler" OWNER TO postgres;

--
-- Name: Pivot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pivot" (
    oyuncuno integer NOT NULL,
    oyuncumaaslari bigint
);


ALTER TABLE public."Pivot" OWNER TO postgres;

--
-- Name: Saglikekibi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Saglikekibi" (
    kulupdoktoruadi character varying(40),
    masor character varying(40),
    fizyoterapist character varying(40) NOT NULL
);


ALTER TABLE public."Saglikekibi" OWNER TO postgres;

--
-- Name: Scoutlar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Scoutlar" (
    scoutsefi character varying(40),
    bolge character varying(40) NOT NULL,
    scoutlar character varying(40)
);


ALTER TABLE public."Scoutlar" OWNER TO postgres;

--
-- Name: Takim; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Takim" (
    oyuncuno integer NOT NULL,
    kaptan character varying(40),
    oyuncuad character varying(40),
    oyuncusoyad character varying(40),
    oyuncumaaslari money
);


ALTER TABLE public."Takim" OWNER TO postgres;

--
-- Name: Yonetimekibi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Yonetimekibi" (
    baskanadi character varying(40) NOT NULL,
    malisorumluadi character varying(40) NOT NULL,
    baskanyardimcisiadi character varying(40) NOT NULL,
    kulupsozcusuadi character varying(40) NOT NULL
);


ALTER TABLE public."Yonetimekibi" OWNER TO postgres;

--
-- Name: basketboltakimi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basketboltakimi (
    baskanadi character varying(40) NOT NULL,
    yonetimekibi character varying(40) NOT NULL,
    teknikekip character varying(40) NOT NULL,
    saglikekibi character varying(40) NOT NULL,
    kocadi character varying(40) NOT NULL,
    kulupdoktoruadi character varying(40) NOT NULL,
    kaptan character varying(40) NOT NULL
);


ALTER TABLE public.basketboltakimi OWNER TO postgres;

--
-- Name: teknikekip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teknikekip (
    kocadi character varying(40) NOT NULL,
    kocyardimcisi character varying(40),
    kondisyoner character varying(40),
    malzemesorumlusu character varying(40),
    scoutsefi character varying(40) NOT NULL
);


ALTER TABLE public.teknikekip OWNER TO postgres;

--
-- Data for Name: Altyapi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Amerika; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Asya; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Avrupa; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Avustralya; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Forvet; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Gard; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Maliisler; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Pivot; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Saglikekibi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Scoutlar; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Takim; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Takim" VALUES
	(5, NULL, 'ali', NULL, NULL),
	(1, NULL, 'yhjk', 'ghjkl', NULL),
	(4, 'leo', 'osman', 'morec', '?750,00'),
	(7, 'leo', 'Ahmet', 'aksoy', '?450,00'),
	(2, 'leo', 'Baran', 'mly', '?450,00'),
	(3, 'leo', 'muhammed', 'agld', '?450,00'),
	(8, 'leo', 'mustafa', 'yahowic', '?650,00'),
	(0, 'leo', 'jan', 'vesely', '?100.000,00'),
	(56, 'leo', 'ali', 'muhammed', '?360,00');


--
-- Data for Name: Yonetimekibi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: basketboltakimi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.basketboltakimi VALUES
	('ali koc', 'koc', 'obradovic', 'medica', 'obradovic', 'baran', 'leo');


--
-- Data for Name: teknikekip; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: Altyapi AltyapiPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Altyapi"
    ADD CONSTRAINT "AltyapiPK" PRIMARY KEY (altyapihocasi);


--
-- Name: Amerika AmerikaPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Amerika"
    ADD CONSTRAINT "AmerikaPK" PRIMARY KEY (takipedilenler);


--
-- Name: Asya AsyaPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asya"
    ADD CONSTRAINT "AsyaPK" PRIMARY KEY (takipedilenler);


--
-- Name: Avrupa AvrupaPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avrupa"
    ADD CONSTRAINT "AvrupaPK" PRIMARY KEY (takipedilenler);


--
-- Name: Avustralya AvustralyaPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avustralya"
    ADD CONSTRAINT "AvustralyaPK" PRIMARY KEY (takipedilenler);


--
-- Name: Forvet ForvetPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forvet"
    ADD CONSTRAINT "ForvetPK" PRIMARY KEY (oyuncuno);


--
-- Name: Gard GardPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Gard"
    ADD CONSTRAINT "GardPK" PRIMARY KEY (oyuncuno);


--
-- Name: Maliisler MaliislerPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Maliisler"
    ADD CONSTRAINT "MaliislerPK" PRIMARY KEY (oyuncuno);


--
-- Name: Pivot PivotPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pivot"
    ADD CONSTRAINT "PivotPK" PRIMARY KEY (oyuncuno);


--
-- Name: Scoutlar ScoutlarPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Scoutlar"
    ADD CONSTRAINT "ScoutlarPK" PRIMARY KEY (bolge);


--
-- Name: Takim TakimPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Takim"
    ADD CONSTRAINT "TakimPK" PRIMARY KEY (oyuncuno);


--
-- Name: basketboltakimi basketboltakimiPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketboltakimi
    ADD CONSTRAINT "basketboltakimiPK" PRIMARY KEY (baskanadi);


--
-- Name: Saglikekibi saglikekibiPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Saglikekibi"
    ADD CONSTRAINT "saglikekibiPK" PRIMARY KEY (fizyoterapist);


--
-- Name: teknikekip teknikekipPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teknikekip
    ADD CONSTRAINT "teknikekipPK" PRIMARY KEY (scoutsefi);


--
-- Name: Asya unique_Asya_scoutlar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asya"
    ADD CONSTRAINT "unique_Asya_scoutlar" UNIQUE (scoutlar);


--
-- Name: Maliisler unique_Maliisler_oyuncumaaslari; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Maliisler"
    ADD CONSTRAINT "unique_Maliisler_oyuncumaaslari" UNIQUE (oyuncumaaslari);


--
-- Name: Scoutlar unique_Scoutlar_scoutlar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Scoutlar"
    ADD CONSTRAINT "unique_Scoutlar_scoutlar" UNIQUE (scoutlar);


--
-- Name: basketboltakimi unique_basketboltakimi_kaptan; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketboltakimi
    ADD CONSTRAINT unique_basketboltakimi_kaptan UNIQUE (kaptan);


--
-- Name: basketboltakimi unique_basketboltakimi_kocadi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketboltakimi
    ADD CONSTRAINT unique_basketboltakimi_kocadi UNIQUE (kocadi);


--
-- Name: basketboltakimi unique_basketboltakimi_kulupdoktoruadi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basketboltakimi
    ADD CONSTRAINT unique_basketboltakimi_kulupdoktoruadi UNIQUE (kulupdoktoruadi);


--
-- Name: teknikekip unique_teknikekip_kocyardimcisi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teknikekip
    ADD CONSTRAINT unique_teknikekip_kocyardimcisi UNIQUE (kocyardimcisi);


--
-- Name: Yonetimekibi yonetimekibiPK; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetimekibi"
    ADD CONSTRAINT "yonetimekibiPK" PRIMARY KEY (malisorumluadi);


--
-- Name: index_yonetimekibi; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_yonetimekibi ON public.basketboltakimi USING btree (yonetimekibi);


--
-- Name: teknikekip goreveklendiginde; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER goreveklendiginde BEFORE UPDATE ON public.teknikekip FOR EACH ROW EXECUTE FUNCTION public.gorevliekle();


--
-- Name: Takim nitelikeklendiginde; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER nitelikeklendiginde BEFORE UPDATE ON public."Takim" FOR EACH ROW EXECUTE FUNCTION public."satırekle"();


--
-- Name: Takim oyuncueklendiginde; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER oyuncueklendiginde BEFORE UPDATE ON public."Takim" FOR EACH ROW EXECUTE FUNCTION public.oyuncuekle();


--
-- Name: Maliisler yoneticieklendiginde; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER yoneticieklendiginde BEFORE UPDATE ON public."Maliisler" FOR EACH ROW EXECUTE FUNCTION public.yoneticiekle();


--
-- Name: Altyapi AltyapiFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Altyapi"
    ADD CONSTRAINT "AltyapiFK" FOREIGN KEY (kocyardimcisi) REFERENCES public.teknikekip(kocyardimcisi);


--
-- Name: Amerika AmerikaFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Amerika"
    ADD CONSTRAINT "AmerikaFK" FOREIGN KEY (scoutlar) REFERENCES public."Scoutlar"(scoutlar);


--
-- Name: Asya AsyaFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Asya"
    ADD CONSTRAINT "AsyaFK" FOREIGN KEY (scoutlar) REFERENCES public."Scoutlar"(scoutlar);


--
-- Name: Avrupa AvrupaFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avrupa"
    ADD CONSTRAINT "AvrupaFK" FOREIGN KEY (scoutlar) REFERENCES public."Scoutlar"(scoutlar);


--
-- Name: Avustralya AvustralyaFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avustralya"
    ADD CONSTRAINT "AvustralyaFK" FOREIGN KEY (scoutlar) REFERENCES public."Scoutlar"(scoutlar);


--
-- Name: Forvet ForvetFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forvet"
    ADD CONSTRAINT "ForvetFK" FOREIGN KEY (oyuncuno) REFERENCES public."Takim"(oyuncuno);


--
-- Name: Gard GardFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Gard"
    ADD CONSTRAINT "GardFK" FOREIGN KEY (oyuncuno) REFERENCES public."Takim"(oyuncuno);


--
-- Name: Maliisler MalislerFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Maliisler"
    ADD CONSTRAINT "MalislerFK" FOREIGN KEY (malisorumluadi) REFERENCES public."Yonetimekibi"(malisorumluadi);


--
-- Name: Saglikekibi SaglikekibiFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Saglikekibi"
    ADD CONSTRAINT "SaglikekibiFK" FOREIGN KEY (kulupdoktoruadi) REFERENCES public.basketboltakimi(kulupdoktoruadi);


--
-- Name: Scoutlar ScoutlarFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Scoutlar"
    ADD CONSTRAINT "ScoutlarFK" FOREIGN KEY (scoutsefi) REFERENCES public.teknikekip(scoutsefi);


--
-- Name: Takim Takim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Takim"
    ADD CONSTRAINT "Takim" FOREIGN KEY (kaptan) REFERENCES public.basketboltakimi(kaptan);


--
-- Name: Pivot pivotFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pivot"
    ADD CONSTRAINT "pivotFK" FOREIGN KEY (oyuncuno) REFERENCES public."Takim"(oyuncuno);


--
-- Name: teknikekip teknikekipFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teknikekip
    ADD CONSTRAINT "teknikekipFK" FOREIGN KEY (kocadi) REFERENCES public.basketboltakimi(kocadi);


--
-- Name: Yonetimekibi yonetimekibiFK; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Yonetimekibi"
    ADD CONSTRAINT "yonetimekibiFK" FOREIGN KEY (baskanadi) REFERENCES public.basketboltakimi(baskanadi);


--
-- PostgreSQL database dump complete
--

