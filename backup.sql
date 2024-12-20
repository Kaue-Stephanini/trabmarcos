PGDMP  1    #            
    |            postgres    17.2    17.2 6    x           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            {           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                     postgres    false            |           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4987                        2615    16388    pgagent    SCHEMA        CREATE SCHEMA pgagent;
    DROP SCHEMA pgagent;
                     postgres    false            }           0    0    SCHEMA pgagent    COMMENT     6   COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';
                        postgres    false    7                        3079    16389    pgagent 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;
    DROP EXTENSION pgagent;
                        false    7            ~           0    0    EXTENSION pgagent    COMMENT     >   COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';
                             false    2            �            1259    33411    free_hard_drive_space    TABLE     �   CREATE TABLE public.free_hard_drive_space (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 )   DROP TABLE public.free_hard_drive_space;
       public         heap r       postgres    false            �            1259    33416    intel_cpu_speeds    TABLE     �   CREATE TABLE public.intel_cpu_speeds (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 $   DROP TABLE public.intel_cpu_speeds;
       public         heap r       postgres    false            �            1259    33421    language    TABLE     �   CREATE TABLE public.language (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
    DROP TABLE public.language;
       public         heap r       postgres    false            �            1259    33426     multi-monitor_desktop_resolution    TABLE     �   CREATE TABLE public."multi-monitor_desktop_resolution" (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 6   DROP TABLE public."multi-monitor_desktop_resolution";
       public         heap r       postgres    false            �            1259    33431 
   os_version    TABLE     �   CREATE TABLE public.os_version (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
    DROP TABLE public.os_version;
       public         heap r       postgres    false            �            1259    33436    other_settings    TABLE     �   CREATE TABLE public.other_settings (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 "   DROP TABLE public.other_settings;
       public         heap r       postgres    false            �            1259    33441    physical_cpus    TABLE     �   CREATE TABLE public.physical_cpus (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 !   DROP TABLE public.physical_cpus;
       public         heap r       postgres    false            �            1259    33446    primary_display_resolution    TABLE     �   CREATE TABLE public.primary_display_resolution (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 .   DROP TABLE public.primary_display_resolution;
       public         heap r       postgres    false            �            1259    19521    sensores    TABLE     �   CREATE TABLE public.sensores (
    id integer NOT NULL,
    temperatura numeric,
    umidade numeric,
    ruido numeric,
    poluicao numeric,
    pressao_atmosferica numeric,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.sensores;
       public         heap r       postgres    false            �            1259    19520    sensores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sensores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sensores_id_seq;
       public               postgres    false    239                       0    0    sensores_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sensores_id_seq OWNED BY public.sensores.id;
          public               postgres    false    238            �            1259    33010    steam_survey    TABLE     �   CREATE TABLE public.steam_survey (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
     DROP TABLE public.steam_survey;
       public         heap r       postgres    false            �            1259    33451 
   system_ram    TABLE     �   CREATE TABLE public.system_ram (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
    DROP TABLE public.system_ram;
       public         heap r       postgres    false            �            1259    24757    tabela_de_exemplo    TABLE     �   CREATE TABLE public.tabela_de_exemplo (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 %   DROP TABLE public.tabela_de_exemplo;
       public         heap r       postgres    false            �            1259    33456    total_hard_drive_space    TABLE     �   CREATE TABLE public.total_hard_drive_space (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 *   DROP TABLE public.total_hard_drive_space;
       public         heap r       postgres    false            �            1259    33471    video_card_description    TABLE     �   CREATE TABLE public.video_card_description (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
 *   DROP TABLE public.video_card_description;
       public         heap r       postgres    false            �            1259    33461    vr_headsets    TABLE     �   CREATE TABLE public.vr_headsets (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
    DROP TABLE public.vr_headsets;
       public         heap r       postgres    false            �            1259    33466    vram    TABLE     �   CREATE TABLE public.vram (
    date text,
    category text,
    name text,
    change double precision,
    percentage double precision
);
    DROP TABLE public.vram;
       public         heap r       postgres    false            �           2604    19524    sensores id    DEFAULT     j   ALTER TABLE ONLY public.sensores ALTER COLUMN id SET DEFAULT nextval('public.sensores_id_seq'::regclass);
 :   ALTER TABLE public.sensores ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    238    239    239            �          0    16390    pga_jobagent 
   TABLE DATA           I   COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
    pgagent               postgres    false    223   �8       �          0    16399    pga_jobclass 
   TABLE DATA           7   COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
    pgagent               postgres    false    225   09       �          0    16409    pga_job 
   TABLE DATA           �   COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
    pgagent               postgres    false    227   M9       �          0    16457    pga_schedule 
   TABLE DATA           �   COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
    pgagent               postgres    false    231   j9       �          0    16485    pga_exception 
   TABLE DATA           J   COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
    pgagent               postgres    false    233   �9       �          0    16499 
   pga_joblog 
   TABLE DATA           X   COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
    pgagent               postgres    false    235   �9       �          0    16433    pga_jobstep 
   TABLE DATA           �   COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
    pgagent               postgres    false    229   �9       �          0    16515    pga_jobsteplog 
   TABLE DATA           |   COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
    pgagent               postgres    false    237   �9       i          0    33411    free_hard_drive_space 
   TABLE DATA           Y   COPY public.free_hard_drive_space (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    242   �9       j          0    33416    intel_cpu_speeds 
   TABLE DATA           T   COPY public.intel_cpu_speeds (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    243   �:       k          0    33421    language 
   TABLE DATA           L   COPY public.language (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    244   �;       l          0    33426     multi-monitor_desktop_resolution 
   TABLE DATA           f   COPY public."multi-monitor_desktop_resolution" (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    245   z=       m          0    33431 
   os_version 
   TABLE DATA           N   COPY public.os_version (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    246   q?       n          0    33436    other_settings 
   TABLE DATA           R   COPY public.other_settings (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    247   m@       o          0    33441    physical_cpus 
   TABLE DATA           Q   COPY public.physical_cpus (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    248   |A       p          0    33446    primary_display_resolution 
   TABLE DATA           ^   COPY public.primary_display_resolution (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    249   SB       f          0    19521    sensores 
   TABLE DATA           o   COPY public.sensores (id, temperatura, umidade, ruido, poluicao, pressao_atmosferica, "timestamp") FROM stdin;
    public               postgres    false    239   vC       h          0    33010    steam_survey 
   TABLE DATA           P   COPY public.steam_survey (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    241   �M       q          0    33451 
   system_ram 
   TABLE DATA           N   COPY public.system_ram (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    250   x[       g          0    24757    tabela_de_exemplo 
   TABLE DATA           U   COPY public.tabela_de_exemplo (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    240   @\       r          0    33456    total_hard_drive_space 
   TABLE DATA           Z   COPY public.total_hard_drive_space (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    251    j       u          0    33471    video_card_description 
   TABLE DATA           Z   COPY public.video_card_description (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    254   �j       s          0    33461    vr_headsets 
   TABLE DATA           O   COPY public.vr_headsets (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    252   mn       t          0    33466    vram 
   TABLE DATA           H   COPY public.vram (date, category, name, change, percentage) FROM stdin;
    public               postgres    false    253   Pp       �           0    0    sensores_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sensores_id_seq', 3, true);
          public               postgres    false    238            �           2606    19529    sensores sensores_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sensores
    ADD CONSTRAINT sensores_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sensores DROP CONSTRAINT sensores_pkey;
       public                 postgres    false    239            �   @   x�3400��4202�54�52W00�20�21�376��s��{���:��y��s��qqq F*x      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      i   �   x������0�g�)���i����F��E�[T�OZ��5d���_~[X��\��e������-���X���zB���"�:~>#�SW��1w� ��*�PB�p��z^-�%-����8r���/�Ʒ�}o�f�wO���@��~�踳L[�PO������� ����x��)��
5�n�.����8����%�=c��      j   �   x����j�0�g�)�>xM�ҭ�eIk��HH�O_%����Zt }��w���!l���p'���s�s���{��s��Ų{������X;a��"���hW��H�\T51`21�̤ �d��+`=��4z�23՟�ܵ���4y�A�+�_PIV��JŐ�l��d�tzw�o!M��כ؄�xw�?J�gA��c7\����s�� q�{�������      k   �  x����n�0���S�by��݋*��^,���A&O_� Ҡ��,�l��0�−�P4���d�Ф�Ji�4� �I0 ��z��K0�z�F��u��u���y*�'SVgo4Mg8�@�Y�>�C����9$e�a
�|Q��:x,wX�Uj۫�y�� �P$dt8h�f�ƨ��ҋHrme5� `�]�s�z����t壱���<�3D���؃*�y�����;��b�;olە��.���EV7��	\����G�[Ĉ�NfѸ����p>�nў�(�B�4Z�zW�_��p��'�����s�3�ܝVŕ=��6�C��^�>C�	�r�sO�ϔ3c:/x�U\��z0��H���� �_����nucd5ҁ�� ��Yuv{��98���uՎZ����j�����
Q�� � �DC+      l   �  x����n� ���)�A`̿��դ�w��jU3����
%��d���3�l����l;��q?���tٽ������8\��m>Ng&=����Lp!0ɍ�� m���O��!\
��H�*$�=�
�!��ƀĈ)��0��
qR�Td�Y1�[�1�Y�P��G���־�h0�:�MDS�':D7X_S\�v��ȴ�HL�PdUE�-�"܉����ITi�{K��0CFħX z�����T�Lo�me��9��"݂�H�"��g��$��ɩ�yuQ8��g��ua2��q�Ib8��H\wwH��Ad�\���+���[����қF�{P����C���9�D�I���j	m�B&�{Z5wHiV�hݕ�����ț�� pOU�cmiLu�B����P\�I��lθ�U@�|��s���Ks��(�)�ђ�k�gg�U��O�ck\�wb�9�a�����u��p������0���      m   �   x��ѱn�0��~
+;��ˁӱ��!m�d!)R��H�>~1R��(�������%!L��������*�����l�o&st�B@D�Zi~���u5��f#�����7�	��I�a8��16^^��7H�T�3	��9�E�c~����.��g��'���A���h��M5�ql}�@��6����麪�a#<������r6�A�Ă��yE�!"%+��q�˰Eh��ֿ���^      n   �   x����N�0���S�jl'M�c)+EbR�j�]&Q1.�^x{���@
�D��/�c[HLʔ�n8w}�ax}{��b %$">G���ζ��e�P�8+l�4Y�X�;���5� #_�o��a6�Ő<b�ۧCY߳�&��U�ݵ�O�r�?߻~���x�,f�C���Jn�0�y�}�LT4x������.f�9�9�X�6��d��_ �����@�.6�	��
}����A�mI��^��g�]�������Ϫ      o   �   x���=�0�g��@-����@6�$���ۓ��Zx���{��02��0]��u>߆�t\���� B���Zt��Rg�N��?pǃ�ɛW	"fKBP4W(�tY�i�O���b�E��[ڇec��bo�*DF2D�v�$3V#q)*q��?�$���3(S�%��X���F[�k4m������[�>�0�w'tν ���Q      p     x���=n�0�g��������:w��ҦpR��}�	�n�h���H>R��`7O���:�L����:�Χ��e:}�#��wp�1�E���R1��΄��n̈0J�XiﵴOR:q�}�cY�T�\ ��WJ��
��`R�X�#��e���c��@
5--Gb��!,8=����������x�u�*�=n��3��iqn+�~�>+iߢ#΅N5����G�ĳhQ��My���hmIR-�Aͣ�}�|�e��!�n�17�0Fk      f   2
  x�uZ[����"�)$�������Cc�g�&q�h5-1rI���ٯ^9�?t��$e�WMZ��[�_)�c�K�Q�T��~z��k����A�@e�K�/_-������D$���l� u��:hF�j��.i��	�W�?��ϯ}yJ���*"�=��M)��;������Rm~ZN-!G�����rY�������D�$i�!H���a�=y�$H>����2Q3���:�tGɥz/�&�~�����2S&��+ˌ:Q�ݎ�I!��-M6�������
)�������".�N1�2�$�a�Y#��d��2k1�)�!�G|_�ÝҰ���j+|�N���k��m�
��F�l�N����D��c�
u�&~��*���|^�sC��<��#�;Ez1W3Bef"��X{����K3df?2���Ԧ�R���}�(����HT!��5c��&-F�Ω���A�:
���V���Q��P�1caAy �U�ldVB�@	V���V�S�X;�u`I	+�Wqi����v��X��Sv������9��!O����Kw3�aV��Ќ������nP,�üD�զB7r�5^�s#��Qe�wܧ\	�s#���"e�s�7�vnd�JgUB�
zҪ���)�憒@�r�q�K(���ٯ��}-��j_9ܹ���t�ase1*+ܹQR\=�bs���^j�Y� 5U4����З�d�â�y�uZ���q���丿*>����)����U_��vǢ�[VHg���r�Նc��(.ZtĲ��Y_����P�e�'�HK�Ϻ�����AzX����

z��W����R6 2L��B%��y�]�)�:��vB�7�SF�g�<��Xd݅�Qq��3��zhe�F�)8�@��v��Q���V����ګ����Ӯ
m#���&R�Ck8�i�@F�����K�������7:n���Q�zh#t��dx��ܕ����a������j�F�p�2��-����ê �{6�2d�D6�vnT��lS2� ��zh�����x;x��j�p��zX-��
I�eU��Ik]��}5�w�|z)���94,hB٨�B�e���W}��d���^���1���q�~���z��w^x�k9���Q������L��X������ix�p��Ĵ��F:Oz�r��㔊w��nD�X�z�\7 W6��|�Ca=l΍�gX�M�a=l5LZCA�s�w,!���֢��{�I**���/W鷃;�|;X^!5�#���:2����sH�r�+�:�:�n�b�v�g��̨���^�2B����h�[�To�����TGص�?�a=��6u��GG/�������2g�=q��"=�C��0�O�S&=�-d�`H[o�/o#���� �������������rQ�__�,��#-?�M��c��p���9�Pl��2��phx������i�'=yiZ��oȫk��Q�Mk94�c��e==�Ҟ[/}ܰ��ýh�$'�QZ?� �z8܋�K���FˋQ��p�58X���;�+j��@	&�)�t���H���R��W�d��-� ����XY��}(GbE��kR�\Ĉ�ޢ�0�5��M����N���J8kWъ�q'��0EI�ݥ_/�2yLkx7�-E��/s��1bjq��r�h�y[:戩G�i5�T��T�� 1�5��a�W����tL%��:R��~�7�X"mTQ�)*G#������l���D0b�xG�a���Hg~�H:����𗂐�i%���8sRp�y}�Z�슐XEjt`�@��z�8�݁$td�-a�N]M��"=F�ݢ�rL3�F⽹�t�ڱfo��$����H��0r��u@X$E%f
~yzGq{͝\2X%Eu#-�}\��
P�k2��>�\=	U��˦�9U��(�Q�Ź5����܇'�* #Sw<ޣB�XF0� m���b>��goU�v�t�kthk�,��d�X'uD�賻0z��:��%9!Z_�ne�T�X�}6楦gXAO�$�-n����3?����35��i�����:��z�@�T,2�Ee�I�N1x�%(�W��Z�Kr]W#n��Dۯ��%���$j�����`Ēܟ����@{c���b��d�L����dIk '��[��Y'�<�3��J�WM:7�ɢ���:Ń��X�C'K^�?w�>�z|+�xo�%�$1�|�ILQ]'-��GK��q�:Yj4�A~����&�* s���X}<�~Q�o�}�[�4y�/�*���=M�F�� �
0�hh]A�i����*�dM�z���p����C'M��b��b�p�A���NZ^/>%���tR���N����/c�����`���o�� ߂����NZ]O�%�_�r��:���?k��O,0b���Y-�Ǉ/*O�k�j��{;� ��%���U�Ug��b�@,�TuDÑ�����$�T��	s�O$^~�r�C'1W��)�q����Y'k�N*tҭ�^�o����z���%	�}5b�Kj�&������MW�dm����,��F�_>F�X�?��������ߟ?�zTE�      h   �  x��\Iw�6>�^Nɡ=�J��ݞi�5����[bl&6�GQ�����F�@
`bٯ�>Ԇ�B
����<����f�\V��r�|���	���?O��(B�g�Ɵ�Q��H^���7�)��'>�?"���  � H< ���'�c��K��I�-Q�8�P�ŉX\1�Ց��U=&��$?�v�?n�O����ԃ��ۖ�މN'��q�/�nꗬ��Jp&?<<�X���u�g�oN���d�+��\�9i�ov'𔀛�����T�.x���#��fbB$G��95��� $���4j��)�s|�w̦�bG"rDp�	���o�X�L�ǝ丑�s��#J�ǝ츑]E����=+7 �i�Q:�{��n�+_��Q>+��2�|�g�|�Tٷb��������YUd�Ј8�.���/��Խ�eV�+f�u�s�]�ϯ�"0b���(��:�������B�.��uo��ME��0�݄<[��ύu�/w�b��w�f[滖X1J��u�ڃ�n�g��͍�A��϶�9��X�e8������?w���l�m<����U��yϥ���#{�L����|^e��G�)N�"-�ܹ=�A�T������	u˱,��_�/���0"�D�`L�a˫�[��.Jp��W�:;ik:��V����N2[0|�7��Ի��/Y�;�\b��U�)�b[f��κ�B��a_�݆V�nA���j=O17���2{�d�z��Գ�k]|�mˢ�V�2��]o��"�m_�B���� </Dƚ�� D�D�(қ#H	� ��j H���. R�$v�#�� �"�0�`(L��F��(��$��JJ�P���0�0��e�$�u�&��.N�$О	��)�$e$P���ܽ
23F<7�w�.��(���r��r0+Nupl���@mQ��>G�$�I�8����P��LI����d}��ѢX�͋H��e�ժ��)M}�<��i�𔤥QFI����f�а'Ib�5�v�ٵSO	�atfL�"�9J�$ЪL��f�$aPb�����
L��y���Z,�$Ӽ�e���v G��Q0���yI`5g�ik-���0��EQ(m���@�G��dJ�ŪoTBL��1Kz�A�71
��_뗼�gj@R��|]�U^��/g��|)���_ #�[Q[��d�o��eն��L\�̊��:����B���yr���_���Ө�3K����)�ՙ<Bx���׭(��)74�u�]|��w��}Y�"<k��<,]�g��Vy�!h�!��f�}'F�U�l��dHؖ�4�����a�mǫ���v˼���ywrv�4�$M#^=�,�Hc�#M-���t����K%�Nc|D�p��_�dׁ��k/�����Bfy�������d��^_̾��J�}2F}��W/U�m��*�dAIb2������,��y��u� P)�c��*�3��/�����L���3K��ry��H�I�q���	V��c��Ȧ?B���*��h,ЖR`;�����cW�3y=�;�`�����q$�wz�';Z;��ȡ&�ìJ�(��B�1AP�B�Pa"b,���}!ۣ�>��3����{�fb`"Gaꑧ�������sX��p���F�B�G !�Eʜ0�;#8d\S����G�b�8��	tb�E��tD�!>D>�Q��D�q#�>�Q�Т>�e]dAٕb�F���f6�2e
A8��|�r:�nU�e��,v�هuk��u;� J��c=pA���'��I5�4¯&��gƖ=Igg�:*��[yu��6SM�=ovu0�]���#�˟Z�P�(�G���P7V3_��U[�%J|}��7�5�rw3�D�}o 5����>��2¯i���C�淦�r��|Y�ɤ)�'{��T(1����1Q��+�.?vu�g3�6Ͻd^@vl�����-)��%�#��k���PbԼуH�b��S��!�x�����C��T��{Oʤ%����fa��Na;z}�z&���E��AQ�s;�B���ּTy=�l
����l��<�p�2��e0�'� �+�	b���y%�'��A�����JyK)��/,��a��|�֎XM�����f�׻���y�����Ƕ�A�t��r���"���)������VW��3��xO��8��d)��?����E.���m���#E'���Q���9 2+S��d���}	V�:�N�&�,�3��}����(U�nO�8�&��x<��u������}a2hݡl�{O�<��O��z:�51����5�~L��&�%�!��Qg�fTFu�����k����L�aOH��\TtD��Oq�a�y��ng�� !���-���j���ͳ��kP��� �%pmz,а%o<�u&��7\�)O�go`�˫�^�/��G�)tp���W�s��M�Z��,܍���k�r+C��f?+~��Xe<�}f�f)V����V�Iu�K���Y�D�~'��4����C�����0S�I��ٹ�0F�R1�����nRNP��䐤k�:T
w���$����ѡ ��*I��$�P�F�Ȧ��Ci�^�r$Lɡ4FNQ.��`Vņ��Y�s^��w٣�q��ހo��lv	��]�}7�G�c�p#�@���S	~}��n����Xאַ��I4��I@���������rVg�7_on��ca��'@�!@o�y"D����}? � �7��0qdڢ�~<�&
���o����D ��rnل1�l���G�O*8���	� ���o�gX��(ⴵ��g�)+�:�3� hGHӲ���d���Y���M+�'kXh�U���K��Қ�J�%��Ş���W�V_��쒿xAz��0rK;�g_ �����K�(����]w�)�V_���H�<Z����D���I�.�8{����7pV�c&�I�E2�Q�!�>^�_�]ޝ���z[��� �pd"||�����w O�͇,LD��{S^��	�>7T�m��@��~L�Plh�3�z2���Uq �8f�j�GX�~�T�DC�|�_-��O��N'�Ȭ�㽯�i�6�w)�Ud��ѫ�:�be,�|��$e�t4&��=�G@�t4���{58V`�D}�.�.J{�,:�p��x ����w7d쒐6q���)9W�`;��	�n����]<p��?Z�ڄ���������eП���8�P�NI�
����T�z��k���uf�����^��+�
�
 ����>hm ����(�g9n���� N�J�dg��\m"��yCA�ɖ��P���k�:�s�C�d� �~º"OL��WB{_Ry21�H�*�n�g읨�OXMlN�4�W~��gSS���-���nB���d����Jս�Q�(%�?N?}���c      q   �   x�u��
�0Eg�+��l'��.]
�ڥ�!K[H����4��c8�r���L1�>����zh�Ş�@HD�3�+g�d�k?�,��mG���i9�"��\)�ROU�Wo'j�8׏k�jg�J�\wq����V�W������e��1�u6�.M�j�	�;w�q��M�l����1_��q~      g   �  x��\Iw�6>�^Nɡ=�J��ݞi�5����[bl&6�GQ�����F�@
`bٯ�>Ԇ�B
����<����f�\V��r�|���	���?O��(B�g�Ɵ�Q��H^���7�)��'>�?"���  � H< ���'�c��K��I�-Q�8�P�ŉX\1�Ց��U=&��$?�v�?n�O����ԃ��ۖ�މN'��q�/�nꗬ��Jp&?<<�X���u�g�oN���d�+��\�9i�ov'𔀛�����T�.x���#��fbB$G��95��� $���4j��)�s|�w̦�bG"rDp�	���o�X�L�ǝ丑�s��#J�ǝ츑]E����=+7 �i�Q:�{��n�+_��Q>+��2�|�g�|�Tٷb��������YUd�Ј8�.���/��Խ�eV�+f�u�s�]�ϯ�"0b���(��:�������B�.��uo��ME��0�݄<[��ύu�/w�b��w�f[滖X1J��u�ڃ�n�g��͍�A��϶�9��X�e8������?w���l�m<����U��yϥ���#{�L����|^e��G�)N�"-�ܹ=�A�T������	u˱,��_�/���0"�D�`L�a˫�[��.Jp��W�:;ik:��V����N2[0|�7��Ի��/Y�;�\b��U�)�b[f��κ�B��a_�݆V�nA���j=O17���2{�d�z��Գ�k]|�mˢ�V�2��]o��"�m_�B���� </Dƚ�� D�D�(қ#H	� ��j H���. R�$v�#�� �"�0�`(L��F��(��$��JJ�P���0�0��e�$�u�&��.N�$О	��)�$e$P���ܽ
23F<7�w�.��(���r��r0+Nupl���@mQ��>G�$�I�8����P��LI����d}��ѢX�͋H��e�ժ��)M}�<��i�𔤥QFI����f�а'Ib�5�v�ٵSO	�atfL�"�9J�$ЪL��f�$aPb�����
L��y���Z,�$Ӽ�e���v G��Q0���yI`5g�ik-���0��EQ(m���@�G��dJ�ŪoTBL��1Kz�A�71
��_뗼�gj@R��|]�U^��/g��|)���_ #�[Q[��d�o��eն��L\�̊��:����B���yr���_���Ө�3K����)�ՙ<Bx���׭(��)74�u�]|��w��}Y�"<k��<,]�g��Vy�!h�!��f�}'F�U�l��dHؖ�4�����a�mǫ���v˼���ywrv�4�$M#^=�,�Hc�#M-���t����K%�Nc|D�p��_�dׁ��k/�����Bfy�������d��^_̾��J�}2F}��W/U�m��*�dAIb2������,��y��u� P)�c��*�3��/�����L���3K��ry��H�I�q���	V��c��Ȧ?B���*��h,ЖR`;�����cW�3y=�;�`�����q$�wz�';Z;��ȡ&�ìJ�(��B�1AP�B�Pa"b,���}!ۣ�>��3����{�fb`"Gaꑧ�������sX��p���F�B�G !�Eʜ0�;#8d\S����G�b�8��	tb�E��tD�!>D>�Q��D�q#�>�Q�Т>�e]dAٕb�F���f6�2e
A8��|�r:�nU�e��,v�هuk��u;� J��c=pA���'��I5�4¯&��gƖ=Igg�:*��[yu��6SM�=ovu0�]���#�˟Z�P�(�G���P7V3_��U[�%J|}��7�5�rw3�D�}o 5����>��2¯i���C�淦�r��|Y�ɤ)�'{��T(1����1Q��+�.?vu�g3�6Ͻd^@vl�����-)��%�#��k���PbԼуH�b��S��!�x�����C��T��{Oʤ%����fa��Na;z}�z&���E��AQ�s;�B���ּTy=�l
����l��<�p�2��e0�'� �+�	b���y%�'��A�����JyK)��/,��a��|�֎XM�����f�׻���y�����Ƕ�A�t��r���"���)������VW��3��xO��8��d)��?����E.���m���#E'���Q���9 2+S��d���}	V�:�N�&�,�3��}����(U�nO�8�&��x<��u������}a2hݡl�{O�<��O��z:�51����5�~L��&�%�!��Qg�fTFu�����k����L�aOH��\TtD��Oq�a�y��ng�� !���-���j���ͳ��kP��� �%pmz,а%o<�u&��7\�)O�go`�˫�^�/��G�)tp���W�s��M�Z��,܍���k�r+C��f?+~��Xe<�}f�f)V����V�Iu�K���Y�D�~'��4����C�����0S�I��ٹ�0F�R1�����nRNP��䐤k�:T
w���$����ѡ ��*I��$�P�F�Ȧ��Ci�^�r$Lɡ4FNQ.��`Vņ��Y�s^��w٣�q��ހo��lv	��]�}7�G�c�p#�@���S	~}��n����Xאַ��I4��I@���������rVg�7_on��ca��'@�!@o�y"D����}? � �7��0qdڢ�~<�&
���o����D ��rnل1�l���G�O*8���	� ���o�gX��(ⴵ��g�)+�:�3� hGHӲ���d���Y���M+�'kXh�U���K��Қ�J�%��Ş���W�V_��쒿xAz��0rK;�g_ �����K�(����]w�)�V_���H�<Z����D���I�.�8{����7pV�c&�I�E2�Q�!�>^�_�]ޝ���z[��� �pd"||�����w O�͇,LD��{S^��	�>7T�m��@��~L�Plh�3�z2���Uq �8f�j�GX�~�T�DC�|�_-��O��N'�Ȭ�㽯�i�6�w)�Ud��ѫ�:�be,�|��$e�t4&��=�G@�t4���{58V`�D}�.�.J{�,:�p��x ����w7d쒐6q���)9W�`;��	�n����]<p��?Z�ڄ���������eП���8�P�NI�
����T�z��k���uf�����^��+�
�
 ����>hm ����(�g9n���� N�J�dg��\m"��yCA�ɖ��P���k�:�s�C�d� �~º"OL��WB{_Ry21�H�*�n�g읨�OXMlN�4�W~��gSS���-���nB���d����Jս�Q�(%�?N?}���c      r   �   x���1�0Eg��@-ۉ�d!�NG�������Sma��?�??+k��+h������n����ҁ0�8��9O	���m&��7�il�iXh��BA]m��UF$�%�-���?.��5Ju,��E&�2�I�}As�,�|/'3�͝�9��c>      u   �  x���Mo�0���W����Α�n�����C/��m�݂���k'$��u&E��g�wSL��7�D��c�Gw����N�cv8g����)�1�XG$�zB�{`�8C�������җ7�9�M�!��C1�����Z>^���9|f�STa(�Q?60���d%�0 �ZLg+��>���õ�\���8O�y9��zY
|�,��5&kl!
�9�	�|C� �Ƶ2��Gs����B�H�ʧL����JS�Z#�� �F�p�HTu|�i���8r`��s�tq�Mo/�e0��2��b�k��Fv��hw���5�WTYׁ���\�~mkx2��r��|��:&Mb>Ȑ�_��o�0���c�ʐ�`�]lS:.����j3$ugM8c~�Nh�k�W�	ʰ�	�ͻ��S@F���~��U�3YQ1������M�۶�����^�`0�qR���|6��t�cܚ�-�&��4XH��uIH�﵎��-�S��U�3�2���%$�%���.�k�PU�%�)'@x�,I��= {�ڥ�$5Z�l��h�b��.*�o/��7���uшʭT&T��^��D�j�Ys����ˊ�_�As���tk�3���9�X|������!�^,lg�x�^HB~�t�T�];��+���Oc@�0]{�I��c�^R�N
_E�X�C,�2��/3�FP�Lo����?اg̥
� �Z�wʊ�9��Y������cն@h$�^,z0���(;
Y��eib�%h	�$�zp����L�j����#3pMU�P��֕��~/�0Kc����'�P"��U�8�x�d�H.蹶�Ү��8���U,���י����vl�i��ysp����/1p�p�{�eɝ��-@�q�}u���t����z� �w��!��|���˘Jb�&��d2��FD      s   �  x����n�0Ư�S���\�J��l&���X�m=%X�f-o�ß6d�I�A�/����1�<\1����9l�����ܩsh���Nv���)�)�����g6�z�j�=��۟�P�����QY�A�^<�E^��ùXB?M��Y��$�ks҆�eytU�5z�v��I|�"A2�.dר��2�ļ/��{i�h��0L#<O��N�f@�¹F����ؚ����$㜂9=9�����\Ar�<�c��8	36_����݆|�40Δ�LA&c�b�*�W�Lu" �^pΪ�:h�6�G�/�6H��~��b'��`�_t��N�N����M�R��ޞ��P6�z�3c��)t�AV��O9ۤ�6G�Qt�V�aq�~�RX)N��xS��ϑD�;�G\�]]�O�4[��sOK����E�o|9w�QՕ~3�Wﲂ\
���o����o��T�w3σ�{�=����y      t   �   x�m�;�0���9��W�d���Bb`bEbF�_��R*L���?Bb�@��q>�O0����$��f���F��P`�1
ٞ�ܐ䏩����|\)є�(jB6Pd���%K��e.�A�.uD�do�V���ň���f����k߉�'e4k��_���k���5�1��_c^G     