PGDMP         %                y            vm21-db    13.2    13.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    300900    vm21-db    DATABASE     f   CREATE DATABASE "vm21-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "vm21-db";
             	   vm21-user    false            �          0    596511    constraints 
   TABLE DATA           b   COPY public.constraints (id, x, y, z, width, height, "rotateX", "rotateY", "rotateZ") FROM stdin;
    public       	   vm21-user    false    207   �	       �          0    300925    messages 
   TABLE DATA           >   COPY public.messages (id, user_id, message, date) FROM stdin;
    public       	   vm21-user    false    200   �	       �          0    563680    points 
   TABLE DATA           -   COPY public.points (id, x, y, z) FROM stdin;
    public       	   vm21-user    false    205          �          0    300933    users 
   TABLE DATA           A   COPY public.users (password, name, login, id, token) FROM stdin;
    public       	   vm21-user    false    202   )       �           0    0    constraints_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.constraints_id_seq', 1, false);
          public       	   vm21-user    false    206            �           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 33, true);
          public       	   vm21-user    false    201            �           0    0    points_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.points_id_seq', 1, false);
          public       	   vm21-user    false    204            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 17, true);
          public       	   vm21-user    false    203            �      x������ � �      �   4  x���Kn1�u|
.P+��s�n@a�L%���43����;v4p����L_1y����-W�h@���x��+K�+&R r6Os��HmQg% �̳��ϋ�<ImT�͕�~/s�����t8,��b��r��(����hj�@y�xd�Ȳn�1P��u���yP#�Hnt�0#G��<�O�[�Q)%��|���;ʍ��0�����b)���~����ӑy'YE��:J��^[�h�HΟ��((���溁4W`}s���)
l����X�s�T��aL�*2$?��U�4v�񕲏�� ���      �      x������ � �      �   S  x�-�K�V1�ǹ�pRI=�l���*UAPQh�i��ހp(�дho!wG��5:�yx5�\�!V��Vgo�i=����y������(Qю9�:�}%l�X��ǜM-�&�� lc�ta������~m��/72�t��ELX;����N%�2�����/)�4)��M'����mQ�o\Z_���ú;o��o��?�sz���5����Q���YȎ���jAi�B�a +���� v�4&��c;|���O{��u�~�wz}	�e����&O��Iܡ�3�t>��:Q���kԜ�wo�#�����e�Ǘ!e�"�d6gF-��YrQ�"����8�t{��     