PGDMP  *                
    {         
   lastritual    14.5    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    28202 
   lastritual    DATABASE     ~   CREATE DATABASE lastritual WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE lastritual;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    28204    product_type    TABLE     b   CREATE TABLE public.product_type (
    id integer NOT NULL,
    product_type character varying
);
     DROP TABLE public.product_type;
       public         heap    postgres    false    4            �            1259    28203    product_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_type_id_seq;
       public          postgres    false    210    4            �           0    0    product_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_type_id_seq OWNED BY public.product_type.id;
          public          postgres    false    209            �            1259    28214    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    product character varying,
    description character varying,
    product_type_id integer,
    img character varying
);
    DROP TABLE public.products;
       public         heap    postgres    false    4            �            1259    28213    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    212    4            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    211                       2604    28207    product_type id    DEFAULT     r   ALTER TABLE ONLY public.product_type ALTER COLUMN id SET DEFAULT nextval('public.product_type_id_seq'::regclass);
 >   ALTER TABLE public.product_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            	           2604    28217    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �          0    28204    product_type 
   TABLE DATA           8   COPY public.product_type (id, product_type) FROM stdin;
    public          postgres    false    210   �       �          0    28214    products 
   TABLE DATA           R   COPY public.products (id, product, description, product_type_id, img) FROM stdin;
    public          postgres    false    212          �           0    0    product_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_type_id_seq', 1, false);
          public          postgres    false    209            �           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    211                       2606    28211    product_type product_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_type DROP CONSTRAINT product_type_pkey;
       public            postgres    false    210                       2606    28221    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    212            
           1259    28212    ix_product_type_id    INDEX     I   CREATE INDEX ix_product_type_id ON public.product_type USING btree (id);
 &   DROP INDEX public.ix_product_type_id;
       public            postgres    false    210                       1259    28227    ix_products_id    INDEX     A   CREATE INDEX ix_products_id ON public.products USING btree (id);
 "   DROP INDEX public.ix_products_id;
       public            postgres    false    212                       2606    28222 &   products products_product_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_type_id_fkey FOREIGN KEY (product_type_id) REFERENCES public.product_type(id);
 P   ALTER TABLE ONLY public.products DROP CONSTRAINT products_product_type_id_fkey;
       public          postgres    false    3084    212    210            �   C   x�3�0�bÅ�/6]��2�0����x��.#���̽v]��e�ya2P��
c���� F�!�      �     x��W�NQ�^��+M(��}�Ʀ�Z[5�&�j����2Mn�4�YAd�[�`���9�ʮ�B���,�윙�9sf�m���Z�Ӈ��Q�Z�L.uɡ���ץ�����%�4���U�R�	r��t��$OW�ڠD�`�ԅ�QlA<XquJ,�˺�������]����K�����?��{8h@�
-�D��y��;����nU0�B�)B\c�Y�0��O���A��W�� .�m��(Q��	��2�����:����'`��.d�?��c���=<a�C	V��`�L'��q��f;��ˆ���w%;�������mK{Ah��Ԅ�/C���᛹~���b��n%-�z],nl>O�
+ŭ��;Y�J��[�/o����%y�H��䛍|,�{i;g��� iH�e��,�)?�-�hS����9Ӊ�k�"�fp�4NB$#D�"��� �&`�&�hJ����DrBd&JĦ�'GeF��Zt�n�Qz0Q��S+N��� �z|X�.��x��,�VVn����f��Z[�.-��Ꭓ���A��C�t�����<Ԧ���E�v�M���K|��C��ᙄ7Y�2�F��9�E��������D�M�/X���P���0���7�P]�D\L����DK�	�1�m[t� g�)��2�"<�̬���-�B˗��Y�Q�VW�+�΄�2k��ܔ��pkZ�|7
by{�?��� ,H�R�$G���#(K�<	�%�$���p��j���=�>0��"9��*�J*x�޷�XZ��9EvJ�3��2
4�>���>g�g��q3;g��D�����>�'e �1���n�7>�Ǿ��$c<�v�)Uί8*V���f<�"�`�|���(|��&���(t���ҫR���b��? K�<����9�ת�C�4�ɞ�x5�׿��3�w��!��X��e�l4��Q�/0S�4���-5k�=_��J.����;x���:�=NnyF�;&�����bcA|     