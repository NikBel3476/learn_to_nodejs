PGDMP         $                y            vm21-db    13.2    13.2      �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    300900    vm21-db    DATABASE     f   CREATE DATABASE "vm21-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "vm21-db";
             	   vm21-user    false            �            1259    596511    constraints    TABLE     �   CREATE TABLE public.constraints (
    id bigint NOT NULL,
    x bigint NOT NULL,
    y bigint NOT NULL,
    z bigint NOT NULL,
    width bigint NOT NULL,
    height bigint NOT NULL,
    "rotateX" bigint,
    "rotateY" bigint,
    "rotateZ" bigint
);
    DROP TABLE public.constraints;
       public         heap 	   vm21-user    false            �            1259    596509    constraints_id_seq    SEQUENCE     {   CREATE SEQUENCE public.constraints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.constraints_id_seq;
       public       	   vm21-user    false    207            �           0    0    constraints_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.constraints_id_seq OWNED BY public.constraints.id;
          public       	   vm21-user    false    206            �            1259    300925    messages    TABLE     �   CREATE TABLE public.messages (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    message text NOT NULL,
    date timestamp without time zone NOT NULL
);
    DROP TABLE public.messages;
       public         heap 	   vm21-user    false            �            1259    300931    messages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public       	   vm21-user    false    200            �           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public       	   vm21-user    false    201            �            1259    563680    points    TABLE     |   CREATE TABLE public.points (
    id bigint NOT NULL,
    x bigint NOT NULL,
    y bigint NOT NULL,
    z bigint NOT NULL
);
    DROP TABLE public.points;
       public         heap 	   vm21-user    false            �            1259    563678    points_id_seq    SEQUENCE     v   CREATE SEQUENCE public.points_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.points_id_seq;
       public       	   vm21-user    false    205            �           0    0    points_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.points_id_seq OWNED BY public.points.id;
          public       	   vm21-user    false    204            �            1259    300933    users    TABLE     �   CREATE TABLE public.users (
    password text NOT NULL,
    name text NOT NULL,
    login text NOT NULL,
    id bigint NOT NULL,
    token text
);
    DROP TABLE public.users;
       public         heap 	   vm21-user    false            �            1259    300939    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       	   vm21-user    false    202            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public       	   vm21-user    false    203            9           2604    596514    constraints id    DEFAULT     p   ALTER TABLE ONLY public.constraints ALTER COLUMN id SET DEFAULT nextval('public.constraints_id_seq'::regclass);
 =   ALTER TABLE public.constraints ALTER COLUMN id DROP DEFAULT;
       public       	   vm21-user    false    206    207    207            6           2604    300941    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public       	   vm21-user    false    201    200            8           2604    563683 	   points id    DEFAULT     f   ALTER TABLE ONLY public.points ALTER COLUMN id SET DEFAULT nextval('public.points_id_seq'::regclass);
 8   ALTER TABLE public.points ALTER COLUMN id DROP DEFAULT;
       public       	   vm21-user    false    204    205    205            7           2604    300942    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       	   vm21-user    false    203    202            �          0    596511    constraints 
   TABLE DATA           b   COPY public.constraints (id, x, y, z, width, height, "rotateX", "rotateY", "rotateZ") FROM stdin;
    public       	   vm21-user    false    207   �        �          0    300925    messages 
   TABLE DATA           >   COPY public.messages (id, user_id, message, date) FROM stdin;
    public       	   vm21-user    false    200   �        �          0    563680    points 
   TABLE DATA           -   COPY public.points (id, x, y, z) FROM stdin;
    public       	   vm21-user    false    205   )"       �          0    300933    users 
   TABLE DATA           A   COPY public.users (password, name, login, id, token) FROM stdin;
    public       	   vm21-user    false    202   F"       �           0    0    constraints_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.constraints_id_seq', 1, false);
          public       	   vm21-user    false    206            �           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 33, true);
          public       	   vm21-user    false    201            �           0    0    points_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.points_id_seq', 1, false);
          public       	   vm21-user    false    204            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public       	   vm21-user    false    203            A           2606    596516    constraints constraints_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.constraints
    ADD CONSTRAINT constraints_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.constraints DROP CONSTRAINT constraints_pkey;
       public         	   vm21-user    false    207            ;           2606    300944    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public         	   vm21-user    false    200            ?           2606    563685    points points_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.points
    ADD CONSTRAINT points_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.points DROP CONSTRAINT points_pkey;
       public         	   vm21-user    false    205            =           2606    300946    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         	   vm21-user    false    202            �      x������ � �      �   4  x���Kn1�u|
.P+��s�n@a�L%���43����;v4p����L_1y����-W�h@���x��+K�+&R r6Os��HmQg% �̳��ϋ�<ImT�͕�~/s�����t8,��b��r��(����hj�@y�xd�Ȳn�1P��u���yP#�Hnt�0#G��<�O�[�Q)%��|���;ʍ��0�����b)���~����ӑy'YE��:J��^[�h�HΟ��((���溁4W`}s���)
l����X�s�T��aL�*2$?��U�4v�񕲏�� ���      �      x������ � �      �   S  x�-�K�V1�ǹ�pRI=�l���*UAPQh�i��ހp(�дho!wG��5:�yx5�\�!V��Vgo�i=����y������(Qю9�:�}%l�X��ǜM-�&�� lc�ta������~m��/72�t��ELX;����N%�2�����/)�4)��M'����mQ�o\Z_���ú;o��o��?�sz���5����Q���YȎ���jAi�B�a +���� v�4&��c;|���O{��u�~�wz}	�e����&O��Iܡ�3�t>��:Q���kԜ�wo�#�����e�Ǘ!e�"�d6gF-��YrQ�"����8�t{��     