PGDMP  5                    }            demo    17.4    17.4                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16384    demo    DATABASE     j   CREATE DATABASE demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru-RU';
    DROP DATABASE demo;
                     postgres    false            �            1259    16390    Partner_products_import    TABLE     �   CREATE TABLE public."Partner_products_import" (
    production text,
    "partner name" text,
    "kolvo production" text,
    data text,
    id integer
);
 -   DROP TABLE public."Partner_products_import";
       public         heap r       postgres    false            �            1259    16395    Partners_import    TABLE     �   CREATE TABLE public."Partners_import" (
    "type partnera" text,
    "partner names" text,
    "partner email" text,
    "partner phone" text,
    "urid adress partnera" text,
    inn text,
    reiting text,
    director text,
    id integer
);
 %   DROP TABLE public."Partners_import";
       public         heap r       postgres    false            �            1259    16400    Product_type_import    TABLE     {   CREATE TABLE public."Product_type_import" (
    "products type" text,
    "koafficient production" text,
    id integer
);
 )   DROP TABLE public."Product_type_import";
       public         heap r       postgres    false            �            1259    16405    Products_import    TABLE     �   CREATE TABLE public."Products_import" (
    "products type" text,
    "products name" text,
    articul text,
    "min stoimost dly partnera" text,
    id integer,
    "create id" integer
);
 %   DROP TABLE public."Products_import";
       public         heap r       postgres    false            �            1259    16385    material    TABLE     �   CREATE TABLE public.material (
    type text,
    procents text,
    "Partner_products_import" text,
    id integer NOT NULL
);
    DROP TABLE public.material;
       public         heap r       postgres    false            �            1259    16410    material_id_seq    SEQUENCE     �   ALTER TABLE public.material ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    217            �          0    16390    Partner_products_import 
   TABLE DATA           m   COPY public."Partner_products_import" (production, "partner name", "kolvo production", data, id) FROM stdin;
    public               postgres    false    218   �       �          0    16395    Partners_import 
   TABLE DATA           �   COPY public."Partners_import" ("type partnera", "partner names", "partner email", "partner phone", "urid adress partnera", inn, reiting, director, id) FROM stdin;
    public               postgres    false    219   �       �          0    16400    Product_type_import 
   TABLE DATA           ^   COPY public."Product_type_import" ("products type", "koafficient production", id) FROM stdin;
    public               postgres    false    220   |       �          0    16405    Products_import 
   TABLE DATA           �   COPY public."Products_import" ("products type", "products name", articul, "min stoimost dly partnera", id, "create id") FROM stdin;
    public               postgres    false    221   *       �          0    16385    material 
   TABLE DATA           Q   COPY public.material (type, procents, "Partner_products_import", id) FROM stdin;
    public               postgres    false    217   �                  0    0    material_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.material_id_seq', 13, true);
          public               postgres    false    222            �     x��U[NA��b.��cw|���ð��XB����A�?k����\��F���a��I$Y�tOUuuϘ.�1ut�Nh�ΨM�~PM--��%B7X-�n4=P�����jE_���GlT�P����*����b����ч]2&� ��u:�w�����Hc�pM��Z0X܃��|֕IE�Aq�Wi$�� ��X��U�����ߐ��VFi���	��l��X|��&��E��o�@�*��?��"X|w�
+W����i�q�Ny���[Y�X�����/`���r7,���ϰ��1NlN�kV^����P�z+�{��s�E�D�����$C���7ـ������C�ܣ�ev�a~0.���<v��=��o�H�h��yW#6�S����R��������eA�ox4�ɏ�\��bV��h!�ݮԪ0�A��1��[D/�����nmS���j�+����3��tHu�����w��nrD!sθ^w�t�6���Y��%�T�C~�zw�~0����      �   �  x��T�n�P]_��~ B~]�w|A� W�"J
P�!i�E"5�Z�j�ٷ2�����3c�Њf���y�3gL4�gMϔپ=��O��k�p�D9LK��9�����x�i�����yq�y	�">s���'ې��9`��/�Mi�J�0h�ӣFS.mB�µ�;d~�}����yS�otF7������/��]�S�- p��@�\�u T�~�׍[�:�n��i�|�_�|PA�k��u`t����s�S����W$DBҒ�(���:�ۘ)�u���1eUm�h^�t)L�U���	�q�j��)�ef�?��ڋ����G�.�ș���1�*=8Hz�v�LK6���F��z`�r�?	������wT20�z������s�P�x�0�%��b�/����Y� f��B�)�i3��5���#�vt����i�6�=F��������(7#�Q_�n��Xȹ�[Q��A�2%�O�sU��b�YMT�މv�)�(MQM��+���6,�X�Jg��w���e���k8ً{Ig���v��6yq�O�в�����L�*������&h�:f��8ؓ�6H��MC����* ���B�Rf��_Q�Da�3�j��^r���,^DӘ.���|_�NTh�\�\�����9z�ʺ)����ޡ�!˕�<e���u��a�;�J����A>      �   �   x�m���0E��� Ri�t�$T\�HHLP#EMW���J\�b��wd,9TL�C�=��pF�#�4"J�)
��+�VよO3"��m/�ʣ'��S�����Q��Y]7V��W~\�m��%�+�U$��[!Gy/��J����j��D��      �   v  x��RKN�0];�������%8A�TT*H��{Ҫ�6�^a|#���)�X�y~�<z�m$mzZ�s���J��Z��Cj�]�}u�{�a����G��ᒚ0E\��#pz�����%�3H�:� ^��ބ#L5��NpP)~�JzA �(�t��]������B���۳�� ��Y�3Bks���oVn��r����fnЗ���x9�`���Eb#L��[�����	�T�z��vі[^����=�^��m���'4�U�#JITo��ѡ��&+\!r�}��J���o�v�Q۱4�2\D���¢��N(�T燎�͙�����O�y�*q�+����1Tx��|1����Jm���[=H�$y���      �   �   x�}�AN�0EמSx�֊��Kp�&)��R%N�Z�B�^��F|;�M!��̼�3��\4N�y��;�_�
{&S~D�9o5L#F�?`�6��
��V5�67s�#���'�Vk��X������b��إ<����^��s���Z�}��+�#T��qω��lV��P+�;}������#w��d���Z�g�c1q�����~#����D�	�G1���O�Τ���֊���D/#"��M$j     