PGDMP     (                 	    z         
   pokemon_db    14.5    14.5 Y    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    27867 
   pokemon_db    DATABASE     h   CREATE DATABASE pokemon_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE pokemon_db;
                postgres    false            �            1259    27892    Ability    TABLE       CREATE TABLE public."Ability" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    state boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "pokemonId" integer NOT NULL
);
    DROP TABLE public."Ability";
       public         heap    postgres    false            4           0    0    COLUMN "Ability".name    COMMENT     I   COMMENT ON COLUMN public."Ability".name IS 'Refers to the ability name';
          public          postgres    false    214            5           0    0    COLUMN "Ability".description    COMMENT     X   COMMENT ON COLUMN public."Ability".description IS 'Refers to the pokmenos description';
          public          postgres    false    214            6           0    0    COLUMN "Ability".state    COMMENT     N   COMMENT ON COLUMN public."Ability".state IS 'Helps with the deleted logical';
          public          postgres    false    214            �            1259    27891    Ability_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Ability_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Ability_id_seq";
       public          postgres    false    214            7           0    0    Ability_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Ability_id_seq" OWNED BY public."Ability".id;
          public          postgres    false    213            �            1259    27869    Habitat    TABLE     �   CREATE TABLE public."Habitat" (
    id integer NOT NULL,
    name character varying(255),
    state boolean,
    url text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Habitat";
       public         heap    postgres    false            8           0    0    COLUMN "Habitat".name    COMMENT     N   COMMENT ON COLUMN public."Habitat".name IS 'Defines the name of the habitat';
          public          postgres    false    210            9           0    0    COLUMN "Habitat".state    COMMENT     N   COMMENT ON COLUMN public."Habitat".state IS 'Helps with the deleted logical';
          public          postgres    false    210            :           0    0    COLUMN "Habitat".url    COMMENT     7   COMMENT ON COLUMN public."Habitat".url IS 'Url image';
          public          postgres    false    210            �            1259    27868    Habitat_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Habitat_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Habitat_id_seq";
       public          postgres    false    210            ;           0    0    Habitat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Habitat_id_seq" OWNED BY public."Habitat".id;
          public          postgres    false    209            �            1259    27906    Image    TABLE     }  CREATE TABLE public."Image" (
    id integer NOT NULL,
    official_art_work character varying(255),
    front_default character varying(255),
    front_female character varying(255),
    front_shiny character varying(255),
    state boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "pokemonId" integer NOT NULL
);
    DROP TABLE public."Image";
       public         heap    postgres    false            <           0    0     COLUMN "Image".official_art_work    COMMENT     J   COMMENT ON COLUMN public."Image".official_art_work IS 'Official art url';
          public          postgres    false    216            =           0    0    COLUMN "Image".front_default    COMMENT     E   COMMENT ON COLUMN public."Image".front_default IS 'Front image url';
          public          postgres    false    216            >           0    0    COLUMN "Image".front_female    COMMENT     K   COMMENT ON COLUMN public."Image".front_female IS 'Front female image url';
          public          postgres    false    216            ?           0    0    COLUMN "Image".front_shiny    COMMENT     I   COMMENT ON COLUMN public."Image".front_shiny IS 'Front shiny image url';
          public          postgres    false    216            @           0    0    COLUMN "Image".state    COMMENT     L   COMMENT ON COLUMN public."Image".state IS 'Helps with the deleted logical';
          public          postgres    false    216            �            1259    27905    Image_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Image_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Image_id_seq";
       public          postgres    false    216            A           0    0    Image_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Image_id_seq" OWNED BY public."Image".id;
          public          postgres    false    215            �            1259    27878    Pokemon    TABLE     �  CREATE TABLE public."Pokemon" (
    id integer NOT NULL,
    name character varying(255),
    evolution character varying(255),
    color character varying(255),
    description character varying(255),
    is_legendary boolean,
    is_mythical boolean,
    height integer,
    weight integer,
    state boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "habitatId" integer
);
    DROP TABLE public."Pokemon";
       public         heap    postgres    false            B           0    0    COLUMN "Pokemon".name    COMMENT     D   COMMENT ON COLUMN public."Pokemon".name IS 'Defines the data type';
          public          postgres    false    212            C           0    0    COLUMN "Pokemon".evolution    COMMENT     b   COMMENT ON COLUMN public."Pokemon".evolution IS 'Evolution name references to a another pokemon';
          public          postgres    false    212            D           0    0    COLUMN "Pokemon".color    COMMENT     F   COMMENT ON COLUMN public."Pokemon".color IS 'Defines pokemons color';
          public          postgres    false    212            E           0    0    COLUMN "Pokemon".description    COMMENT     J   COMMENT ON COLUMN public."Pokemon".description IS 'Pokemons description';
          public          postgres    false    212            F           0    0    COLUMN "Pokemon".is_legendary    COMMENT     a   COMMENT ON COLUMN public."Pokemon".is_legendary IS 'Allows to know if the pokemon is legendary';
          public          postgres    false    212            G           0    0    COLUMN "Pokemon".is_mythical    COMMENT     _   COMMENT ON COLUMN public."Pokemon".is_mythical IS 'Allows to know if the pokemon is mythical';
          public          postgres    false    212            H           0    0    COLUMN "Pokemon".height    COMMENT     H   COMMENT ON COLUMN public."Pokemon".height IS 'Defines pokemons height';
          public          postgres    false    212            I           0    0    COLUMN "Pokemon".weight    COMMENT     H   COMMENT ON COLUMN public."Pokemon".weight IS 'Defines pokemons weight';
          public          postgres    false    212            J           0    0    COLUMN "Pokemon".state    COMMENT     N   COMMENT ON COLUMN public."Pokemon".state IS 'Helps with the deleted logical';
          public          postgres    false    212            �            1259    27877    Pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Pokemon_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Pokemon_id_seq";
       public          postgres    false    212            K           0    0    Pokemon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Pokemon_id_seq" OWNED BY public."Pokemon".id;
          public          postgres    false    211            �            1259    27946    Stat    TABLE     O  CREATE TABLE public."Stat" (
    id integer NOT NULL,
    hp integer,
    attack integer,
    defense integer,
    special_attack integer,
    special_defense integer,
    speed integer,
    state boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "pokemonId" integer
);
    DROP TABLE public."Stat";
       public         heap    postgres    false            L           0    0    COLUMN "Stat".hp    COMMENT     T   COMMENT ON COLUMN public."Stat".hp IS 'Refers to the health points of the pokemon';
          public          postgres    false    222            M           0    0    COLUMN "Stat".attack    COMMENT     b   COMMENT ON COLUMN public."Stat".attack IS 'Refers to the attack points or damage of the pokemon';
          public          postgres    false    222            N           0    0    COLUMN "Stat".defense    COMMENT     Z   COMMENT ON COLUMN public."Stat".defense IS 'Refers to the defense points of the pokemon';
          public          postgres    false    222            O           0    0    COLUMN "Stat".special_attack    COMMENT     i   COMMENT ON COLUMN public."Stat".special_attack IS 'Refers to the special attacks points of the pokemon';
          public          postgres    false    222            P           0    0    COLUMN "Stat".special_defense    COMMENT     j   COMMENT ON COLUMN public."Stat".special_defense IS 'Refers to the special defense points of the pokemon';
          public          postgres    false    222            Q           0    0    COLUMN "Stat".speed    COMMENT     V   COMMENT ON COLUMN public."Stat".speed IS 'Refers to the speed points of the pokemon';
          public          postgres    false    222            R           0    0    COLUMN "Stat".state    COMMENT     K   COMMENT ON COLUMN public."Stat".state IS 'Helps with the deleted logical';
          public          postgres    false    222            �            1259    27945    Stat_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Stat_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Stat_id_seq";
       public          postgres    false    222            S           0    0    Stat_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Stat_id_seq" OWNED BY public."Stat".id;
          public          postgres    false    221            �            1259    27920    Type    TABLE     �   CREATE TABLE public."Type" (
    id integer NOT NULL,
    name character varying(255),
    state boolean,
    url text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Type";
       public         heap    postgres    false            T           0    0    COLUMN "Type".name    COMMENT     D   COMMENT ON COLUMN public."Type".name IS 'Referes to the type name';
          public          postgres    false    218            U           0    0    COLUMN "Type".state    COMMENT     K   COMMENT ON COLUMN public."Type".state IS 'Helps with the deleted logical';
          public          postgres    false    218            V           0    0    COLUMN "Type".url    COMMENT     4   COMMENT ON COLUMN public."Type".url IS 'Image url';
          public          postgres    false    218            �            1259    27919    Type_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Type_id_seq";
       public          postgres    false    218            W           0    0    Type_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Type_id_seq" OWNED BY public."Type".id;
          public          postgres    false    217            �            1259    27929    pokemon_type    TABLE     �   CREATE TABLE public.pokemon_type (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "pokemonId" integer NOT NULL,
    "typeId" integer NOT NULL
);
     DROP TABLE public.pokemon_type;
       public         heap    postgres    false            �            1259    27928    pokemon_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pokemon_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pokemon_type_id_seq;
       public          postgres    false    220            X           0    0    pokemon_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pokemon_type_id_seq OWNED BY public.pokemon_type.id;
          public          postgres    false    219            |           2604    27895 
   Ability id    DEFAULT     l   ALTER TABLE ONLY public."Ability" ALTER COLUMN id SET DEFAULT nextval('public."Ability_id_seq"'::regclass);
 ;   ALTER TABLE public."Ability" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            z           2604    27872 
   Habitat id    DEFAULT     l   ALTER TABLE ONLY public."Habitat" ALTER COLUMN id SET DEFAULT nextval('public."Habitat_id_seq"'::regclass);
 ;   ALTER TABLE public."Habitat" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            }           2604    27909    Image id    DEFAULT     h   ALTER TABLE ONLY public."Image" ALTER COLUMN id SET DEFAULT nextval('public."Image_id_seq"'::regclass);
 9   ALTER TABLE public."Image" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            {           2604    27881 
   Pokemon id    DEFAULT     l   ALTER TABLE ONLY public."Pokemon" ALTER COLUMN id SET DEFAULT nextval('public."Pokemon_id_seq"'::regclass);
 ;   ALTER TABLE public."Pokemon" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    27949    Stat id    DEFAULT     f   ALTER TABLE ONLY public."Stat" ALTER COLUMN id SET DEFAULT nextval('public."Stat_id_seq"'::regclass);
 8   ALTER TABLE public."Stat" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ~           2604    27923    Type id    DEFAULT     f   ALTER TABLE ONLY public."Type" ALTER COLUMN id SET DEFAULT nextval('public."Type_id_seq"'::regclass);
 8   ALTER TABLE public."Type" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    27932    pokemon_type id    DEFAULT     r   ALTER TABLE ONLY public.pokemon_type ALTER COLUMN id SET DEFAULT nextval('public.pokemon_type_id_seq'::regclass);
 >   ALTER TABLE public.pokemon_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            %          0    27892    Ability 
   TABLE DATA           h   COPY public."Ability" (id, name, description, state, "createdAt", "updatedAt", "pokemonId") FROM stdin;
    public          postgres    false    214   �`       !          0    27869    Habitat 
   TABLE DATA           S   COPY public."Habitat" (id, name, state, url, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    210   �e       '          0    27906    Image 
   TABLE DATA           �   COPY public."Image" (id, official_art_work, front_default, front_female, front_shiny, state, "createdAt", "updatedAt", "pokemonId") FROM stdin;
    public          postgres    false    216   kk       #          0    27878    Pokemon 
   TABLE DATA           �   COPY public."Pokemon" (id, name, evolution, color, description, is_legendary, is_mythical, height, weight, state, "createdAt", "updatedAt", "habitatId") FROM stdin;
    public          postgres    false    212   fm       -          0    27946    Stat 
   TABLE DATA           �   COPY public."Stat" (id, hp, attack, defense, special_attack, special_defense, speed, state, "createdAt", "updatedAt", "pokemonId") FROM stdin;
    public          postgres    false    222   at       )          0    27920    Type 
   TABLE DATA           P   COPY public."Type" (id, name, state, url, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   �u       +          0    27929    pokemon_type 
   TABLE DATA           [   COPY public.pokemon_type (id, "createdAt", "updatedAt", "pokemonId", "typeId") FROM stdin;
    public          postgres    false    220   _w       Y           0    0    Ability_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Ability_id_seq"', 47, true);
          public          postgres    false    213            Z           0    0    Habitat_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Habitat_id_seq"', 9, true);
          public          postgres    false    209            [           0    0    Image_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Image_id_seq"', 20, true);
          public          postgres    false    215            \           0    0    Pokemon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Pokemon_id_seq"', 20, true);
          public          postgres    false    211            ]           0    0    Stat_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Stat_id_seq"', 20, true);
          public          postgres    false    221            ^           0    0    Type_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Type_id_seq"', 18, true);
          public          postgres    false    217            _           0    0    pokemon_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pokemon_type_id_seq', 26, true);
          public          postgres    false    219            �           2606    27899    Ability Ability_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Ability"
    ADD CONSTRAINT "Ability_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Ability" DROP CONSTRAINT "Ability_pkey";
       public            postgres    false    214            �           2606    27876    Habitat Habitat_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Habitat"
    ADD CONSTRAINT "Habitat_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Habitat" DROP CONSTRAINT "Habitat_pkey";
       public            postgres    false    210            �           2606    27913    Image Image_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Image" DROP CONSTRAINT "Image_pkey";
       public            postgres    false    216            �           2606    27885    Pokemon Pokemon_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Pokemon"
    ADD CONSTRAINT "Pokemon_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Pokemon" DROP CONSTRAINT "Pokemon_pkey";
       public            postgres    false    212            �           2606    27951    Stat Stat_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Stat"
    ADD CONSTRAINT "Stat_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Stat" DROP CONSTRAINT "Stat_pkey";
       public            postgres    false    222            �           2606    27927    Type Type_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Type"
    ADD CONSTRAINT "Type_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Type" DROP CONSTRAINT "Type_pkey";
       public            postgres    false    218            �           2606    27934    pokemon_type pokemon_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pokemon_type
    ADD CONSTRAINT pokemon_type_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pokemon_type DROP CONSTRAINT pokemon_type_pkey;
       public            postgres    false    220            �           2606    27900    Ability Ability_pokemonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ability"
    ADD CONSTRAINT "Ability_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public."Pokemon"(id) ON UPDATE CASCADE;
 L   ALTER TABLE ONLY public."Ability" DROP CONSTRAINT "Ability_pokemonId_fkey";
       public          postgres    false    212    214    3204            �           2606    27914    Image Image_pokemonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public."Pokemon"(id) ON UPDATE CASCADE;
 H   ALTER TABLE ONLY public."Image" DROP CONSTRAINT "Image_pokemonId_fkey";
       public          postgres    false    216    3204    212            �           2606    27886    Pokemon Pokemon_habitatId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pokemon"
    ADD CONSTRAINT "Pokemon_habitatId_fkey" FOREIGN KEY ("habitatId") REFERENCES public."Habitat"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Pokemon" DROP CONSTRAINT "Pokemon_habitatId_fkey";
       public          postgres    false    212    210    3202            �           2606    27952    Stat Stat_pokemonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Stat"
    ADD CONSTRAINT "Stat_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public."Pokemon"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public."Stat" DROP CONSTRAINT "Stat_pokemonId_fkey";
       public          postgres    false    212    222    3204            �           2606    27935 (   pokemon_type pokemon_type_pokemonId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_type
    ADD CONSTRAINT "pokemon_type_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES public."Pokemon"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.pokemon_type DROP CONSTRAINT "pokemon_type_pokemonId_fkey";
       public          postgres    false    220    212    3204            �           2606    27940 %   pokemon_type pokemon_type_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pokemon_type
    ADD CONSTRAINT "pokemon_type_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public."Type"(id) ON UPDATE CASCADE;
 Q   ALTER TABLE ONLY public.pokemon_type DROP CONSTRAINT "pokemon_type_typeId_fkey";
       public          postgres    false    3210    218    220            %   �  x��W�n�F<�b>�4DRkoF� �����ri�#i�!�;9���ч=���r%ˆ�DY�E 9 ������0Y��:a؍��Pe�ڔ�EŅ���n�T��8��8�Q9�K{i'�8����7���ϳ��?:J��YGN��W�(�;#sYP��u�/8�Oi�-�P�k/
��!%�pR�\~�d�y�+G���3J��M=
v���rI����Y"f��"�_k��3����䞪Bs%�*^�o�~��%勃�eQ��މ8��)�:o�_㷩��[��Jm��}xF�р�4�y<�d
v��g5
cD.'���'���#Do�t���~�Q�/�p݁ŐMB)���]>A�-pP��A�M��*����9m��_Ja�J��Z�W�jo:dz]0C��i�0��0�Z=�eۙ3C�� V�S^,D���k%=��N:��җ�"���s����&����P�s�(��ܣ�&tK���e�YH��`j0���(� �LN+@ ����^'D��2L�0uB�z끋�t휴�x���N��qst��kp�mϸ##�w���5>�����pң(�X��/�JV�e��_xȊ�b�7
Va�`ߠ�Jm��'�*p��{9u1~Kv�1� ��P�](G� ��WJY��ũ���io+��}dP�uA�Ծ`�i�����"J��<�c�{#�O޴̔(�(4���TN$���a'����CX�iYM������g��ra{�s0\ѳ�H`���.�*�/e-�f�p0��V"��fNl�����(3%gs��b�v��4h%�k��V'q��O��	�l�r��ҝ��ׅO�crN��\�� ��#rC�ko}81�UO�=7Ӫ�Ӆ�݉H��B����?^�׊�j��N�^��L	���K3&�~�焁O�3�`�6���aV��\�k5�{C�9��F鐡�d�Z߇�8��>k�C`p}s�a�����'�}�G�wV;a�(�8�w߇ǘ���	�7������}I`�[�l��p�ڹ5ˣ�{����m�w���,�f�o���`�A�e[�|c��&Zňd�A�$Y;����x�Y�w/�ƌ=�ZOn�k]�RbA�����Y����Q6|Ͼ��(�}���s�;鍢l�F�}�~��}�>,��2�;�/�~zJ����$�}&�7��;q�Qpd���bM{Qt�X���yE� �K�7      !   �  x��[n�Lǟ}Vq6�I_�i4r��@L;�16h���n0�`v5k��M;#}���!��	$������zⒽ'���m����㣪�MvWu�� �&��Z��ĲL�$̦?|�ġz�E"i�pr#E���S��T�=JkS�Nd,c�H-��$T��Ā��RI<lT���Pf�d��u_M������m:�{wٹ�+�~Ѓ:�r��������B����6u6l�-/f�����k��n|n�����ꪫJּs���k�2�FW�H<�~���`��E�NtQV��A����"����V�J�k�Pc����o���	��ɷ�3W<�v�U��b�p�oc���h����Qp��7^�cg����oю��(����m:m'���E��C�+�����w���9V�%ƻ��#�^\U�K�8��>l����k'+��V�1//��&iu{�V3�^�����n͋S��.~�0t�9�8�E���y����,t{b���4�������~�^z8�.�70g*�y R�9e�	�Ԕ�Jf+�HKs�YC���;s��c��*�nWqgIx��,5s%�f:v!Wh�sQq�ά���K����Q�+��amr}��fPf��kT�SD�����e��u"��;]">���d� K����� �h��$MrA��ЍGex�T���g]�s���8�FW�����/ ���q5�Fը��ٗ�c�Μ����ID=�'��	�vo�Y�f��*�Ex�O��I�h�:��?��.���!�<5�)�$�:S@i��41�uQ�f�y�J�:}5��`F||�οF�JM�c�ao���/QW^���Ŧ<O�+ya-�l�T�����X��#1p�|�I�X�N��߈���ʤJ�K������TX'�!mi4��4`"JL?�o�[U��m�����wC)y@o~���^��u�?��*WB��C0�6	��4�6��z��Hh���2C�\d?�q���*����km� .tmt�Q0��]K�%�qp<�U��_�c�aÓ,�C5c|2|����[��Yzd���]b��I��^���������	lk�i�$R��1��i�I�p����||i��_�x �_��{3�95Q�|�*_�|x'w�q��~	��=r�^7|���1#�1�]�Fę��y�\��}�F�9�$pV�R�����@'���L �f6�� `Qja�Զ�����a�C ����+TƫX7/E-DQ�d�9�w�F�m�n|��	�=Ǩ+u�ї��,��4nb�l&�a��F���� �^_�#���vx�_�0~�9[�k���G��|��4i������0���
I��[D{�$7Ll���A�c}�Y1j�R?XB����B����vbGk�qD�3c������@Q��z�i����۵�^�/�o��ϋ2pNm�wo�wڕi[~�=���뿫�fx      '   �  x���ˎ�@E��W� ]���n���f��B�h��ߏ�`LLfa�e�$���EѧxSY;L�(�kx�mu�_�r,�Ζ����v����}E�0ֶ��6�l9>~��m�E��n���c]�y䣽��9b%á;���v���:Uu��ȶ)�XR|H��Ve��@��0I8Ni�Ҽ����DF�6o���7x��$)��i x)^�j��4��5��\X��N`��5�&x��������#�����Sj<O\���w��e�&��rR���%��/eރ�R��,pw�%Y�trF,��l%s �J��7�D3�Kb���/�U��$v9@&Ƌ%A���q,���p��*��cE����8]�p�X{׿�X�mpC�"-����X��]�~l���gp����¸�/8&�!KZ�c1�9!^A���l��8usJ�]�2���{o�z�F�X���C9#�Q���'���b��������d      #   �  x��X=s�8��_��x$�;�ϓ������kV$D� ����e�������%+��+�q!J$�}���>x�j��A���r�Q�ڦ>�e��(�j��2_�F���lbtG�t��"�҄����?����ޘ��Lz���M���%gk�59���ɜ��N��L�j1[,��g�3����]�?�>9�]����߭��Bu���uV�,l�s�Iݙ��$��$��m���CB$�ԦѤ}��+�{6��Dܯ�?S�!��u�m��k��ZH z�-�K%Q���<X�&�Ë��_�g*���,L%U�.'4��&	�"�=R��޸��L]�=?�ɩ�ք���D���k���qԒD�cs��8W�3'�J��'�~x$4�����p�w�E�2�
��� y4M4z[AB���A�WT�a_���7�>���ʙٸ-K�yg���-[���#F�=�%�I�
8堸����H�2��Ao����;��\�d?g�jN9��>q�3�*p���G����xy�s��i��b�j��a���$ƖM`s�%���K���~��~�5�c�lt���Mm}���+A��뷷���B=ئq�.�V�I.{����g	K8�&tm� �A�T��,��)G�r�����x�DH򾔵b�G��Ky���}M(�4<��z����v ��^��ɥ�Ҷ�գj���Q��i�U�]CjtKO	ui��D�E*q�܈-T�D� 0+��� �"��9�}��Jŕ�__Q�+���6��W-cx��F�,�P�ޠ�}�rE6=������|�^V5%0qv��9�W���C�D܎\2t���P����[��&��s�N��^��ɵ��2x�Z2zށ�,�`��TEȸcQV"�-���T4D�|�f��8+șv�K-D��-�`Єh�vxIz����^菑��L-i�Y��4�mn��x�[�y�x0��S���F!~r;���H
������a�0���5�f �U$l�v��>F��Z&�DY
{yN�؂�g@�>_�������w�_��ȹ��l������?R���9�|"�-���M�Nq4�N�3���u.K�<�o�G���`@2z�(E ��HEH����L�'��.�u6r�5�� ��P�b7����u���XJ�Э�.sd�:�=��"����l,sMBC�^�)T��?A`�ĝ�c�
=�+��&x�`����=46�o�����Wl�� �)�ڔ	��o-�16�o`�] ��>�f��H�l���mN(L��6?���L-o/��d~~8f_aܖD��ئX�F�M�_2�F���C�������K��5�{M��������oY1�5ZT,x� ��l���o/�~����H\�GZ��+��bC��	f�'&E3���K���b7,���y�N�E�ܲg���1S������g�AydY��r�@МW��qNˈ$���R�]�f���-�tp�`g�̳��i���J�Vag*t��������W���W��Z�#��#��	.��C|=���CQ	�!���DA<L�͚g+^Z�cxz� b��a`1�C-$���C����ׯ�T����Ӽ+�f�d�����q@v�Ơhy���NؖOM7���r�8���\���Ɗ�ѕ�i[�/*�Z�Ϥ+��-%f�+��L���?���H<��&s��Orx��y���[��y`�=*Dǵ:���;t0�r����W���˙eć�c���d��'@w      -     x����m1D���4�'�m��+#�+��&R>�aK^����̀j���$�r�|�<e<-�����V2'wjB^'d��ldA�ԌzѺoӌ��i���i���
�%���]�s'�S��D�f�yT�������d�jAF��>mrܛqo���!5L���U��@�l��x��1i����� DeXf�&1��3��h�q��Y��	h����m�*^�6�=E�
2J���3F&6��E^8 F=)�e��N,OF�-�>����ޓ?�4����,�z0���      )   �  x��ֽn�0���Y2Z�$˖���A�K���a�TIʁ�C�<�_,r���P�'�@���Q)0�F��ƹή�;�Y����h�,Ѧ&�Uw^��V+Kr���Y������j��������k��CͲiJ����.V�2ɳ|J��|�d��]n��nǦ�̡�b�a+x�n�:
i�a��C]�b��Ǩ�a���U ����y���C��fQps�1�m�k��1����Eq-`�c�WA
��ka0����Ua�Лk&�1�i	�@�SIJ���ĔR�=o�ڒ-���'T�����i�ju6�=}�ǕA'ϧ�r׎�n0��8�:{����[���l���4����Z�c�h��c*�
%к��aHxs���H�98���ڤM��&rc����)ݫ*�eT��ϼ���F���Z�J��aHл��kh�J&��':x      +   �   x�����0Cka�,`� Y?�����>.P�ޑ�Ţ*���G���n�lG�o%2a��f��L\&{������z��dG��f#�e³P�6��j�+;�6�]�v� ]�b��U,V��]�b�	�����EdA��eb���������\�2p��-�l��Dd�Rvپ�]�p�`xN _�;"�     