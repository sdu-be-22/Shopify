PGDMP     2    )                z            backend    14.2    14.2 B    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    28831    backend    DATABASE     h   CREATE DATABASE backend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE backend;
                postgres    false            ?            1259    29310    address    TABLE     P  CREATE TABLE public.address (
    id integer NOT NULL,
    addresss character varying(255),
    city character varying(255),
    district character varying(255),
    phone character varying(255),
    province character varying(255),
    title character varying(255),
    userid character varying(255),
    zip character varying(255)
);
    DROP TABLE public.address;
       public         heap    postgres    false            ?            1259    29309    address_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public          postgres    false    216            `           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;
          public          postgres    false    215            ?            1259    28855    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            ?            1259    28832    my_user    TABLE        CREATE TABLE public.my_user (
    id integer NOT NULL,
    account_non_expired boolean,
    account_non_locked boolean,
    credentials_non_expired boolean,
    email character varying(255),
    enabled boolean,
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.my_user;
       public         heap    postgres    false            ?            1259    29637    oauth_access_token    TABLE     (  CREATE TABLE public.oauth_access_token (
    token_id character varying(256),
    token bytea,
    authentication_id character varying(256) NOT NULL,
    user_name character varying(256),
    client_id character varying(256),
    authentication bytea,
    refresh_token character varying(256)
);
 &   DROP TABLE public.oauth_access_token;
       public         heap    postgres    false            ?            1259    29654    oauth_approvals    TABLE       CREATE TABLE public.oauth_approvals (
    userid character varying(256),
    clientid character varying(256),
    scope character varying(256),
    status character varying(10),
    expiresat timestamp without time zone,
    lastmodifiedat timestamp without time zone
);
 #   DROP TABLE public.oauth_approvals;
       public         heap    postgres    false            ?            1259    29616    oauth_client_details    TABLE     ?  CREATE TABLE public.oauth_client_details (
    client_id character varying(255) NOT NULL,
    client_secret character varying(255) NOT NULL,
    web_server_redirect_uri character varying(2048) DEFAULT NULL::character varying,
    scope character varying(255) DEFAULT NULL::character varying,
    access_token_validity integer,
    refresh_token_validity integer,
    resource_ids character varying(1024) DEFAULT NULL::character varying,
    authorized_grant_types character varying(1024) DEFAULT NULL::character varying,
    authorities character varying(1024) DEFAULT NULL::character varying,
    additional_information character varying(4096) DEFAULT NULL::character varying,
    autoapprove character varying(255) DEFAULT NULL::character varying
);
 (   DROP TABLE public.oauth_client_details;
       public         heap    postgres    false            ?            1259    29630    oauth_client_token    TABLE     ?   CREATE TABLE public.oauth_client_token (
    token_id character varying(256),
    token bytea,
    authentication_id character varying(256) NOT NULL,
    user_name character varying(256),
    client_id character varying(256)
);
 &   DROP TABLE public.oauth_client_token;
       public         heap    postgres    false            ?            1259    29649 
   oauth_code    TABLE     ^   CREATE TABLE public.oauth_code (
    code character varying(256),
    authentication bytea
);
    DROP TABLE public.oauth_code;
       public         heap    postgres    false            ?            1259    29644    oauth_refresh_token    TABLE     |   CREATE TABLE public.oauth_refresh_token (
    token_id character varying(256),
    token bytea,
    authentication bytea
);
 '   DROP TABLE public.oauth_refresh_token;
       public         heap    postgres    false            ?            1259    28839 
   permission    TABLE     ]   CREATE TABLE public.permission (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.permission;
       public         heap    postgres    false            ?            1259    28844    permission_role    TABLE     j   CREATE TABLE public.permission_role (
    role_id integer NOT NULL,
    permission_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         heap    postgres    false            ?            1259    29319    postman    TABLE     ?   CREATE TABLE public.postman (
    id integer NOT NULL,
    orderid character varying(255),
    price character varying(255),
    status character varying(255)
);
    DROP TABLE public.postman;
       public         heap    postgres    false            ?            1259    29318    postman_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.postman_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.postman_id_seq;
       public          postgres    false    218            a           0    0    postman_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.postman_id_seq OWNED BY public.postman.id;
          public          postgres    false    217            ?            1259    29337    product    TABLE     ?   CREATE TABLE public.product (
    product_id bigint NOT NULL,
    product_name character varying(255),
    product_size character varying(255)
);
    DROP TABLE public.product;
       public         heap    postgres    false            ?            1259    29336    product_product_id_seq    SEQUENCE        CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    222            b           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    221            ?            1259    28847    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            ?            1259    28852 	   role_user    TABLE     ^   CREATE TABLE public.role_user (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.role_user;
       public         heap    postgres    false            ?            1259    29328    sales    TABLE     ?   CREATE TABLE public.sales (
    sales_id bigint NOT NULL,
    price character varying(255),
    product_name character varying(255)
);
    DROP TABLE public.sales;
       public         heap    postgres    false            ?            1259    29327    sales_sales_id_seq    SEQUENCE     {   CREATE SEQUENCE public.sales_sales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sales_sales_id_seq;
       public          postgres    false    220            c           0    0    sales_sales_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sales_sales_id_seq OWNED BY public.sales.sales_id;
          public          postgres    false    219            ?           2604    29313 
   address id    DEFAULT     h   ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 9   ALTER TABLE public.address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    29322 
   postman id    DEFAULT     h   ALTER TABLE ONLY public.postman ALTER COLUMN id SET DEFAULT nextval('public.postman_id_seq'::regclass);
 9   ALTER TABLE public.postman ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            ?           2604    29340    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    29331    sales sales_id    DEFAULT     p   ALTER TABLE ONLY public.sales ALTER COLUMN sales_id SET DEFAULT nextval('public.sales_sales_id_seq'::regclass);
 =   ALTER TABLE public.sales ALTER COLUMN sales_id DROP DEFAULT;
       public          postgres    false    219    220    220            M          0    29310    address 
   TABLE DATA           d   COPY public.address (id, addresss, city, district, phone, province, title, userid, zip) FROM stdin;
    public          postgres    false    216   bM       F          0    28832    my_user 
   TABLE DATA           ?   COPY public.my_user (id, account_non_expired, account_non_locked, credentials_non_expired, email, enabled, password, username) FROM stdin;
    public          postgres    false    209   M       V          0    29637    oauth_access_token 
   TABLE DATA           ?   COPY public.oauth_access_token (token_id, token, authentication_id, user_name, client_id, authentication, refresh_token) FROM stdin;
    public          postgres    false    225   PN       Y          0    29654    oauth_approvals 
   TABLE DATA           e   COPY public.oauth_approvals (userid, clientid, scope, status, expiresat, lastmodifiedat) FROM stdin;
    public          postgres    false    228   W       T          0    29616    oauth_client_details 
   TABLE DATA           ?   COPY public.oauth_client_details (client_id, client_secret, web_server_redirect_uri, scope, access_token_validity, refresh_token_validity, resource_ids, authorized_grant_types, authorities, additional_information, autoapprove) FROM stdin;
    public          postgres    false    223   !W       U          0    29630    oauth_client_token 
   TABLE DATA           f   COPY public.oauth_client_token (token_id, token, authentication_id, user_name, client_id) FROM stdin;
    public          postgres    false    224   ?W       X          0    29649 
   oauth_code 
   TABLE DATA           :   COPY public.oauth_code (code, authentication) FROM stdin;
    public          postgres    false    227   X       W          0    29644    oauth_refresh_token 
   TABLE DATA           N   COPY public.oauth_refresh_token (token_id, token, authentication) FROM stdin;
    public          postgres    false    226   +X       G          0    28839 
   permission 
   TABLE DATA           .   COPY public.permission (id, name) FROM stdin;
    public          postgres    false    210   ?_       H          0    28844    permission_role 
   TABLE DATA           A   COPY public.permission_role (role_id, permission_id) FROM stdin;
    public          postgres    false    211   !`       O          0    29319    postman 
   TABLE DATA           =   COPY public.postman (id, orderid, price, status) FROM stdin;
    public          postgres    false    218   P`       S          0    29337    product 
   TABLE DATA           I   COPY public.product (product_id, product_name, product_size) FROM stdin;
    public          postgres    false    222   m`       I          0    28847    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    212   ?`       J          0    28852 	   role_user 
   TABLE DATA           5   COPY public.role_user (user_id, role_id) FROM stdin;
    public          postgres    false    213   ?`       Q          0    29328    sales 
   TABLE DATA           >   COPY public.sales (sales_id, price, product_name) FROM stdin;
    public          postgres    false    220   ?`       d           0    0    address_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.address_id_seq', 1, false);
          public          postgres    false    215            e           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    214            f           0    0    postman_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.postman_id_seq', 1, false);
          public          postgres    false    217            g           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);
          public          postgres    false    221            h           0    0    sales_sales_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sales_sales_id_seq', 1, false);
          public          postgres    false    219            ?           2606    29317    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    216            ?           2606    28838    my_user my_user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.my_user
    ADD CONSTRAINT my_user_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.my_user DROP CONSTRAINT my_user_pkey;
       public            postgres    false    209            ?           2606    29643 *   oauth_access_token oauth_access_token_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.oauth_access_token
    ADD CONSTRAINT oauth_access_token_pkey PRIMARY KEY (authentication_id);
 T   ALTER TABLE ONLY public.oauth_access_token DROP CONSTRAINT oauth_access_token_pkey;
       public            postgres    false    225            ?           2606    29629 .   oauth_client_details oauth_client_details_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.oauth_client_details
    ADD CONSTRAINT oauth_client_details_pkey PRIMARY KEY (client_id);
 X   ALTER TABLE ONLY public.oauth_client_details DROP CONSTRAINT oauth_client_details_pkey;
       public            postgres    false    223            ?           2606    29636 *   oauth_client_token oauth_client_token_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.oauth_client_token
    ADD CONSTRAINT oauth_client_token_pkey PRIMARY KEY (authentication_id);
 T   ALTER TABLE ONLY public.oauth_client_token DROP CONSTRAINT oauth_client_token_pkey;
       public            postgres    false    224            ?           2606    28843    permission permission_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.permission DROP CONSTRAINT permission_pkey;
       public            postgres    false    210            ?           2606    29326    postman postman_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.postman
    ADD CONSTRAINT postman_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.postman DROP CONSTRAINT postman_pkey;
       public            postgres    false    218            ?           2606    29344    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    222            ?           2606    28851    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    212            ?           2606    29335    sales sales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sales_id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    220            ?           2606    28856 +   permission_role fk3tuvkbyi6wcytyg21hvpd6txw    FK CONSTRAINT     ?   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT fk3tuvkbyi6wcytyg21hvpd6txw FOREIGN KEY (permission_id) REFERENCES public.permission(id);
 U   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT fk3tuvkbyi6wcytyg21hvpd6txw;
       public          postgres    false    3238    210    211            ?           2606    28871 %   role_user fk4yttrcxvexhqdktwpdbdofu2g    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT fk4yttrcxvexhqdktwpdbdofu2g FOREIGN KEY (user_id) REFERENCES public.my_user(id);
 O   ALTER TABLE ONLY public.role_user DROP CONSTRAINT fk4yttrcxvexhqdktwpdbdofu2g;
       public          postgres    false    209    213    3236            ?           2606    28861 +   permission_role fk50sfdcvbvdaclpn7wp4uop4ml    FK CONSTRAINT     ?   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT fk50sfdcvbvdaclpn7wp4uop4ml FOREIGN KEY (role_id) REFERENCES public.role(id);
 U   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT fk50sfdcvbvdaclpn7wp4uop4ml;
       public          postgres    false    212    211    3240            ?           2606    28866 %   role_user fkiqpmjd2qb4rdkej916ymonic6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT fkiqpmjd2qb4rdkej916ymonic6 FOREIGN KEY (role_id) REFERENCES public.role(id);
 O   ALTER TABLE ONLY public.role_user DROP CONSTRAINT fkiqpmjd2qb4rdkej916ymonic6;
       public          postgres    false    212    213    3240            M      x?????? ? ?      F   ?   x??͹?@???yj?;,j??#???Fbsddp???Q++s??8???????f??Wd?r?yե??C	??<1pwXΧ?w
q?̹Sf?"]???Wc\?'?FL?o???%??@???j? h:?%?Jg???6???#!?Q?B???nWƉ??P?|_s?Z????D???
?????H?V&?< Pwe      V   ?  x??Yێ?8}N>f?u???Ⱥ ?̾???!%?v???3??[A?LQ??PՌ#??6??l??P?'?l1??`?????\ZUJ?`?Q?????`?+<%?|?X??W?B????????&PH???5?????8aGſ?4"P{~?K ??(I??p?u??M?ͤf=?dS??R?yց?TH??^???"[?)?M ??T|?N7]NM??)?1O?q~
<?u?VOv?й??`?+A=??e	?U?;V?V????U?َ??SB^e?*?aǞ???-<?8Ȳ???????X7g!??m???;??Z??d?Ѧ??Ӗ?c\?Xb?????	I??\B|Pt.????cD??=??9}?Zi???Iٵ;???JG?S7ͦ??????????#~6?v
ަZUI[k?ѽ???kF?;??ilӪAjԃJ??4yO?KC?p%??zO6yk'V?wS-ـU?	?k?[??=,???????%?????G?q????Ux??????F?E?k2UǞ???[??甯8??^'??r?Z?lk?T?ߓ
x??n???2?+?3Q?{???_?/5??\?&OI??Z?????2?????,]????B????1R??h????sߓY?+?KtH??i8???hR_?=??"??O?F?????2L?1???F?e??!?MW?j?\???c%?Pj,?r?돿????????M??_?????b=a?K?O?????d?0ɦ????A±???P]?#q?-?˝?;c???? ?Cw<??I??????9ͧ??ʙ????h??G_???Q??ђۯ?9?q?9??o????K?2{??y????m??CFP????? ~E?f???	???˃ǨIjV%??WTRT1?????gA?S?$?i^??I???V??nG??moeA?v?C???.?,?S???)	7??>???h=?f>?{n????oQ?cF?J~m????-(c/????<>?~wL?2z	?gu?[*S??E*?F??tn?2?i???R?i?ޥd?al? ??6???????1b???>?꭮-?
R?????:?????i ?=?><An??	Ɩ?sC???6j?uN?޲??x???8??C??1G?k?/b?cb-D?>'.??2j???0V? A?FG???mːŧ???%rG??HT???|??XoqrJ?ߐS?<??????j"H??f?ݗ?#??.?]?Á?R??!驺?Dԃ????.??@?????J?R??,????????]?????vMUju??ų_u?t??x??|K4#????prT'?;???9?S??????f{?I??wJ??v?\?w(?ɏ?ף??_?? ??T+??g?d???vo?ҽ?ݏa???;&1????qvZP???7x?V?ĔМ?M?g{?1u<o??+n???U[?z:*?Q	?q?????B!j?h?9??m?8?????!??W?">?E????fQ?n`???	?(??Q??-dӎ??Qz]֦??^S??Ҳ??
???ٿ??fT?s??o??'ά!??ـ0?cM?6pTb??????K???N??<?3?????`??????3??????T܉?Љ?f_f?+???S?}2????h=??c7?ru???ηg??9G??C}?t???@???!b??oW??Ġa5??w?7??o??2?Z?O?l????Þ(?{?S?:?:8?݌p??j{FBwHDeQ??20?͘^Uq???ueN??tL?NO?@C?NS?DZ\WCo.?{??3?{?j?lLq??6Wć-w]?<?2?l_???;?[?nx!(Ё]?y??????I6p?b??(J??L$z  ;??pt???I? 7?kə9{po??mLr????<ϩhVM??i???k????c??nV?)?????p??4sF0'?3??_?Xw?͖???cҾ?q?2?P??3?0?j??G+?W??EKf?M?????#J^??]?	^???!j??8?wR?_+?S????????sINW?%j*n?oZ?zd?Uk??????]=??6????5?]????A??г??~???ŀN?S??U??<??sT?]3G?c՞??d???????	R}??>iJwq????X?~^s??oe??>??O???2ܜ??BO?#m??3Z??'???4m?????q??w(l?ߡ\??x?+??s??2?-???֋~wܮ?qD?????&???\Z??Z?6e??p??T???????????      Y      x?????? ? ?      T   ?   x??Mk?@????w?̤J	?I??T? ?f?N?8????????=<???9??W/??E??_s?֟?>b???m?ef??.*??????t˟?<˷??n?u}+??y?X+g9ʸ?s͝?ES???b?l`??>??t?h?uˁnJ????+?*?_]?>?h??s̨??4	l?p<M6?$I? ?C?      U      x?????? ? ?      X      x?????? ? ?      W   ?  x??YW??8??>??????g??o?(????T?ԋ??A?DR??ɣ??k?ޚ֫?)S??l!j????xהR.?`???G0>??{??????ͻ?}???y?
?t???=?h?,?~?wӉ ?????ȅ?-?4h?t?%?????t3ڠ?mjM?T???JS????ihI?g ?f2?ag3d???????-X?^ӿ????k???u?????????5웹??+??f3??]??O??!k`???zO6q5xmߛf?<%<36A????????m?X???f?????;?????>G??C?tR+??T?k???Q,)??P???2"??&??\?p\I??{VPi\QF{?|!X췑\4X5k?y?\-y??c?????'???????b?x[G??h?ʕ?? ??wb????vF?????=????#?ڛ0?^c}d??i??lb???2R?Ӭ˜?w?C?%?e??FHH?{??0.T?س?$???\Z??m???蘽???/????îIw?K0??qe!?,?][0?XQ\??tA!?K?C|]2G?M???u"菪???/?`z?l?`?D
??d?F?G:l1?ftK??SӔD??̚:???h_O3ߨ?????Z???????Q	????|?V??co?dda>OTv8T?,?2?X"?o"?#?{??2?i???K?)D?L?3?<}Qo??~>H?-]???ߙ>w?V??-?
?H:???????#????2?m?ӽ?j?S?3N??????{??a??gd???9O?????=?:????c?O?c}??Qc-T???%??Nl??/?
#?~??cne?3l???9???_+W???|˓????)?????ſ?X?,b߯?O???f?c????:?|????????ݣ?1N?
?Z????zմ ?!/?R????%8w???]??o?Ef?????ߪ=??K?qtT?????oV
????!>+????Ɵ?????0?L?q??souAȴ???R?E?iE|?m??$K?5?הV?>??\_2???/?K??D=??M.f???ɑ?U???g????&%?>$??۝s}]??&??_??'y???yA+??'v2??k?7U????׸??胓?5???8?-???@'Ri{?LL?̖?ԫ???:?????ێ?cc??W'2?Hνl???XsQwU?́v??q2?c?T "L_???n-????-?????H?+??ԁ?????gM?(??n?V?́)nqiyz?
]?7??8?.?U?:S/$0?{????l@?R???R?<*qD?53???2!y???(>ͳ?z???`gE?=??{Zq?s?7????aÏy??s*??yʲ???b?A????u?ܵ????^?k?ۉ?W?9G???P?"?????k?`n???O;?K??P8hX???]?B????.Њ?rdY@?3????xvj?0??????/Si?P???g4!|?E`Th???3ݪ鍊?????+?pY?fb?????
<tj??yJ\L?q5??Buy?L##?Tec?{ĵ?3>,y???3,???^??f??Ճ.&?k1???>?F+?!????_˩??COd??®??g27ȭӵ??:{?l??>Or\?¥?\?S?BMF?t??Ե?5?ϱ?Q??u?1???F??|?a?uF0???W?9?{s$???<i???	w.?S??????ۣ?ܫ?JÖ%3?M??wГW???????LV(?5hE\?;??????ԣ>???F*4?\??M?D]Ųq??@?l?Xs<?]@{^?=?ɾpc???~f?`??????0??F?????-Lʑr3?YM?S??Vk?
{E?u???R????F"a?/??O驎^VP????{?'?G???O????7???mx?Յ??@? ?W???L???i?]?}?I?D?????m???s?;?<4?Nt?&w???ߓ?{o??r?G?????~???????      G   3   x?3?L.JM,I?/(?O??I?2??S?\c?҂dyΔԜT$?=... Y      H      x?3?4?2?4bc 6?2????=... 4Zr      O      x?????? ? ?      S      x?????? ? ?      I   #   x?3???q?OL????2?pRS2K???b???? ?*?      J      x?3?4?2bcN#?=... /      Q      x?????? ? ?     