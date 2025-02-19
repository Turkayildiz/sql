PGDMP                      }            movi2    17.2    17.2 5    c           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            d           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            e           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            f           1262    17052    movi2    DATABASE     �   CREATE DATABASE movi2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE movi2;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            g           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    17134 	   birleşme    TABLE     �   CREATE TABLE public."birleşme" (
    id integer NOT NULL,
    movies_id integer,
    catogoris_id integer,
    seans_id integer,
    saolon_id integer,
    hafta_id integer,
    ilk_tarih_id integer,
    son_tarih_id integer
);
    DROP TABLE public."birleşme";
       public         heap r       postgres    false    4            �            1259    17133    birleşme_id_seq    SEQUENCE     �   ALTER TABLE public."birleşme" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."birleşme_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    232    4            �            1259    17053 
   categories    TABLE     n   CREATE TABLE public.categories (
    id integer NOT NULL,
    category_name character varying(50) NOT NULL
);
    DROP TABLE public.categories;
       public         heap r       postgres    false    4            �            1259    17056    categories_id_seq    SEQUENCE     �   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    217            �            1259    17115    hafta    TABLE     K   CREATE TABLE public.hafta (
    id integer NOT NULL,
    hafta smallint
);
    DROP TABLE public.hafta;
       public         heap r       postgres    false    4            �            1259    17114    hafta_id_seq    SEQUENCE     �   ALTER TABLE public.hafta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hafta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    224            �            1259    17118 	   ilk tarih    TABLE     Q   CREATE TABLE public."ilk tarih" (
    id integer NOT NULL,
    ilk_tarih date
);
    DROP TABLE public."ilk tarih";
       public         heap r       postgres    false    4            �            1259    17121    ilk tarih_id_seq    SEQUENCE     �   ALTER TABLE public."ilk tarih" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ilk tarih_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    225            �            1259    17061    movies    TABLE     �   CREATE TABLE public.movies (
    id integer NOT NULL,
    movie_name character varying(50) NOT NULL,
    description character varying(1000),
    duration smallint
);
    DROP TABLE public.movies;
       public         heap r       postgres    false    4            �            1259    17070    movies_id_seq    SEQUENCE     �   ALTER TABLE public.movies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    219    4            �            1259    17071    salon    TABLE     z   CREATE TABLE public.salon (
    id integer NOT NULL,
    salonad character varying(50),
    "salonbüyüklük" integer
);
    DROP TABLE public.salon;
       public         heap r       postgres    false    4            �            1259    17074    salon_id_seq    SEQUENCE     �   ALTER TABLE public.salon ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.salon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    221    4            �            1259    17130    seans    TABLE     Y   CREATE TABLE public.seans (
    id integer NOT NULL,
    saati time without time zone
);
    DROP TABLE public.seans;
       public         heap r       postgres    false    4            �            1259    17129    seans_id_seq    SEQUENCE     �   ALTER TABLE public.seans ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.seans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    230            �            1259    17126 	   son_tarih    TABLE     O   CREATE TABLE public.son_tarih (
    id integer NOT NULL,
    son_tarih date
);
    DROP TABLE public.son_tarih;
       public         heap r       postgres    false    4            �            1259    17125    son_tarih_id_seq    SEQUENCE     �   ALTER TABLE public.son_tarih ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.son_tarih_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    4    228            `          0    17134 	   birleşme 
   TABLE DATA           }   COPY public."birleşme" (id, movies_id, catogoris_id, seans_id, saolon_id, hafta_id, ilk_tarih_id, son_tarih_id) FROM stdin;
    public               postgres    false    232   �:       Q          0    17053 
   categories 
   TABLE DATA           7   COPY public.categories (id, category_name) FROM stdin;
    public               postgres    false    217   �:       X          0    17115    hafta 
   TABLE DATA           *   COPY public.hafta (id, hafta) FROM stdin;
    public               postgres    false    224   6;       Y          0    17118 	   ilk tarih 
   TABLE DATA           4   COPY public."ilk tarih" (id, ilk_tarih) FROM stdin;
    public               postgres    false    225   S;       S          0    17061    movies 
   TABLE DATA           G   COPY public.movies (id, movie_name, description, duration) FROM stdin;
    public               postgres    false    219   p;       U          0    17071    salon 
   TABLE DATA           @   COPY public.salon (id, salonad, "salonbüyüklük") FROM stdin;
    public               postgres    false    221   �=       ^          0    17130    seans 
   TABLE DATA           *   COPY public.seans (id, saati) FROM stdin;
    public               postgres    false    230   �=       \          0    17126 	   son_tarih 
   TABLE DATA           2   COPY public.son_tarih (id, son_tarih) FROM stdin;
    public               postgres    false    228   �=       h           0    0    birleşme_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."birleşme_id_seq"', 1, false);
          public               postgres    false    231            i           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 8, true);
          public               postgres    false    218            j           0    0    hafta_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.hafta_id_seq', 1, false);
          public               postgres    false    223            k           0    0    ilk tarih_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."ilk tarih_id_seq"', 1, false);
          public               postgres    false    226            l           0    0    movies_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.movies_id_seq', 5, true);
          public               postgres    false    220            m           0    0    salon_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.salon_id_seq', 1, false);
          public               postgres    false    222            n           0    0    seans_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.seans_id_seq', 1, false);
          public               postgres    false    229            o           0    0    son_tarih_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.son_tarih_id_seq', 1, false);
          public               postgres    false    227            �           2606    17181    birleşme birleşme_unique 
   CONSTRAINT     s   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_unique" UNIQUE (saolon_id, seans_id, movies_id);
 H   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_unique";
       public                 postgres    false    232    232    232            �           2606    17080    categories categories_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pk;
       public                 postgres    false    217            �           2606    17153    hafta hafta_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.hafta
    ADD CONSTRAINT hafta_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.hafta DROP CONSTRAINT hafta_pk;
       public                 postgres    false    224            �           2606    17155    ilk tarih ilk_tarih_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public."ilk tarih"
    ADD CONSTRAINT ilk_tarih_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."ilk tarih" DROP CONSTRAINT ilk_tarih_pk;
       public                 postgres    false    225            �           2606    17086    movies movies_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pk;
       public                 postgres    false    219            �           2606    17088    salon salon_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.salon
    ADD CONSTRAINT salon_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.salon DROP CONSTRAINT salon_pk;
       public                 postgres    false    221            �           2606    17159    seans seans_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.seans
    ADD CONSTRAINT seans_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.seans DROP CONSTRAINT seans_pk;
       public                 postgres    false    230            �           2606    17157    son_tarih son_tarih_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.son_tarih
    ADD CONSTRAINT son_tarih_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.son_tarih DROP CONSTRAINT son_tarih_pk;
       public                 postgres    false    228            �           2606    17147 !   birleşme birleşme_categories_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_categories_fk" FOREIGN KEY (catogoris_id) REFERENCES public.categories(id);
 O   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_categories_fk";
       public               postgres    false    4778    232    217            �           2606    17160    birleşme birleşme_hafta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_hafta_fk" FOREIGN KEY (hafta_id) REFERENCES public.hafta(id);
 J   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_hafta_fk";
       public               postgres    false    232    224    4784            �           2606    17165     birleşme birleşme_ilk_tarih_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_ilk_tarih_fk" FOREIGN KEY (ilk_tarih_id) REFERENCES public."ilk tarih"(id);
 N   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_ilk_tarih_fk";
       public               postgres    false    225    232    4786            �           2606    17137    birleşme birleşme_movies_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_movies_fk" FOREIGN KEY (id) REFERENCES public.movies(id);
 K   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_movies_fk";
       public               postgres    false    4780    219    232            �           2606    17142    birleşme birleşme_salon_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_salon_fk" FOREIGN KEY (seans_id) REFERENCES public.salon(id);
 J   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_salon_fk";
       public               postgres    false    4782    221    232            �           2606    17175    birleşme birleşme_seans_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_seans_fk" FOREIGN KEY (seans_id) REFERENCES public.seans(id);
 J   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_seans_fk";
       public               postgres    false    230    232    4790            �           2606    17170     birleşme birleşme_son_tarih_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."birleşme"
    ADD CONSTRAINT "birleşme_son_tarih_fk" FOREIGN KEY (son_tarih_id) REFERENCES public.son_tarih(id);
 N   ALTER TABLE ONLY public."birleşme" DROP CONSTRAINT "birleşme_son_tarih_fk";
       public               postgres    false    232    4788    228            `      x������ � �      Q   V   x�3�tL)K�+)-J�2�t���M,����2�tL3L8��2sS�L9��sSS*��8]�s��9��J�+�,8��3u�2�b���� ��      X      x������ � �      Y      x������ � �      S   7  x�]RKn�0]K���A;(�]���f�f�M�$�$G�t�>*n�vC�3�y�}�>1��̒&/��=�9;���"�¬.I�G:K�I��d(�p�FZ�h�hp�wq�$�X&�R�r��xҿm)O*e��؜�o+!�g�Ѯw��xh�Gc/��L����~���h^�՞�����߉�irh��$�)��crG.a�u�`�_)aC�/����ۄ٤�:fx��\�W.��S�M�c��+&%�^Ӡ�c�m=���dq�:>��G�%�m���c{hN��x|)a����29��b��7���ř�Ō����7TY ����C�%oX�&�:���OE�Ď�C���px�o�@�h�
8�C���ʛac1�c�����BFa�0��I���R���dt���}�x+��P\ ��WѾ�Q3����'}
k��WJ������؜�|�'_����T���h=8q��vP@.��Aj|��|[y�ɻS�JJ :�Z�Ł�A8���Yw�2Mbf�غ�[�]A�D�nP6L� ,����9 �<�_�ة�Vئ|cuxh?�ڶ��D�      U      x������ � �      ^      x������ � �      \      x������ � �     