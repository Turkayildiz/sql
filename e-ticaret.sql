PGDMP  0                    }            bakal    17.2    17.2 P    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16819    bakal    DATABASE     �   CREATE DATABASE bakal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE bakal;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16820    adres_tipleri    TABLE     �   CREATE TABLE public.adres_tipleri (
    id integer NOT NULL,
    adres_tipi character varying(50),
    create_date timestamp without time zone DEFAULT now()
);
 !   DROP TABLE public.adres_tipleri;
       public         heap r       postgres    false    4            �            1259    16824    adres_tipleri_id_seq    SEQUENCE     �   ALTER TABLE public.adres_tipleri ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.adres_tipleri_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    217            �            1259    16825    adresler    TABLE       CREATE TABLE public.adresler (
    id integer NOT NULL,
    sehir character varying(50),
    ilce character varying(50),
    caddesokak character varying(100),
    "kapıno" character varying(50),
    postakodu character varying(50),
    adres_tip_id integer
);
    DROP TABLE public.adresler;
       public         heap r       postgres    false    4            �            1259    16828    adresler_id_seq    SEQUENCE     �   ALTER TABLE public.adresler ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.adresler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    219    4            �            1259    16829    firmalar    TABLE     �   CREATE TABLE public.firmalar (
    id integer NOT NULL,
    firma_adi character varying(50) NOT NULL,
    create_date timestamp without time zone DEFAULT now()
);
    DROP TABLE public.firmalar;
       public         heap r       postgres    false    4            �            1259    16833    firmalar_id_seq    SEQUENCE     �   ALTER TABLE public.firmalar ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.firmalar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    221            �            1259    16834    kategoriler    TABLE     n   CREATE TABLE public.kategoriler (
    id integer NOT NULL,
    kategori_adi character varying(50) NOT NULL
);
    DROP TABLE public.kategoriler;
       public         heap r       postgres    false    4            �            1259    16837    kategori_id_seq    SEQUENCE     �   ALTER TABLE public.kategoriler ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.kategori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    223    4            �            1259    16838    markalar    TABLE     �   CREATE TABLE public.markalar (
    id integer NOT NULL,
    markaadi character varying(100) NOT NULL,
    create_date timestamp without time zone DEFAULT now(),
    firma_id integer
);
    DROP TABLE public.markalar;
       public         heap r       postgres    false    4            �            1259    16842    markalar_id_seq    SEQUENCE     �   ALTER TABLE public.markalar ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.markalar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    225    4            �            1259    16843 
   musteriler    TABLE     1  CREATE TABLE public.musteriler (
    id integer NOT NULL,
    ad character varying(50) NOT NULL,
    soyadi character varying(50) NOT NULL,
    tcno character varying(11) NOT NULL,
    email character varying(50),
    gsm character varying(20),
    cinsiyet boolean,
    password character varying(50)
);
    DROP TABLE public.musteriler;
       public         heap r       postgres    false    4            �            1259    16846    musteriler_adresler    TABLE     l   CREATE TABLE public.musteriler_adresler (
    musteri_id integer NOT NULL,
    adres_id integer NOT NULL
);
 '   DROP TABLE public.musteriler_adresler;
       public         heap r       postgres    false    4            �            1259    16849    musteriler_id_seq    SEQUENCE     �   ALTER TABLE public.musteriler ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.musteriler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    227    4            �            1259    16850    sepet    TABLE     �   CREATE TABLE public.sepet (
    id integer NOT NULL,
    musteri_id integer NOT NULL,
    create_date timestamp without time zone DEFAULT now(),
    sepet_durum character varying(50)
);
    DROP TABLE public.sepet;
       public         heap r       postgres    false    4            �            1259    16854    sepet_detay    TABLE     �   CREATE TABLE public.sepet_detay (
    id integer NOT NULL,
    sepet_id integer,
    urun_id integer NOT NULL,
    adet integer,
    fiyat money,
    create_date timestamp without time zone DEFAULT now(),
    sepet_urun_durum character varying(50)
);
    DROP TABLE public.sepet_detay;
       public         heap r       postgres    false    4            �            1259    16858    sepet_detay_id_seq    SEQUENCE     �   ALTER TABLE public.sepet_detay ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sepet_detay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    231            �            1259    16859    sepet_id_seq    SEQUENCE     �   ALTER TABLE public.sepet ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sepet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    230            �            1259    16860    urun_fotograflari    TABLE     �   CREATE TABLE public.urun_fotograflari (
    id integer NOT NULL,
    foto_name character varying(100),
    foto_path character varying(1000),
    urun_id integer
);
 %   DROP TABLE public.urun_fotograflari;
       public         heap r       postgres    false    4            �            1259    16865    urun_fotograflari_id_seq    SEQUENCE     �   ALTER TABLE public.urun_fotograflari ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.urun_fotograflari_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    234            �            1259    16866    urun_kategori    TABLE     f   CREATE TABLE public.urun_kategori (
    urun_id integer NOT NULL,
    kategori_id integer NOT NULL
);
 !   DROP TABLE public.urun_kategori;
       public         heap r       postgres    false    4            �            1259    16869    urun_ozellikleri    TABLE     �   CREATE TABLE public.urun_ozellikleri (
    id integer NOT NULL,
    ozellik character varying(50),
    aciklama character varying(500),
    urun_id integer
);
 $   DROP TABLE public.urun_ozellikleri;
       public         heap r       postgres    false    4            �            1259    16874    urun_ozellikleri_id_seq    SEQUENCE     �   ALTER TABLE public.urun_ozellikleri ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.urun_ozellikleri_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    237    4            �            1259    16875    urunler    TABLE     �   CREATE TABLE public.urunler (
    id integer NOT NULL,
    urun_adi character varying(50) NOT NULL,
    aciklama character varying(1000),
    marka_id integer
);
    DROP TABLE public.urunler;
       public         heap r       postgres    false    4            �            1259    16880    urunler_id_seq    SEQUENCE     �   ALTER TABLE public.urunler ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.urunler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    239    4            ~          0    16820    adres_tipleri 
   TABLE DATA           D   COPY public.adres_tipleri (id, adres_tipi, create_date) FROM stdin;
    public               postgres    false    217   �`       �          0    16825    adresler 
   TABLE DATA           c   COPY public.adresler (id, sehir, ilce, caddesokak, "kapıno", postakodu, adres_tip_id) FROM stdin;
    public               postgres    false    219   1a       �          0    16829    firmalar 
   TABLE DATA           >   COPY public.firmalar (id, firma_adi, create_date) FROM stdin;
    public               postgres    false    221   Na       �          0    16834    kategoriler 
   TABLE DATA           7   COPY public.kategoriler (id, kategori_adi) FROM stdin;
    public               postgres    false    223   �a       �          0    16838    markalar 
   TABLE DATA           G   COPY public.markalar (id, markaadi, create_date, firma_id) FROM stdin;
    public               postgres    false    225   �a       �          0    16843 
   musteriler 
   TABLE DATA           Z   COPY public.musteriler (id, ad, soyadi, tcno, email, gsm, cinsiyet, password) FROM stdin;
    public               postgres    false    227   Db       �          0    16846    musteriler_adresler 
   TABLE DATA           C   COPY public.musteriler_adresler (musteri_id, adres_id) FROM stdin;
    public               postgres    false    228   ab       �          0    16850    sepet 
   TABLE DATA           I   COPY public.sepet (id, musteri_id, create_date, sepet_durum) FROM stdin;
    public               postgres    false    230   ~b       �          0    16854    sepet_detay 
   TABLE DATA           h   COPY public.sepet_detay (id, sepet_id, urun_id, adet, fiyat, create_date, sepet_urun_durum) FROM stdin;
    public               postgres    false    231   �b       �          0    16860    urun_fotograflari 
   TABLE DATA           N   COPY public.urun_fotograflari (id, foto_name, foto_path, urun_id) FROM stdin;
    public               postgres    false    234   �b       �          0    16866    urun_kategori 
   TABLE DATA           =   COPY public.urun_kategori (urun_id, kategori_id) FROM stdin;
    public               postgres    false    236   �b       �          0    16869    urun_ozellikleri 
   TABLE DATA           J   COPY public.urun_ozellikleri (id, ozellik, aciklama, urun_id) FROM stdin;
    public               postgres    false    237   �b       �          0    16875    urunler 
   TABLE DATA           C   COPY public.urunler (id, urun_adi, aciklama, marka_id) FROM stdin;
    public               postgres    false    239   "c       �           0    0    adres_tipleri_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.adres_tipleri_id_seq', 4, true);
          public               postgres    false    218            �           0    0    adresler_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.adresler_id_seq', 1, false);
          public               postgres    false    220            �           0    0    firmalar_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.firmalar_id_seq', 2, true);
          public               postgres    false    222            �           0    0    kategori_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kategori_id_seq', 1, false);
          public               postgres    false    224            �           0    0    markalar_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.markalar_id_seq', 4, true);
          public               postgres    false    226            �           0    0    musteriler_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.musteriler_id_seq', 1, false);
          public               postgres    false    229            �           0    0    sepet_detay_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sepet_detay_id_seq', 1, false);
          public               postgres    false    232            �           0    0    sepet_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sepet_id_seq', 1, false);
          public               postgres    false    233            �           0    0    urun_fotograflari_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.urun_fotograflari_id_seq', 1, false);
          public               postgres    false    235            �           0    0    urun_ozellikleri_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.urun_ozellikleri_id_seq', 2, true);
          public               postgres    false    238            �           0    0    urunler_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.urunler_id_seq', 1, true);
          public               postgres    false    240            �           2606    16882    adres_tipleri adres_tipleri_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.adres_tipleri
    ADD CONSTRAINT adres_tipleri_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.adres_tipleri DROP CONSTRAINT adres_tipleri_pk;
       public                 postgres    false    217            �           2606    16884    adresler adresler_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.adresler
    ADD CONSTRAINT adresler_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.adresler DROP CONSTRAINT adresler_pk;
       public                 postgres    false    219            �           2606    16886    firmalar firmalar_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.firmalar
    ADD CONSTRAINT firmalar_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.firmalar DROP CONSTRAINT firmalar_pk;
       public                 postgres    false    221            �           2606    16888    kategoriler kategori_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.kategoriler
    ADD CONSTRAINT kategori_pk PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.kategoriler DROP CONSTRAINT kategori_pk;
       public                 postgres    false    223            �           2606    16890    markalar markalar_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.markalar
    ADD CONSTRAINT markalar_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.markalar DROP CONSTRAINT markalar_pk;
       public                 postgres    false    225            �           2606    16892 *   musteriler_adresler musteriler_adresler_pk 
   CONSTRAINT     z   ALTER TABLE ONLY public.musteriler_adresler
    ADD CONSTRAINT musteriler_adresler_pk PRIMARY KEY (musteri_id, adres_id);
 T   ALTER TABLE ONLY public.musteriler_adresler DROP CONSTRAINT musteriler_adresler_pk;
       public                 postgres    false    228    228            �           2606    16894    musteriler musteriler_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.musteriler
    ADD CONSTRAINT musteriler_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.musteriler DROP CONSTRAINT musteriler_pk;
       public                 postgres    false    227            �           2606    16896    sepet_detay sepet_detay_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.sepet_detay
    ADD CONSTRAINT sepet_detay_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sepet_detay DROP CONSTRAINT sepet_detay_pk;
       public                 postgres    false    231            �           2606    16898    sepet_detay sepet_detay_unique 
   CONSTRAINT     f   ALTER TABLE ONLY public.sepet_detay
    ADD CONSTRAINT sepet_detay_unique UNIQUE (sepet_id, urun_id);
 H   ALTER TABLE ONLY public.sepet_detay DROP CONSTRAINT sepet_detay_unique;
       public                 postgres    false    231    231            �           2606    16900    sepet sepet_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.sepet
    ADD CONSTRAINT sepet_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.sepet DROP CONSTRAINT sepet_pk;
       public                 postgres    false    230            �           2606    16902 &   urun_fotograflari urun_fotograflari_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.urun_fotograflari
    ADD CONSTRAINT urun_fotograflari_pk PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.urun_fotograflari DROP CONSTRAINT urun_fotograflari_pk;
       public                 postgres    false    234            �           2606    16904    urun_kategori urun_kategori_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.urun_kategori
    ADD CONSTRAINT urun_kategori_pk PRIMARY KEY (urun_id, kategori_id);
 H   ALTER TABLE ONLY public.urun_kategori DROP CONSTRAINT urun_kategori_pk;
       public                 postgres    false    236    236            �           2606    16906 $   urun_ozellikleri urun_ozellikleri_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.urun_ozellikleri
    ADD CONSTRAINT urun_ozellikleri_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.urun_ozellikleri DROP CONSTRAINT urun_ozellikleri_pk;
       public                 postgres    false    237            �           2606    16908    urunler urunler_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.urunler
    ADD CONSTRAINT urunler_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.urunler DROP CONSTRAINT urunler_pk;
       public                 postgres    false    239            �           2606    16909 "   adresler adresler_adres_tipleri_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.adresler
    ADD CONSTRAINT adresler_adres_tipleri_fk FOREIGN KEY (adres_tip_id) REFERENCES public.adres_tipleri(id);
 L   ALTER TABLE ONLY public.adresler DROP CONSTRAINT adresler_adres_tipleri_fk;
       public               postgres    false    4806    219    217            �           2606    16914    markalar markalar_firmalar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.markalar
    ADD CONSTRAINT markalar_firmalar_fk FOREIGN KEY (firma_id) REFERENCES public.firmalar(id);
 G   ALTER TABLE ONLY public.markalar DROP CONSTRAINT markalar_firmalar_fk;
       public               postgres    false    225    221    4810            �           2606    16919 3   musteriler_adresler musteriler_adresler_adresler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.musteriler_adresler
    ADD CONSTRAINT musteriler_adresler_adresler_fk FOREIGN KEY (adres_id) REFERENCES public.adresler(id);
 ]   ALTER TABLE ONLY public.musteriler_adresler DROP CONSTRAINT musteriler_adresler_adresler_fk;
       public               postgres    false    4808    228    219            �           2606    16924 5   musteriler_adresler musteriler_adresler_musteriler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.musteriler_adresler
    ADD CONSTRAINT musteriler_adresler_musteriler_fk FOREIGN KEY (musteri_id) REFERENCES public.musteriler(id);
 _   ALTER TABLE ONLY public.musteriler_adresler DROP CONSTRAINT musteriler_adresler_musteriler_fk;
       public               postgres    false    4816    227    228            �           2606    16929     sepet_detay sepet_detay_sepet_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sepet_detay
    ADD CONSTRAINT sepet_detay_sepet_fk FOREIGN KEY (sepet_id) REFERENCES public.sepet(id);
 J   ALTER TABLE ONLY public.sepet_detay DROP CONSTRAINT sepet_detay_sepet_fk;
       public               postgres    false    231    4820    230            �           2606    16934 "   sepet_detay sepet_detay_urunler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sepet_detay
    ADD CONSTRAINT sepet_detay_urunler_fk FOREIGN KEY (urun_id) REFERENCES public.urunler(id);
 L   ALTER TABLE ONLY public.sepet_detay DROP CONSTRAINT sepet_detay_urunler_fk;
       public               postgres    false    231    4832    239            �           2606    16939    sepet sepet_musteriler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sepet
    ADD CONSTRAINT sepet_musteriler_fk FOREIGN KEY (musteri_id) REFERENCES public.musteriler(id);
 C   ALTER TABLE ONLY public.sepet DROP CONSTRAINT sepet_musteriler_fk;
       public               postgres    false    230    227    4816            �           2606    16944 .   urun_fotograflari urun_fotograflari_urunler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun_fotograflari
    ADD CONSTRAINT urun_fotograflari_urunler_fk FOREIGN KEY (urun_id) REFERENCES public.urunler(id);
 X   ALTER TABLE ONLY public.urun_fotograflari DROP CONSTRAINT urun_fotograflari_urunler_fk;
       public               postgres    false    4832    239    234            �           2606    16949 '   urun_kategori urun_kategori_kategori_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun_kategori
    ADD CONSTRAINT urun_kategori_kategori_fk FOREIGN KEY (kategori_id) REFERENCES public.kategoriler(id);
 Q   ALTER TABLE ONLY public.urun_kategori DROP CONSTRAINT urun_kategori_kategori_fk;
       public               postgres    false    223    4812    236            �           2606    16954 &   urun_kategori urun_kategori_urunler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun_kategori
    ADD CONSTRAINT urun_kategori_urunler_fk FOREIGN KEY (urun_id) REFERENCES public.urunler(id);
 P   ALTER TABLE ONLY public.urun_kategori DROP CONSTRAINT urun_kategori_urunler_fk;
       public               postgres    false    4832    236    239            �           2606    16959 ,   urun_ozellikleri urun_ozellikleri_urunler_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.urun_ozellikleri
    ADD CONSTRAINT urun_ozellikleri_urunler_fk FOREIGN KEY (urun_id) REFERENCES public.urunler(id);
 V   ALTER TABLE ONLY public.urun_ozellikleri DROP CONSTRAINT urun_ozellikleri_urunler_fk;
       public               postgres    false    237    4832    239            �           2606    16964    urunler urunler_markalar_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.urunler
    ADD CONSTRAINT urunler_markalar_fk FOREIGN KEY (marka_id) REFERENCES public.markalar(id);
 E   ALTER TABLE ONLY public.urunler DROP CONSTRAINT urunler_markalar_fk;
       public               postgres    false    225    239    4814            ~   ]   x�3�t-�4202�50�50S04�22�20�35623��2�L����ơ���Ԑ˘�;��|܊��͹L8�l8:_�1�(�8�BsK��1z\\\ ".      �      x������ � �      �   N   x�3�K-.I��4202�50�50S04�2��25�30455��2�<ܞ����Y��X��������L�����+F��� K��      �      x������ � �      �   k   x�m�!�@Fa=s�^���?얮�W!P5)b�燠H����u�Ej��j9#0���\��X*��}@�~(�1���$G�@�-1�� �8�=�%̼R      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �       x�3�tL�,����4�5R�N�4����� O)v      �   +   x�3�t,.-V��/IM���Vp14��HL�L�qr��qqq �5     