PGDMP  !    
                |            porao_do_odin    16.4    16.4 -               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    57392    porao_do_odin    DATABASE     �   CREATE DATABASE porao_do_odin WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE porao_do_odin;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    73743    franquia    TABLE        CREATE TABLE public.franquia (
    id integer NOT NULL,
    nome character varying(100),
    criador character varying(100)
);
    DROP TABLE public.franquia;
       public         heap    postgres    false    4            �            1259    73742    franquia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.franquia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.franquia_id_seq;
       public          postgres    false    218    4                       0    0    franquia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.franquia_id_seq OWNED BY public.franquia.id;
          public          postgres    false    217            �            1259    73736    genero    TABLE     Y   CREATE TABLE public.genero (
    id integer NOT NULL,
    nome character varying(100)
);
    DROP TABLE public.genero;
       public         heap    postgres    false    4            �            1259    73735    genero_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genero_id_seq;
       public          postgres    false    4    216                       0    0    genero_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genero_id_seq OWNED BY public.genero.id;
          public          postgres    false    215            �            1259    73809    jogo    TABLE     �   CREATE TABLE public.jogo (
    id integer NOT NULL,
    nome character varying(100),
    distribuidora character varying(100),
    id_genero integer,
    id_franquia integer
);
    DROP TABLE public.jogo;
       public         heap    postgres    false    4            �            1259    73808    jogo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jogo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jogo_id_seq;
       public          postgres    false    4    222                       0    0    jogo_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jogo_id_seq OWNED BY public.jogo.id;
          public          postgres    false    221            �            1259    73767    loja    TABLE     {   CREATE TABLE public.loja (
    id integer NOT NULL,
    nome character varying(100),
    empresa character varying(100)
);
    DROP TABLE public.loja;
       public         heap    postgres    false    4            �            1259    73766    loja_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.loja_id_seq;
       public          postgres    false    4    220                       0    0    loja_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.loja_id_seq OWNED BY public.loja.id;
          public          postgres    false    219            �            1259    73826    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(100),
    idade integer,
    email character varying(100),
    senha character varying(100),
    id_loja integer,
    id_jogo integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false    4            �            1259    73825    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    224    4                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    223            e           2604    73746    franquia id    DEFAULT     j   ALTER TABLE ONLY public.franquia ALTER COLUMN id SET DEFAULT nextval('public.franquia_id_seq'::regclass);
 :   ALTER TABLE public.franquia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            d           2604    73739 	   genero id    DEFAULT     f   ALTER TABLE ONLY public.genero ALTER COLUMN id SET DEFAULT nextval('public.genero_id_seq'::regclass);
 8   ALTER TABLE public.genero ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            g           2604    73812    jogo id    DEFAULT     b   ALTER TABLE ONLY public.jogo ALTER COLUMN id SET DEFAULT nextval('public.jogo_id_seq'::regclass);
 6   ALTER TABLE public.jogo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            f           2604    73770    loja id    DEFAULT     b   ALTER TABLE ONLY public.loja ALTER COLUMN id SET DEFAULT nextval('public.loja_id_seq'::regclass);
 6   ALTER TABLE public.loja ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            h           2604    73829 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            	          0    73743    franquia 
   TABLE DATA           5   COPY public.franquia (id, nome, criador) FROM stdin;
    public          postgres    false    218   �.                 0    73736    genero 
   TABLE DATA           *   COPY public.genero (id, nome) FROM stdin;
    public          postgres    false    216   �/                 0    73809    jogo 
   TABLE DATA           O   COPY public.jogo (id, nome, distribuidora, id_genero, id_franquia) FROM stdin;
    public          postgres    false    222   �/                 0    73767    loja 
   TABLE DATA           1   COPY public.loja (id, nome, empresa) FROM stdin;
    public          postgres    false    220   �0                 0    73826    usuario 
   TABLE DATA           R   COPY public.usuario (id, nome, idade, email, senha, id_loja, id_jogo) FROM stdin;
    public          postgres    false    224   �0                  0    0    franquia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.franquia_id_seq', 5, true);
          public          postgres    false    217                       0    0    genero_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genero_id_seq', 5, true);
          public          postgres    false    215                       0    0    jogo_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jogo_id_seq', 10, true);
          public          postgres    false    221                       0    0    loja_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.loja_id_seq', 4, true);
          public          postgres    false    219                        0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 5, true);
          public          postgres    false    223            l           2606    73748    franquia franquia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.franquia
    ADD CONSTRAINT franquia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.franquia DROP CONSTRAINT franquia_pkey;
       public            postgres    false    218            j           2606    73741    genero genero_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            postgres    false    216            p           2606    73814    jogo jogo_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jogo
    ADD CONSTRAINT jogo_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jogo DROP CONSTRAINT jogo_pkey;
       public            postgres    false    222            n           2606    73772    loja loja_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT loja_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.loja DROP CONSTRAINT loja_pkey;
       public            postgres    false    220            r           2606    73831    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    224            s           2606    73820    jogo jogo_id_franquia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jogo
    ADD CONSTRAINT jogo_id_franquia_fkey FOREIGN KEY (id_franquia) REFERENCES public.franquia(id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.jogo DROP CONSTRAINT jogo_id_franquia_fkey;
       public          postgres    false    218    4716    222            t           2606    73815    jogo jogo_id_genero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jogo
    ADD CONSTRAINT jogo_id_genero_fkey FOREIGN KEY (id_genero) REFERENCES public.genero(id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.jogo DROP CONSTRAINT jogo_id_genero_fkey;
       public          postgres    false    222    216    4714            u           2606    73837    usuario usuario_id_jogo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_jogo_fkey FOREIGN KEY (id_jogo) REFERENCES public.jogo(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_jogo_fkey;
       public          postgres    false    4720    224    222            v           2606    73832    usuario usuario_id_loja_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_id_loja_fkey FOREIGN KEY (id_loja) REFERENCES public.loja(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_id_loja_fkey;
       public          postgres    false    220    4718    224            	      x��A
�@�ur��@P�,�q5�n�|hh�L;��"zz�~���9�I����!Cv�b_��G	yO�z��"B����4,*��B��$�ۼTn踦݋<P�Z���zLZ(�o�ٰ��W-�:1�� +�         B   x�3��)-I�2��/-���N�2���-�IL�/RHIU�LI�2�
p�2��O/M������ ;��         �   x���M
�0���s Ӧ�,[*Z7q%n�&�`������� ��aޛ����Æ�E9Qx7�U9E�4�8pV@�s�>و]׽7
(X	��Fiƈ�5�P2�kV��@�^��Gm�!�k8Q��9)�#��#)A�I�!�s�󢂊��o~�����|�M|[2ƞ)j�         M   x�3�.IM��K�)K�2�t-�LVpO�M-V�I,�K�H-B�2�tu".N�̼��Ĵ�:���ļt�=... �c�         �   x�Mͻ�0����a*�6*#< ���D)��\��x}�v������0^�2���u�n��5v��c��`0	�[����#~����tB=�Q�z���ڡ:{4��g��ɪQuV&�ᩡD�@�e��<�u�����:`     