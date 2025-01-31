PGDMP      6                |         	   Trabalho1    16.4    16.4 &    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16491 	   Trabalho1    DATABASE     �   CREATE DATABASE "Trabalho1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Trabalho1";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16493    autor    TABLE     g   CREATE TABLE public.autor (
    id_autor integer NOT NULL,
    nome character varying(255) NOT NULL
);
    DROP TABLE public.autor;
       public         heap    postgres    false    4            �            1259    16492    autor_id_autor_seq    SEQUENCE     �   CREATE SEQUENCE public.autor_id_autor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.autor_id_autor_seq;
       public          postgres    false    216    4                       0    0    autor_id_autor_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.autor_id_autor_seq OWNED BY public.autor.id_autor;
          public          postgres    false    215            �            1259    16530 
   emprestimo    TABLE     �   CREATE TABLE public.emprestimo (
    id_emprestimo integer NOT NULL,
    data_emprestimo date NOT NULL,
    data_devolucao date,
    valor_emprestimo numeric(10,2) NOT NULL,
    id_usuario integer NOT NULL,
    id_livro integer NOT NULL
);
    DROP TABLE public.emprestimo;
       public         heap    postgres    false    4            �            1259    16529    emprestimo_id_emprestimo_seq    SEQUENCE     �   CREATE SEQUENCE public.emprestimo_id_emprestimo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.emprestimo_id_emprestimo_seq;
       public          postgres    false    222    4                       0    0    emprestimo_id_emprestimo_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.emprestimo_id_emprestimo_seq OWNED BY public.emprestimo.id_emprestimo;
          public          postgres    false    221            �            1259    16507    livro    TABLE     �   CREATE TABLE public.livro (
    id_livro integer NOT NULL,
    titulo character varying(255) NOT NULL,
    id_autor integer NOT NULL
);
    DROP TABLE public.livro;
       public         heap    postgres    false    4            �            1259    16506    livro_id_livro_seq    SEQUENCE     �   CREATE SEQUENCE public.livro_id_livro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.livro_id_livro_seq;
       public          postgres    false    4    218                       0    0    livro_id_livro_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.livro_id_livro_seq OWNED BY public.livro.id_livro;
          public          postgres    false    217            �            1259    16519    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nome character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    4            �            1259    16518    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    4    220                       0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    219            _           2604    16496    autor id_autor    DEFAULT     p   ALTER TABLE ONLY public.autor ALTER COLUMN id_autor SET DEFAULT nextval('public.autor_id_autor_seq'::regclass);
 =   ALTER TABLE public.autor ALTER COLUMN id_autor DROP DEFAULT;
       public          postgres    false    215    216    216            b           2604    16533    emprestimo id_emprestimo    DEFAULT     �   ALTER TABLE ONLY public.emprestimo ALTER COLUMN id_emprestimo SET DEFAULT nextval('public.emprestimo_id_emprestimo_seq'::regclass);
 G   ALTER TABLE public.emprestimo ALTER COLUMN id_emprestimo DROP DEFAULT;
       public          postgres    false    221    222    222            `           2604    16510    livro id_livro    DEFAULT     p   ALTER TABLE ONLY public.livro ALTER COLUMN id_livro SET DEFAULT nextval('public.livro_id_livro_seq'::regclass);
 =   ALTER TABLE public.livro ALTER COLUMN id_livro DROP DEFAULT;
       public          postgres    false    217    218    218            a           2604    16522    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    220    219    220                       0    16493    autor 
   TABLE DATA           /   COPY public.autor (id_autor, nome) FROM stdin;
    public          postgres    false    216   �)                 0    16530 
   emprestimo 
   TABLE DATA           |   COPY public.emprestimo (id_emprestimo, data_emprestimo, data_devolucao, valor_emprestimo, id_usuario, id_livro) FROM stdin;
    public          postgres    false    222   E*                 0    16507    livro 
   TABLE DATA           ;   COPY public.livro (id_livro, titulo, id_autor) FROM stdin;
    public          postgres    false    218   �*                 0    16519    usuario 
   TABLE DATA           :   COPY public.usuario (id_usuario, nome, email) FROM stdin;
    public          postgres    false    220   !+                  0    0    autor_id_autor_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.autor_id_autor_seq', 5, true);
          public          postgres    false    215                       0    0    emprestimo_id_emprestimo_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.emprestimo_id_emprestimo_seq', 5, true);
          public          postgres    false    221                       0    0    livro_id_livro_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.livro_id_livro_seq', 5, true);
          public          postgres    false    217                       0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 5, true);
          public          postgres    false    219            d           2606    16498    autor autor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id_autor);
 :   ALTER TABLE ONLY public.autor DROP CONSTRAINT autor_pkey;
       public            postgres    false    216            l           2606    16535    emprestimo emprestimo_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_pkey PRIMARY KEY (id_emprestimo);
 D   ALTER TABLE ONLY public.emprestimo DROP CONSTRAINT emprestimo_pkey;
       public            postgres    false    222            f           2606    16512    livro livro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id_livro);
 :   ALTER TABLE ONLY public.livro DROP CONSTRAINT livro_pkey;
       public            postgres    false    218            h           2606    16528    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    220            j           2606    16526    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    220            n           2606    16541 #   emprestimo emprestimo_id_livro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.emprestimo DROP CONSTRAINT emprestimo_id_livro_fkey;
       public          postgres    false    4710    218    222            o           2606    16536 %   emprestimo emprestimo_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 O   ALTER TABLE ONLY public.emprestimo DROP CONSTRAINT emprestimo_id_usuario_fkey;
       public          postgres    false    220    4714    222            m           2606    16513    livro livro_id_autor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_id_autor_fkey FOREIGN KEY (id_autor) REFERENCES public.autor(id_autor) ON UPDATE RESTRICT ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.livro DROP CONSTRAINT livro_id_autor_fkey;
       public          postgres    false    216    4708    218                P   x�3�����S�/���K�2�tO�/JOU��S�M,*���2�tLO,�HTp�(�,.�L�2�.I-�H�S������ 4h�         I   x�M���0߰K"c�R�D'��s4���wn��0ݨ�r�A��lぼ�C=�{Z�@�w�"ZE�=I~(}�         s   x��1
�P �99E67��=���"���C���II"����>x����&�d��+�0MR��	�.hNS�{8Щ���N�xÀ��}m���^Y����9ai<Kժ�G�l@%�         U   x�3�t��LN�L����9�z���\F�N�I�I�I(�Ɯ��E9����Eք�%�,3�3D�Șr���r��������� M�+3     