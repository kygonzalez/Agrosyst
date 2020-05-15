PGDMP                         x            base_server    11.7    11.7 �   d           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            e           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            f           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            g           1262    49374    base_server    DATABASE     �   CREATE DATABASE base_server WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE base_server;
             postgres    false            �            1259    49422    act_con    TABLE     j   CREATE TABLE public.act_con (
    cod_con integer NOT NULL,
    ide_ter character varying(15) NOT NULL
);
    DROP TABLE public.act_con;
       public         postgres    false            �            1259    49425    act_cul    TABLE     j   CREATE TABLE public.act_cul (
    cod_cul integer NOT NULL,
    ide_ter character varying(15) NOT NULL
);
    DROP TABLE public.act_cul;
       public         postgres    false            �            1259    49428    afeccion    TABLE     M  CREATE TABLE public.afeccion (
    cod_afe character varying(6) NOT NULL,
    nom_afe character varying(30) NOT NULL,
    noc_afe character varying(50) NOT NULL,
    epo_afe character varying(10) NOT NULL,
    prv_afe character varying(500),
    eat_afe character varying(500) NOT NULL,
    hat_afe character varying(15) NOT NULL
);
    DROP TABLE public.afeccion;
       public         postgres    false            �            1259    49434    agroquimicos    TABLE     4  CREATE TABLE public.agroquimicos (
    cod_agr character varying(6) NOT NULL,
    cod_ins integer NOT NULL,
    nom_agr character varying(50) NOT NULL,
    rap_agr character varying(200) NOT NULL,
    pcr_agr character varying(10) NOT NULL,
    pen_agr character varying(10) NOT NULL,
    pro_agr character varying(10) NOT NULL,
    cod_tag character varying(6) NOT NULL,
    cod_tox character varying(6) NOT NULL,
    dos_agr character varying(20),
    cod_for character varying(2),
    cod_iac character varying(6),
    fun_agr character varying(15) NOT NULL
);
     DROP TABLE public.agroquimicos;
       public         postgres    false            �            1259    49437    cliente    TABLE     j   CREATE TABLE public.cliente (
    ide_ter character varying(15) NOT NULL,
    cod_cli integer NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    49440    cliente_cod_cli_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_cod_cli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cliente_cod_cli_seq;
       public       postgres    false    200            h           0    0    cliente_cod_cli_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cliente_cod_cli_seq OWNED BY public.cliente.cod_cli;
            public       postgres    false    201            �            1259    49442    comentarios_pfi    TABLE     �   CREATE TABLE public.comentarios_pfi (
    cod_pfi character varying(6),
    com_pfi character varying(300),
    fec_com date
);
 #   DROP TABLE public.comentarios_pfi;
       public         postgres    false            �            1259    49445    comprar    TABLE     j   CREATE TABLE public.comprar (
    cod_com integer NOT NULL,
    ide_ter character varying(15) NOT NULL
);
    DROP TABLE public.comprar;
       public         postgres    false            �            1259    49448    compras    TABLE     n   CREATE TABLE public.compras (
    cod_com integer NOT NULL,
    fec_com date NOT NULL,
    tot_com integer
);
    DROP TABLE public.compras;
       public         postgres    false            �            1259    49451    compras_cod_com_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_cod_com_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.compras_cod_com_seq;
       public       postgres    false    204            i           0    0    compras_cod_com_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.compras_cod_com_seq OWNED BY public.compras.cod_com;
            public       postgres    false    205            �            1259    49453    comun    TABLE     Q   CREATE TABLE public.comun (
    cod_cun integer NOT NULL,
    cod_tar integer
);
    DROP TABLE public.comun;
       public         postgres    false            �            1259    49456    comun_cod_cun_seq    SEQUENCE     �   CREATE SEQUENCE public.comun_cod_cun_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.comun_cod_cun_seq;
       public       postgres    false    206            j           0    0    comun_cod_cun_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.comun_cod_cun_seq OWNED BY public.comun.cod_cun;
            public       postgres    false    207            �            1259    49458 	   contratos    TABLE     �   CREATE TABLE public.contratos (
    cod_cot integer NOT NULL,
    val_cot integer,
    des_cot character varying(45),
    cod_con integer,
    ffi_con date
);
    DROP TABLE public.contratos;
       public         postgres    false            �            1259    49461    contratos_cod_cot_seq    SEQUENCE     �   CREATE SEQUENCE public.contratos_cod_cot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.contratos_cod_cot_seq;
       public       postgres    false    208            k           0    0    contratos_cod_cot_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.contratos_cod_cot_seq OWNED BY public.contratos.cod_cot;
            public       postgres    false    209            �            1259    49463    convenio    TABLE     Z   CREATE TABLE public.convenio (
    cod_con integer NOT NULL,
    fec_con date NOT NULL
);
    DROP TABLE public.convenio;
       public         postgres    false            �            1259    49466    convenio_cod_con_seq    SEQUENCE     �   CREATE SEQUENCE public.convenio_cod_con_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.convenio_cod_con_seq;
       public       postgres    false    210            l           0    0    convenio_cod_con_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.convenio_cod_con_seq OWNED BY public.convenio.cod_con;
            public       postgres    false    211            �            1259    49468    cultivos    TABLE     s  CREATE TABLE public.cultivos (
    cod_cul integer NOT NULL,
    fin_cul date NOT NULL,
    fif_cul date,
    npl_cul integer,
    tip_cul character varying(11) NOT NULL,
    dur_cul character varying(25) NOT NULL,
    est_cul character varying(45) NOT NULL,
    cod_ncu integer,
    cod_lot integer,
    dia_cul character varying(6),
    mod_cul character varying(5)
);
    DROP TABLE public.cultivos;
       public         postgres    false            �            1259    49471    cultivos_cod_cul_seq    SEQUENCE     �   CREATE SEQUENCE public.cultivos_cod_cul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cultivos_cod_cul_seq;
       public       postgres    false    212            m           0    0    cultivos_cod_cul_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cultivos_cod_cul_seq OWNED BY public.cultivos.cod_cul;
            public       postgres    false    213            �            1259    49473    cultural    TABLE     T   CREATE TABLE public.cultural (
    cod_cut integer NOT NULL,
    cod_tar integer
);
    DROP TABLE public.cultural;
       public         postgres    false            �            1259    49476    cultural_cod_cut_seq    SEQUENCE     �   CREATE SEQUENCE public.cultural_cod_cut_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cultural_cod_cut_seq;
       public       postgres    false    214            n           0    0    cultural_cod_cut_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cultural_cod_cut_seq OWNED BY public.cultural.cod_cut;
            public       postgres    false    215            �            1259    49478    departamento    TABLE     |   CREATE TABLE public.departamento (
    cod_dep character varying(2) NOT NULL,
    nom_dep character varying(60) NOT NULL
);
     DROP TABLE public.departamento;
       public         postgres    false            �            1259    49481    desarrollar    TABLE     N   CREATE TABLE public.desarrollar (
    cod_tar integer,
    cod_lab integer
);
    DROP TABLE public.desarrollar;
       public         postgres    false            �            1259    49484    duenio    TABLE     `   CREATE TABLE public.duenio (
    cod_due integer NOT NULL,
    ide_ter character varying(15)
);
    DROP TABLE public.duenio;
       public         postgres    false            �            1259    49487    dueño_cod_due_seq    SEQUENCE     �   CREATE SEQUENCE public."dueño_cod_due_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."dueño_cod_due_seq";
       public       postgres    false    218            o           0    0    dueño_cod_due_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."dueño_cod_due_seq" OWNED BY public.duenio.cod_due;
            public       postgres    false    219            �            1259    49489    efectuar    TABLE     K   CREATE TABLE public.efectuar (
    cod_con integer,
    cod_tar integer
);
    DROP TABLE public.efectuar;
       public         postgres    false            �            1259    49492    ejecutar    TABLE     ]   CREATE TABLE public.ejecutar (
    cod_con integer NOT NULL,
    cod_cul integer NOT NULL
);
    DROP TABLE public.ejecutar;
       public         postgres    false            �            1259    49495    email_tercero    TABLE        CREATE TABLE public.email_tercero (
    ide_ter character varying(15) NOT NULL,
    ema_ter character varying(100) NOT NULL
);
 !   DROP TABLE public.email_tercero;
       public         postgres    false            �            1259    49498    enfermedades    TABLE     �   CREATE TABLE public.enfermedades (
    cod_afe character varying(6) NOT NULL,
    cod_enf character varying(6) NOT NULL,
    pat_enf character varying(50) NOT NULL
);
     DROP TABLE public.enfermedades;
       public         postgres    false            �            1259    49501 	   eta_x_afe    TABLE     �   CREATE TABLE public.eta_x_afe (
    cod_afe character varying(6) NOT NULL,
    cod_eta character varying(6) NOT NULL,
    ima_eta character varying(100),
    cod_agr character varying(6) NOT NULL
);
    DROP TABLE public.eta_x_afe;
       public         postgres    false            p           0    0    COLUMN eta_x_afe.ima_eta    COMMENT     H   COMMENT ON COLUMN public.eta_x_afe.ima_eta IS 'URL imagen de la etapa';
            public       postgres    false    224            �            1259    49504    etapas_crecimiento    TABLE     �   CREATE TABLE public.etapas_crecimiento (
    cod_eta character varying(6) NOT NULL,
    det_eta character varying(50) NOT NULL
);
 &   DROP TABLE public.etapas_crecimiento;
       public         postgres    false            �            1259    49507    fertilizantes    TABLE     |   CREATE TABLE public.fertilizantes (
    cod_fer integer NOT NULL,
    cod_ins integer,
    det_fer character varying(50)
);
 !   DROP TABLE public.fertilizantes;
       public         postgres    false            �            1259    49510    fincas    TABLE     {  CREATE TABLE public.fincas (
    cod_fin character varying(20) NOT NULL,
    nom_fin character varying(45) NOT NULL,
    det_fin text,
    cod_dep character varying(2),
    cod_mun character varying(3),
    ide_ter character varying(15),
    cod_unm integer,
    med_fin character varying(5) NOT NULL,
    cnt_fin integer NOT NULL,
    fot_fin character varying(300) NOT NULL
);
    DROP TABLE public.fincas;
       public         postgres    false            �            1259    49516    fincas_cnt_fin_seq    SEQUENCE     �   CREATE SEQUENCE public.fincas_cnt_fin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fincas_cnt_fin_seq;
       public       postgres    false    227            q           0    0    fincas_cnt_fin_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.fincas_cnt_fin_seq OWNED BY public.fincas.cnt_fin;
            public       postgres    false    228            �            1259    49518    fitosanitaria    TABLE     �   CREATE TABLE public.fitosanitaria (
    cod_fit integer NOT NULL,
    cod_tar integer,
    cal_fit character varying(10),
    cod_pla character varying(6)
);
 !   DROP TABLE public.fitosanitaria;
       public         postgres    false            r           0    0    COLUMN fitosanitaria.cal_fit    COMMENT     O   COMMENT ON COLUMN public.fitosanitaria.cal_fit IS 'Calificación de la tarea';
            public       postgres    false    229            �            1259    49521    fitosanitaria_cod_fit_seq    SEQUENCE     �   CREATE SEQUENCE public.fitosanitaria_cod_fit_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.fitosanitaria_cod_fit_seq;
       public       postgres    false    229            s           0    0    fitosanitaria_cod_fit_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.fitosanitaria_cod_fit_seq OWNED BY public.fitosanitaria.cod_fit;
            public       postgres    false    230            �            1259    49523    formulacion    TABLE     �   CREATE TABLE public.formulacion (
    cod_for character varying(2) NOT NULL,
    nom_for character varying(25) NOT NULL,
    sig_for character varying(2) NOT NULL,
    des_for character varying(100) NOT NULL
);
    DROP TABLE public.formulacion;
       public         postgres    false            �            1259    49526    gozar    TABLE     �   CREATE TABLE public.gozar (
    cod_tpr integer NOT NULL,
    cod_pro integer NOT NULL,
    fec_goz date NOT NULL,
    ctp_goz integer,
    pre_goz integer,
    cpt_goz character varying
);
    DROP TABLE public.gozar;
       public         postgres    false            �            1259    49532    incidencia_afe    TABLE     ~   CREATE TABLE public.incidencia_afe (
    cod_afe character varying(6) NOT NULL,
    det_inc character varying(10) NOT NULL
);
 "   DROP TABLE public.incidencia_afe;
       public         postgres    false            �            1259    49535    ingredientes_activos    TABLE     �   CREATE TABLE public.ingredientes_activos (
    cod_iac character varying(6) NOT NULL,
    des_iac character varying(50) NOT NULL,
    pro_iac character varying(3) NOT NULL
);
 (   DROP TABLE public.ingredientes_activos;
       public         postgres    false            �            1259    49538    insumos    TABLE        CREATE TABLE public.insumos (
    cod_ins integer NOT NULL,
    des_ins character varying(45) NOT NULL,
    cod_unm integer
);
    DROP TABLE public.insumos;
       public         postgres    false            �            1259    49541    insumos_cod_ins_seq    SEQUENCE     �   CREATE SEQUENCE public.insumos_cod_ins_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.insumos_cod_ins_seq;
       public       postgres    false    235            t           0    0    insumos_cod_ins_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.insumos_cod_ins_seq OWNED BY public.insumos.cod_ins;
            public       postgres    false    236            �            1259    49543    jornales    TABLE     ~   CREATE TABLE public.jornales (
    cod_jor integer NOT NULL,
    hor_jor integer,
    vho_jor integer,
    cod_con integer
);
    DROP TABLE public.jornales;
       public         postgres    false            �            1259    49546    jornales_cod_jor_seq    SEQUENCE     �   CREATE SEQUENCE public.jornales_cod_jor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.jornales_cod_jor_seq;
       public       postgres    false    237            u           0    0    jornales_cod_jor_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.jornales_cod_jor_seq OWNED BY public.jornales.cod_jor;
            public       postgres    false    238            �            1259    49548    labores    TABLE     �   CREATE TABLE public.labores (
    cod_lab integer NOT NULL,
    nom_lab character varying(45) NOT NULL,
    det_lab character varying(300)
);
    DROP TABLE public.labores;
       public         postgres    false            �            1259    49551    labores_cod_lab_seq    SEQUENCE     �   CREATE SEQUENCE public.labores_cod_lab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.labores_cod_lab_seq;
       public       postgres    false    239            v           0    0    labores_cod_lab_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.labores_cod_lab_seq OWNED BY public.labores.cod_lab;
            public       postgres    false    240            �            1259    49553    lotes    TABLE     �   CREATE TABLE public.lotes (
    cod_lot integer NOT NULL,
    nom_lot character varying(45) NOT NULL,
    cod_fin character varying(20),
    cod_unm integer,
    med_lot character varying(5) NOT NULL
);
    DROP TABLE public.lotes;
       public         postgres    false            �            1259    49556    lotes_cod_lot_seq    SEQUENCE     �   CREATE SEQUENCE public.lotes_cod_lot_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.lotes_cod_lot_seq;
       public       postgres    false    241            w           0    0    lotes_cod_lot_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.lotes_cod_lot_seq OWNED BY public.lotes.cod_lot;
            public       postgres    false    242            �            1259    49558 	   municipio    TABLE     �   CREATE TABLE public.municipio (
    cod_mun character varying(4) NOT NULL,
    nom_mun character varying(45) NOT NULL,
    cod_dep character varying(2)
);
    DROP TABLE public.municipio;
       public         postgres    false            �            1259    49561    nombre_cultivo    TABLE     q   CREATE TABLE public.nombre_cultivo (
    cod_ncu integer NOT NULL,
    des_ncu character varying(45) NOT NULL
);
 "   DROP TABLE public.nombre_cultivo;
       public         postgres    false            �            1259    49564    nombre_cultivo_cod_ncu_seq    SEQUENCE     �   CREATE SEQUENCE public.nombre_cultivo_cod_ncu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.nombre_cultivo_cod_ncu_seq;
       public       postgres    false    244            x           0    0    nombre_cultivo_cod_ncu_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.nombre_cultivo_cod_ncu_seq OWNED BY public.nombre_cultivo.cod_ncu;
            public       postgres    false    245            �            1259    49566    otros    TABLE     t   CREATE TABLE public.otros (
    cod_otr integer NOT NULL,
    cod_ins integer,
    det_otr character varying(50)
);
    DROP TABLE public.otros;
       public         postgres    false            �            1259    49569    otros_cod_otr_seq    SEQUENCE     �   CREATE SEQUENCE public.otros_cod_otr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.otros_cod_otr_seq;
       public       postgres    false    246            y           0    0    otros_cod_otr_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.otros_cod_otr_seq OWNED BY public.otros.cod_otr;
            public       postgres    false    247            �            1259    49571    partes_planta_afe    TABLE     �   CREATE TABLE public.partes_planta_afe (
    cod_afe character varying(6) NOT NULL,
    det_par character varying(15) NOT NULL
);
 %   DROP TABLE public.partes_planta_afe;
       public         postgres    false            �            1259    49574    plagas    TABLE     �   CREATE TABLE public.plagas (
    cod_afe character varying(6) NOT NULL,
    cod_plg character varying(6) NOT NULL,
    tip_plg character varying(50) NOT NULL
);
    DROP TABLE public.plagas;
       public         postgres    false            �            1259    49577    planificacion    TABLE     +  CREATE TABLE public.planificacion (
    cod_pla character varying(6) NOT NULL,
    det_pla character varying(50) NOT NULL,
    fec_pla date,
    epo_pla character varying(20) NOT NULL,
    cod_ppl character varying(6),
    cod_pfi character varying(6) NOT NULL,
    agr_pla character varying(50)
);
 !   DROP TABLE public.planificacion;
       public         postgres    false            �            1259    49580    pre_sto    TABLE     �   CREATE TABLE public.pre_sto (
    fec_cin character varying(30) NOT NULL,
    cod_sto integer NOT NULL,
    pre_sto integer,
    cod_pre integer NOT NULL
);
    DROP TABLE public.pre_sto;
       public         postgres    false            �            1259    49583    pre_sto_cod_pre_seq    SEQUENCE     �   CREATE SEQUENCE public.pre_sto_cod_pre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pre_sto_cod_pre_seq;
       public       postgres    false    251            z           0    0    pre_sto_cod_pre_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pre_sto_cod_pre_seq OWNED BY public.pre_sto.cod_pre;
            public       postgres    false    252            �            1259    49585    procesos_fitosanitarios    TABLE     �   CREATE TABLE public.procesos_fitosanitarios (
    cod_pfi character varying(6) NOT NULL,
    fin_pfi date NOT NULL,
    ffi_pfi date,
    cod_afe character varying(6),
    tip_pfi character varying(15) NOT NULL
);
 +   DROP TABLE public.procesos_fitosanitarios;
       public         postgres    false            �            1259    49588 
   produccion    TABLE     y   CREATE TABLE public.produccion (
    cod_pro integer NOT NULL,
    cod_cul integer,
    ide_ter character varying(15)
);
    DROP TABLE public.produccion;
       public         postgres    false            �            1259    49591    produccion_cod_pro_seq    SEQUENCE     �   CREATE SEQUENCE public.produccion_cod_pro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produccion_cod_pro_seq;
       public       postgres    false    254            {           0    0    produccion_cod_pro_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produccion_cod_pro_seq OWNED BY public.produccion.cod_pro;
            public       postgres    false    255                        1259    49593 	   proveedor    TABLE     c   CREATE TABLE public.proveedor (
    cod_pro integer NOT NULL,
    ide_ter character varying(15)
);
    DROP TABLE public.proveedor;
       public         postgres    false                       1259    49596    proveedor_cod_pro_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedor_cod_pro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.proveedor_cod_pro_seq;
       public       postgres    false    256            |           0    0    proveedor_cod_pro_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.proveedor_cod_pro_seq OWNED BY public.proveedor.cod_pro;
            public       postgres    false    257                       1259    49598    recomendaciones_uso_agr    TABLE     �   CREATE TABLE public.recomendaciones_uso_agr (
    cod_agr character varying(6) NOT NULL,
    det_rus character varying(200) NOT NULL
);
 +   DROP TABLE public.recomendaciones_uso_agr;
       public         postgres    false                       1259    49601 	   registrar    TABLE     ^   CREATE TABLE public.registrar (
    cod_com integer NOT NULL,
    cod_sto integer NOT NULL
);
    DROP TABLE public.registrar;
       public         postgres    false                       1259    49604    semillas_cod_sem_seq    SEQUENCE     �   CREATE SEQUENCE public.semillas_cod_sem_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.semillas_cod_sem_seq;
       public       postgres    false    226            }           0    0    semillas_cod_sem_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.semillas_cod_sem_seq OWNED BY public.fertilizantes.cod_fer;
            public       postgres    false    260                       1259    49606 	   semillero    TABLE     �   CREATE TABLE public.semillero (
    cod_smr integer NOT NULL,
    cod_ins integer,
    cod_tso integer,
    det_smr character varying(50)
);
    DROP TABLE public.semillero;
       public         postgres    false                       1259    49609    semillero_cod_smr_seq    SEQUENCE     �   CREATE SEQUENCE public.semillero_cod_smr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.semillero_cod_smr_seq;
       public       postgres    false    261            ~           0    0    semillero_cod_smr_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.semillero_cod_smr_seq OWNED BY public.semillero.cod_smr;
            public       postgres    false    262                       1259    49611 	   sin_x_afe    TABLE     x   CREATE TABLE public.sin_x_afe (
    cod_afe character varying(6) NOT NULL,
    cod_sin character varying(6) NOT NULL
);
    DROP TABLE public.sin_x_afe;
       public         postgres    false                       1259    49614    sintomas_afe    TABLE     }   CREATE TABLE public.sintomas_afe (
    cod_sin character varying(6) NOT NULL,
    det_sin character varying(100) NOT NULL
);
     DROP TABLE public.sintomas_afe;
       public         postgres    false            	           1259    49617    socio    TABLE     _   CREATE TABLE public.socio (
    cod_soc integer NOT NULL,
    ide_ter character varying(15)
);
    DROP TABLE public.socio;
       public         postgres    false            
           1259    49620    socio_cod_soc_seq    SEQUENCE     �   CREATE SEQUENCE public.socio_cod_soc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.socio_cod_soc_seq;
       public       postgres    false    265                       0    0    socio_cod_soc_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.socio_cod_soc_seq OWNED BY public.socio.cod_soc;
            public       postgres    false    266                       1259    49622    stock    TABLE     f   CREATE TABLE public.stock (
    cod_sto integer NOT NULL,
    can_sto integer,
    cod_ins integer
);
    DROP TABLE public.stock;
       public         postgres    false                       1259    49625    stock_cod_sto_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_cod_sto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.stock_cod_sto_seq;
       public       postgres    false    267            �           0    0    stock_cod_sto_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.stock_cod_sto_seq OWNED BY public.stock.cod_sto;
            public       postgres    false    268                       1259    49627    tarea    TABLE     �   CREATE TABLE public.tarea (
    cod_tar integer NOT NULL,
    fin_tar date NOT NULL,
    ffi_tar date,
    val_tar integer,
    des_tar character varying(45),
    cod_lab integer
);
    DROP TABLE public.tarea;
       public         postgres    false                       1259    49630    tarea_cod_tar_seq    SEQUENCE     �   CREATE SEQUENCE public.tarea_cod_tar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tarea_cod_tar_seq;
       public       postgres    false    269            �           0    0    tarea_cod_tar_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tarea_cod_tar_seq OWNED BY public.tarea.cod_tar;
            public       postgres    false    270                       1259    49632    tel_tercero    TABLE     |   CREATE TABLE public.tel_tercero (
    ide_ter character varying(15) NOT NULL,
    tel_ter character varying(11) NOT NULL
);
    DROP TABLE public.tel_tercero;
       public         postgres    false                       1259    49635    terceros    TABLE     �   CREATE TABLE public.terceros (
    ide_ter character varying(15) NOT NULL,
    pno_ter character varying(20) NOT NULL,
    sno_ter character varying(20) NOT NULL,
    pap_ter character varying(20) NOT NULL,
    sap_ter character varying(20) NOT NULL
);
    DROP TABLE public.terceros;
       public         postgres    false                       1259    49638    tipo_agroquimico    TABLE     �   CREATE TABLE public.tipo_agroquimico (
    cod_tag character varying(6) NOT NULL,
    det_tag character varying(20) NOT NULL
);
 $   DROP TABLE public.tipo_agroquimico;
       public         postgres    false                       1259    49641    tipo_de_produccion    TABLE     �   CREATE TABLE public.tipo_de_produccion (
    cod_tpr integer NOT NULL,
    des_tpr character varying(45) NOT NULL,
    cod_unm integer
);
 &   DROP TABLE public.tipo_de_produccion;
       public         postgres    false                       1259    49644    tipo_de_produccion_cod_tpr_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_de_produccion_cod_tpr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tipo_de_produccion_cod_tpr_seq;
       public       postgres    false    274            �           0    0    tipo_de_produccion_cod_tpr_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tipo_de_produccion_cod_tpr_seq OWNED BY public.tipo_de_produccion.cod_tpr;
            public       postgres    false    275                       1259    49646    tipo_semillero    TABLE     q   CREATE TABLE public.tipo_semillero (
    cod_tso integer NOT NULL,
    det_tso character varying(20) NOT NULL
);
 "   DROP TABLE public.tipo_semillero;
       public         postgres    false                       1259    49649    tipo_semillero_cod_tso_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_semillero_cod_tso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tipo_semillero_cod_tso_seq;
       public       postgres    false    276            �           0    0    tipo_semillero_cod_tso_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tipo_semillero_cod_tso_seq OWNED BY public.tipo_semillero.cod_tso;
            public       postgres    false    277                       1259    49651    tipo_unidad_medida    TABLE     u   CREATE TABLE public.tipo_unidad_medida (
    cod_tum integer NOT NULL,
    des_tum character varying(45) NOT NULL
);
 &   DROP TABLE public.tipo_unidad_medida;
       public         postgres    false                       1259    49654    tipo_unidad_medida_cod_tum_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_unidad_medida_cod_tum_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tipo_unidad_medida_cod_tum_seq;
       public       postgres    false    278            �           0    0    tipo_unidad_medida_cod_tum_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tipo_unidad_medida_cod_tum_seq OWNED BY public.tipo_unidad_medida.cod_tum;
            public       postgres    false    279                       1259    49656 	   toxicidad    TABLE     �   CREATE TABLE public.toxicidad (
    cod_tox character varying(6) NOT NULL,
    det_tox character varying(20) NOT NULL,
    col_tox character varying(10) NOT NULL
);
    DROP TABLE public.toxicidad;
       public         postgres    false                       1259    49659 
   trabajador    TABLE     d   CREATE TABLE public.trabajador (
    cod_tra integer NOT NULL,
    ide_ter character varying(15)
);
    DROP TABLE public.trabajador;
       public         postgres    false                       1259    49662    trabajador_cod_tra_seq    SEQUENCE     �   CREATE SEQUENCE public.trabajador_cod_tra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.trabajador_cod_tra_seq;
       public       postgres    false    281            �           0    0    trabajador_cod_tra_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.trabajador_cod_tra_seq OWNED BY public.trabajador.cod_tra;
            public       postgres    false    282                       1259    49664    unidad_de_medida    TABLE     �   CREATE TABLE public.unidad_de_medida (
    cod_unm integer NOT NULL,
    des_unm character varying(30) NOT NULL,
    cod_tum integer,
    equ_med bigint
);
 $   DROP TABLE public.unidad_de_medida;
       public         postgres    false                       1259    49667    unidad_de_medida_cod_unm_seq    SEQUENCE     �   CREATE SEQUENCE public.unidad_de_medida_cod_unm_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.unidad_de_medida_cod_unm_seq;
       public       postgres    false    283            �           0    0    unidad_de_medida_cod_unm_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.unidad_de_medida_cod_unm_seq OWNED BY public.unidad_de_medida.cod_unm;
            public       postgres    false    284                       1259    49669    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usu integer NOT NULL,
    usu_usu character varying(20),
    pas_usu character varying(20)
);
    DROP TABLE public.usuario;
       public         postgres    false                       1259    49672    usuario_id_usu_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.usuario_id_usu_seq;
       public       postgres    false    285            �           0    0    usuario_id_usu_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.usuario_id_usu_seq OWNED BY public.usuario.id_usu;
            public       postgres    false    286                       1259    49674    utilizar    TABLE     �   CREATE TABLE public.utilizar (
    cod_sto integer NOT NULL,
    cod_tar integer NOT NULL,
    cin_tar integer NOT NULL,
    pin_tar character varying(8),
    cod_uti integer NOT NULL
);
    DROP TABLE public.utilizar;
       public         postgres    false                        1259    49677    utilizar_cod_uti_seq    SEQUENCE     �   CREATE SEQUENCE public.utilizar_cod_uti_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.utilizar_cod_uti_seq;
       public       postgres    false    287            �           0    0    utilizar_cod_uti_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.utilizar_cod_uti_seq OWNED BY public.utilizar.cod_uti;
            public       postgres    false    288            �           2604    49679    cliente cod_cli    DEFAULT     r   ALTER TABLE ONLY public.cliente ALTER COLUMN cod_cli SET DEFAULT nextval('public.cliente_cod_cli_seq'::regclass);
 >   ALTER TABLE public.cliente ALTER COLUMN cod_cli DROP DEFAULT;
       public       postgres    false    201    200            �           2604    49680    compras cod_com    DEFAULT     r   ALTER TABLE ONLY public.compras ALTER COLUMN cod_com SET DEFAULT nextval('public.compras_cod_com_seq'::regclass);
 >   ALTER TABLE public.compras ALTER COLUMN cod_com DROP DEFAULT;
       public       postgres    false    205    204            �           2604    49681    comun cod_cun    DEFAULT     n   ALTER TABLE ONLY public.comun ALTER COLUMN cod_cun SET DEFAULT nextval('public.comun_cod_cun_seq'::regclass);
 <   ALTER TABLE public.comun ALTER COLUMN cod_cun DROP DEFAULT;
       public       postgres    false    207    206            �           2604    49682    contratos cod_cot    DEFAULT     v   ALTER TABLE ONLY public.contratos ALTER COLUMN cod_cot SET DEFAULT nextval('public.contratos_cod_cot_seq'::regclass);
 @   ALTER TABLE public.contratos ALTER COLUMN cod_cot DROP DEFAULT;
       public       postgres    false    209    208            �           2604    49683    convenio cod_con    DEFAULT     t   ALTER TABLE ONLY public.convenio ALTER COLUMN cod_con SET DEFAULT nextval('public.convenio_cod_con_seq'::regclass);
 ?   ALTER TABLE public.convenio ALTER COLUMN cod_con DROP DEFAULT;
       public       postgres    false    211    210            �           2604    49684    cultivos cod_cul    DEFAULT     t   ALTER TABLE ONLY public.cultivos ALTER COLUMN cod_cul SET DEFAULT nextval('public.cultivos_cod_cul_seq'::regclass);
 ?   ALTER TABLE public.cultivos ALTER COLUMN cod_cul DROP DEFAULT;
       public       postgres    false    213    212            �           2604    49685    cultural cod_cut    DEFAULT     t   ALTER TABLE ONLY public.cultural ALTER COLUMN cod_cut SET DEFAULT nextval('public.cultural_cod_cut_seq'::regclass);
 ?   ALTER TABLE public.cultural ALTER COLUMN cod_cut DROP DEFAULT;
       public       postgres    false    215    214            �           2604    49686    duenio cod_due    DEFAULT     r   ALTER TABLE ONLY public.duenio ALTER COLUMN cod_due SET DEFAULT nextval('public."dueño_cod_due_seq"'::regclass);
 =   ALTER TABLE public.duenio ALTER COLUMN cod_due DROP DEFAULT;
       public       postgres    false    219    218            �           2604    49687    fertilizantes cod_fer    DEFAULT     y   ALTER TABLE ONLY public.fertilizantes ALTER COLUMN cod_fer SET DEFAULT nextval('public.semillas_cod_sem_seq'::regclass);
 D   ALTER TABLE public.fertilizantes ALTER COLUMN cod_fer DROP DEFAULT;
       public       postgres    false    260    226            �           2604    49688    fincas cnt_fin    DEFAULT     p   ALTER TABLE ONLY public.fincas ALTER COLUMN cnt_fin SET DEFAULT nextval('public.fincas_cnt_fin_seq'::regclass);
 =   ALTER TABLE public.fincas ALTER COLUMN cnt_fin DROP DEFAULT;
       public       postgres    false    228    227            �           2604    49689    fitosanitaria cod_fit    DEFAULT     ~   ALTER TABLE ONLY public.fitosanitaria ALTER COLUMN cod_fit SET DEFAULT nextval('public.fitosanitaria_cod_fit_seq'::regclass);
 D   ALTER TABLE public.fitosanitaria ALTER COLUMN cod_fit DROP DEFAULT;
       public       postgres    false    230    229            �           2604    49690    insumos cod_ins    DEFAULT     r   ALTER TABLE ONLY public.insumos ALTER COLUMN cod_ins SET DEFAULT nextval('public.insumos_cod_ins_seq'::regclass);
 >   ALTER TABLE public.insumos ALTER COLUMN cod_ins DROP DEFAULT;
       public       postgres    false    236    235            �           2604    49691    jornales cod_jor    DEFAULT     t   ALTER TABLE ONLY public.jornales ALTER COLUMN cod_jor SET DEFAULT nextval('public.jornales_cod_jor_seq'::regclass);
 ?   ALTER TABLE public.jornales ALTER COLUMN cod_jor DROP DEFAULT;
       public       postgres    false    238    237            �           2604    49692    labores cod_lab    DEFAULT     r   ALTER TABLE ONLY public.labores ALTER COLUMN cod_lab SET DEFAULT nextval('public.labores_cod_lab_seq'::regclass);
 >   ALTER TABLE public.labores ALTER COLUMN cod_lab DROP DEFAULT;
       public       postgres    false    240    239            �           2604    49693    lotes cod_lot    DEFAULT     n   ALTER TABLE ONLY public.lotes ALTER COLUMN cod_lot SET DEFAULT nextval('public.lotes_cod_lot_seq'::regclass);
 <   ALTER TABLE public.lotes ALTER COLUMN cod_lot DROP DEFAULT;
       public       postgres    false    242    241            �           2604    49694    nombre_cultivo cod_ncu    DEFAULT     �   ALTER TABLE ONLY public.nombre_cultivo ALTER COLUMN cod_ncu SET DEFAULT nextval('public.nombre_cultivo_cod_ncu_seq'::regclass);
 E   ALTER TABLE public.nombre_cultivo ALTER COLUMN cod_ncu DROP DEFAULT;
       public       postgres    false    245    244            �           2604    49695    otros cod_otr    DEFAULT     n   ALTER TABLE ONLY public.otros ALTER COLUMN cod_otr SET DEFAULT nextval('public.otros_cod_otr_seq'::regclass);
 <   ALTER TABLE public.otros ALTER COLUMN cod_otr DROP DEFAULT;
       public       postgres    false    247    246            �           2604    49696    pre_sto cod_pre    DEFAULT     r   ALTER TABLE ONLY public.pre_sto ALTER COLUMN cod_pre SET DEFAULT nextval('public.pre_sto_cod_pre_seq'::regclass);
 >   ALTER TABLE public.pre_sto ALTER COLUMN cod_pre DROP DEFAULT;
       public       postgres    false    252    251            �           2604    49697    produccion cod_pro    DEFAULT     x   ALTER TABLE ONLY public.produccion ALTER COLUMN cod_pro SET DEFAULT nextval('public.produccion_cod_pro_seq'::regclass);
 A   ALTER TABLE public.produccion ALTER COLUMN cod_pro DROP DEFAULT;
       public       postgres    false    255    254            �           2604    49698    proveedor cod_pro    DEFAULT     v   ALTER TABLE ONLY public.proveedor ALTER COLUMN cod_pro SET DEFAULT nextval('public.proveedor_cod_pro_seq'::regclass);
 @   ALTER TABLE public.proveedor ALTER COLUMN cod_pro DROP DEFAULT;
       public       postgres    false    257    256            �           2604    49699    semillero cod_smr    DEFAULT     v   ALTER TABLE ONLY public.semillero ALTER COLUMN cod_smr SET DEFAULT nextval('public.semillero_cod_smr_seq'::regclass);
 @   ALTER TABLE public.semillero ALTER COLUMN cod_smr DROP DEFAULT;
       public       postgres    false    262    261            �           2604    49700    socio cod_soc    DEFAULT     n   ALTER TABLE ONLY public.socio ALTER COLUMN cod_soc SET DEFAULT nextval('public.socio_cod_soc_seq'::regclass);
 <   ALTER TABLE public.socio ALTER COLUMN cod_soc DROP DEFAULT;
       public       postgres    false    266    265            �           2604    49701    stock cod_sto    DEFAULT     n   ALTER TABLE ONLY public.stock ALTER COLUMN cod_sto SET DEFAULT nextval('public.stock_cod_sto_seq'::regclass);
 <   ALTER TABLE public.stock ALTER COLUMN cod_sto DROP DEFAULT;
       public       postgres    false    268    267            �           2604    49702    tarea cod_tar    DEFAULT     n   ALTER TABLE ONLY public.tarea ALTER COLUMN cod_tar SET DEFAULT nextval('public.tarea_cod_tar_seq'::regclass);
 <   ALTER TABLE public.tarea ALTER COLUMN cod_tar DROP DEFAULT;
       public       postgres    false    270    269            �           2604    49703    tipo_de_produccion cod_tpr    DEFAULT     �   ALTER TABLE ONLY public.tipo_de_produccion ALTER COLUMN cod_tpr SET DEFAULT nextval('public.tipo_de_produccion_cod_tpr_seq'::regclass);
 I   ALTER TABLE public.tipo_de_produccion ALTER COLUMN cod_tpr DROP DEFAULT;
       public       postgres    false    275    274            �           2604    49704    tipo_semillero cod_tso    DEFAULT     �   ALTER TABLE ONLY public.tipo_semillero ALTER COLUMN cod_tso SET DEFAULT nextval('public.tipo_semillero_cod_tso_seq'::regclass);
 E   ALTER TABLE public.tipo_semillero ALTER COLUMN cod_tso DROP DEFAULT;
       public       postgres    false    277    276            �           2604    49705    tipo_unidad_medida cod_tum    DEFAULT     �   ALTER TABLE ONLY public.tipo_unidad_medida ALTER COLUMN cod_tum SET DEFAULT nextval('public.tipo_unidad_medida_cod_tum_seq'::regclass);
 I   ALTER TABLE public.tipo_unidad_medida ALTER COLUMN cod_tum DROP DEFAULT;
       public       postgres    false    279    278            �           2604    49706    trabajador cod_tra    DEFAULT     x   ALTER TABLE ONLY public.trabajador ALTER COLUMN cod_tra SET DEFAULT nextval('public.trabajador_cod_tra_seq'::regclass);
 A   ALTER TABLE public.trabajador ALTER COLUMN cod_tra DROP DEFAULT;
       public       postgres    false    282    281            �           2604    49707    unidad_de_medida cod_unm    DEFAULT     �   ALTER TABLE ONLY public.unidad_de_medida ALTER COLUMN cod_unm SET DEFAULT nextval('public.unidad_de_medida_cod_unm_seq'::regclass);
 G   ALTER TABLE public.unidad_de_medida ALTER COLUMN cod_unm DROP DEFAULT;
       public       postgres    false    284    283            �           2604    49708    usuario id_usu    DEFAULT     p   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usu SET DEFAULT nextval('public.usuario_id_usu_seq'::regclass);
 =   ALTER TABLE public.usuario ALTER COLUMN id_usu DROP DEFAULT;
       public       postgres    false    286    285            �           2604    49709    utilizar cod_uti    DEFAULT     t   ALTER TABLE ONLY public.utilizar ALTER COLUMN cod_uti SET DEFAULT nextval('public.utilizar_cod_uti_seq'::regclass);
 ?   ALTER TABLE public.utilizar ALTER COLUMN cod_uti DROP DEFAULT;
       public       postgres    false    288    287                      0    49422    act_con 
   TABLE DATA               3   COPY public.act_con (cod_con, ide_ter) FROM stdin;
    public       postgres    false    196   T�                0    49425    act_cul 
   TABLE DATA               3   COPY public.act_cul (cod_cul, ide_ter) FROM stdin;
    public       postgres    false    197   ��                0    49428    afeccion 
   TABLE DATA               a   COPY public.afeccion (cod_afe, nom_afe, noc_afe, epo_afe, prv_afe, eat_afe, hat_afe) FROM stdin;
    public       postgres    false    198   ս                0    49434    agroquimicos 
   TABLE DATA               �   COPY public.agroquimicos (cod_agr, cod_ins, nom_agr, rap_agr, pcr_agr, pen_agr, pro_agr, cod_tag, cod_tox, dos_agr, cod_for, cod_iac, fun_agr) FROM stdin;
    public       postgres    false    199   ��      	          0    49437    cliente 
   TABLE DATA               3   COPY public.cliente (ide_ter, cod_cli) FROM stdin;
    public       postgres    false    200   D�                0    49442    comentarios_pfi 
   TABLE DATA               D   COPY public.comentarios_pfi (cod_pfi, com_pfi, fec_com) FROM stdin;
    public       postgres    false    202   a�                0    49445    comprar 
   TABLE DATA               3   COPY public.comprar (cod_com, ide_ter) FROM stdin;
    public       postgres    false    203   ��                0    49448    compras 
   TABLE DATA               <   COPY public.compras (cod_com, fec_com, tot_com) FROM stdin;
    public       postgres    false    204   ��                0    49453    comun 
   TABLE DATA               1   COPY public.comun (cod_cun, cod_tar) FROM stdin;
    public       postgres    false    206   +�                0    49458 	   contratos 
   TABLE DATA               P   COPY public.contratos (cod_cot, val_cot, des_cot, cod_con, ffi_con) FROM stdin;
    public       postgres    false    208   H�                0    49463    convenio 
   TABLE DATA               4   COPY public.convenio (cod_con, fec_con) FROM stdin;
    public       postgres    false    210   e�                0    49468    cultivos 
   TABLE DATA               �   COPY public.cultivos (cod_cul, fin_cul, fif_cul, npl_cul, tip_cul, dur_cul, est_cul, cod_ncu, cod_lot, dia_cul, mod_cul) FROM stdin;
    public       postgres    false    212   ��                0    49473    cultural 
   TABLE DATA               4   COPY public.cultural (cod_cut, cod_tar) FROM stdin;
    public       postgres    false    214   �                0    49478    departamento 
   TABLE DATA               8   COPY public.departamento (cod_dep, nom_dep) FROM stdin;
    public       postgres    false    216   �                0    49481    desarrollar 
   TABLE DATA               7   COPY public.desarrollar (cod_tar, cod_lab) FROM stdin;
    public       postgres    false    217   k�                0    49484    duenio 
   TABLE DATA               2   COPY public.duenio (cod_due, ide_ter) FROM stdin;
    public       postgres    false    218   ��                0    49489    efectuar 
   TABLE DATA               4   COPY public.efectuar (cod_con, cod_tar) FROM stdin;
    public       postgres    false    220   ��                0    49492    ejecutar 
   TABLE DATA               4   COPY public.ejecutar (cod_con, cod_cul) FROM stdin;
    public       postgres    false    221   ��                0    49495    email_tercero 
   TABLE DATA               9   COPY public.email_tercero (ide_ter, ema_ter) FROM stdin;
    public       postgres    false    222   %�                 0    49498    enfermedades 
   TABLE DATA               A   COPY public.enfermedades (cod_afe, cod_enf, pat_enf) FROM stdin;
    public       postgres    false    223   ��      !          0    49501 	   eta_x_afe 
   TABLE DATA               G   COPY public.eta_x_afe (cod_afe, cod_eta, ima_eta, cod_agr) FROM stdin;
    public       postgres    false    224   ��      "          0    49504    etapas_crecimiento 
   TABLE DATA               >   COPY public.etapas_crecimiento (cod_eta, det_eta) FROM stdin;
    public       postgres    false    225   M�      #          0    49507    fertilizantes 
   TABLE DATA               B   COPY public.fertilizantes (cod_fer, cod_ins, det_fer) FROM stdin;
    public       postgres    false    226   ��      $          0    49510    fincas 
   TABLE DATA               z   COPY public.fincas (cod_fin, nom_fin, det_fin, cod_dep, cod_mun, ide_ter, cod_unm, med_fin, cnt_fin, fot_fin) FROM stdin;
    public       postgres    false    227   ��      &          0    49518    fitosanitaria 
   TABLE DATA               K   COPY public.fitosanitaria (cod_fit, cod_tar, cal_fit, cod_pla) FROM stdin;
    public       postgres    false    229   ��      (          0    49523    formulacion 
   TABLE DATA               I   COPY public.formulacion (cod_for, nom_for, sig_for, des_for) FROM stdin;
    public       postgres    false    231   ��      )          0    49526    gozar 
   TABLE DATA               U   COPY public.gozar (cod_tpr, cod_pro, fec_goz, ctp_goz, pre_goz, cpt_goz) FROM stdin;
    public       postgres    false    232   L�      *          0    49532    incidencia_afe 
   TABLE DATA               :   COPY public.incidencia_afe (cod_afe, det_inc) FROM stdin;
    public       postgres    false    233   i�      +          0    49535    ingredientes_activos 
   TABLE DATA               I   COPY public.ingredientes_activos (cod_iac, des_iac, pro_iac) FROM stdin;
    public       postgres    false    234   ��      ,          0    49538    insumos 
   TABLE DATA               <   COPY public.insumos (cod_ins, des_ins, cod_unm) FROM stdin;
    public       postgres    false    235   (�      .          0    49543    jornales 
   TABLE DATA               F   COPY public.jornales (cod_jor, hor_jor, vho_jor, cod_con) FROM stdin;
    public       postgres    false    237   ��      0          0    49548    labores 
   TABLE DATA               <   COPY public.labores (cod_lab, nom_lab, det_lab) FROM stdin;
    public       postgres    false    239   P�      2          0    49553    lotes 
   TABLE DATA               L   COPY public.lotes (cod_lot, nom_lot, cod_fin, cod_unm, med_lot) FROM stdin;
    public       postgres    false    241   �      4          0    49558 	   municipio 
   TABLE DATA               >   COPY public.municipio (cod_mun, nom_mun, cod_dep) FROM stdin;
    public       postgres    false    243   U�      5          0    49561    nombre_cultivo 
   TABLE DATA               :   COPY public.nombre_cultivo (cod_ncu, des_ncu) FROM stdin;
    public       postgres    false    244   ��      7          0    49566    otros 
   TABLE DATA               :   COPY public.otros (cod_otr, cod_ins, det_otr) FROM stdin;
    public       postgres    false    246   �      9          0    49571    partes_planta_afe 
   TABLE DATA               =   COPY public.partes_planta_afe (cod_afe, det_par) FROM stdin;
    public       postgres    false    248   j�      :          0    49574    plagas 
   TABLE DATA               ;   COPY public.plagas (cod_afe, cod_plg, tip_plg) FROM stdin;
    public       postgres    false    249   ��      ;          0    49577    planificacion 
   TABLE DATA               f   COPY public.planificacion (cod_pla, det_pla, fec_pla, epo_pla, cod_ppl, cod_pfi, agr_pla) FROM stdin;
    public       postgres    false    250   ��      <          0    49580    pre_sto 
   TABLE DATA               E   COPY public.pre_sto (fec_cin, cod_sto, pre_sto, cod_pre) FROM stdin;
    public       postgres    false    251   ��      >          0    49585    procesos_fitosanitarios 
   TABLE DATA               ^   COPY public.procesos_fitosanitarios (cod_pfi, fin_pfi, ffi_pfi, cod_afe, tip_pfi) FROM stdin;
    public       postgres    false    253   ��      ?          0    49588 
   produccion 
   TABLE DATA               ?   COPY public.produccion (cod_pro, cod_cul, ide_ter) FROM stdin;
    public       postgres    false    254   M�      A          0    49593 	   proveedor 
   TABLE DATA               5   COPY public.proveedor (cod_pro, ide_ter) FROM stdin;
    public       postgres    false    256   j�      C          0    49598    recomendaciones_uso_agr 
   TABLE DATA               C   COPY public.recomendaciones_uso_agr (cod_agr, det_rus) FROM stdin;
    public       postgres    false    258   ��      D          0    49601 	   registrar 
   TABLE DATA               5   COPY public.registrar (cod_com, cod_sto) FROM stdin;
    public       postgres    false    259   ��      F          0    49606 	   semillero 
   TABLE DATA               G   COPY public.semillero (cod_smr, cod_ins, cod_tso, det_smr) FROM stdin;
    public       postgres    false    261   �      H          0    49611 	   sin_x_afe 
   TABLE DATA               5   COPY public.sin_x_afe (cod_afe, cod_sin) FROM stdin;
    public       postgres    false    263   g�      I          0    49614    sintomas_afe 
   TABLE DATA               8   COPY public.sintomas_afe (cod_sin, det_sin) FROM stdin;
    public       postgres    false    264   ��      J          0    49617    socio 
   TABLE DATA               1   COPY public.socio (cod_soc, ide_ter) FROM stdin;
    public       postgres    false    265   ��      L          0    49622    stock 
   TABLE DATA               :   COPY public.stock (cod_sto, can_sto, cod_ins) FROM stdin;
    public       postgres    false    267   ��      N          0    49627    tarea 
   TABLE DATA               U   COPY public.tarea (cod_tar, fin_tar, ffi_tar, val_tar, des_tar, cod_lab) FROM stdin;
    public       postgres    false    269   5�      P          0    49632    tel_tercero 
   TABLE DATA               7   COPY public.tel_tercero (ide_ter, tel_ter) FROM stdin;
    public       postgres    false    271   ��      Q          0    49635    terceros 
   TABLE DATA               O   COPY public.terceros (ide_ter, pno_ter, sno_ter, pap_ter, sap_ter) FROM stdin;
    public       postgres    false    272   D�      R          0    49638    tipo_agroquimico 
   TABLE DATA               <   COPY public.tipo_agroquimico (cod_tag, det_tag) FROM stdin;
    public       postgres    false    273   ��      S          0    49641    tipo_de_produccion 
   TABLE DATA               G   COPY public.tipo_de_produccion (cod_tpr, des_tpr, cod_unm) FROM stdin;
    public       postgres    false    274   !�      U          0    49646    tipo_semillero 
   TABLE DATA               :   COPY public.tipo_semillero (cod_tso, det_tso) FROM stdin;
    public       postgres    false    276   L�      W          0    49651    tipo_unidad_medida 
   TABLE DATA               >   COPY public.tipo_unidad_medida (cod_tum, des_tum) FROM stdin;
    public       postgres    false    278   |�      Y          0    49656 	   toxicidad 
   TABLE DATA               >   COPY public.toxicidad (cod_tox, det_tox, col_tox) FROM stdin;
    public       postgres    false    280   ��      Z          0    49659 
   trabajador 
   TABLE DATA               6   COPY public.trabajador (cod_tra, ide_ter) FROM stdin;
    public       postgres    false    281   �      \          0    49664    unidad_de_medida 
   TABLE DATA               N   COPY public.unidad_de_medida (cod_unm, des_unm, cod_tum, equ_med) FROM stdin;
    public       postgres    false    283   E�      ^          0    49669    usuario 
   TABLE DATA               ;   COPY public.usuario (id_usu, usu_usu, pas_usu) FROM stdin;
    public       postgres    false    285   �      `          0    49674    utilizar 
   TABLE DATA               O   COPY public.utilizar (cod_sto, cod_tar, cin_tar, pin_tar, cod_uti) FROM stdin;
    public       postgres    false    287   :�      �           0    0    cliente_cod_cli_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cliente_cod_cli_seq', 9, true);
            public       postgres    false    201            �           0    0    compras_cod_com_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.compras_cod_com_seq', 1, false);
            public       postgres    false    205            �           0    0    comun_cod_cun_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.comun_cod_cun_seq', 41, true);
            public       postgres    false    207            �           0    0    contratos_cod_cot_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.contratos_cod_cot_seq', 37, true);
            public       postgres    false    209            �           0    0    convenio_cod_con_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.convenio_cod_con_seq', 111, true);
            public       postgres    false    211            �           0    0    cultivos_cod_cul_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cultivos_cod_cul_seq', 65, true);
            public       postgres    false    213            �           0    0    cultural_cod_cut_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cultural_cod_cut_seq', 18, true);
            public       postgres    false    215            �           0    0    dueño_cod_due_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."dueño_cod_due_seq"', 42, true);
            public       postgres    false    219            �           0    0    fincas_cnt_fin_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fincas_cnt_fin_seq', 50, true);
            public       postgres    false    228            �           0    0    fitosanitaria_cod_fit_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.fitosanitaria_cod_fit_seq', 12, true);
            public       postgres    false    230            �           0    0    insumos_cod_ins_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.insumos_cod_ins_seq', 53, true);
            public       postgres    false    236            �           0    0    jornales_cod_jor_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.jornales_cod_jor_seq', 63, true);
            public       postgres    false    238            �           0    0    labores_cod_lab_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.labores_cod_lab_seq', 9, true);
            public       postgres    false    240            �           0    0    lotes_cod_lot_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.lotes_cod_lot_seq', 77, true);
            public       postgres    false    242            �           0    0    nombre_cultivo_cod_ncu_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.nombre_cultivo_cod_ncu_seq', 33, true);
            public       postgres    false    245            �           0    0    otros_cod_otr_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.otros_cod_otr_seq', 15, true);
            public       postgres    false    247            �           0    0    pre_sto_cod_pre_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pre_sto_cod_pre_seq', 87, true);
            public       postgres    false    252            �           0    0    produccion_cod_pro_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produccion_cod_pro_seq', 65, true);
            public       postgres    false    255            �           0    0    proveedor_cod_pro_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.proveedor_cod_pro_seq', 15, true);
            public       postgres    false    257            �           0    0    semillas_cod_sem_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.semillas_cod_sem_seq', 13, true);
            public       postgres    false    260            �           0    0    semillero_cod_smr_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.semillero_cod_smr_seq', 7, true);
            public       postgres    false    262            �           0    0    socio_cod_soc_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.socio_cod_soc_seq', 17, true);
            public       postgres    false    266            �           0    0    stock_cod_sto_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.stock_cod_sto_seq', 294, true);
            public       postgres    false    268            �           0    0    tarea_cod_tar_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tarea_cod_tar_seq', 78, true);
            public       postgres    false    270            �           0    0    tipo_de_produccion_cod_tpr_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tipo_de_produccion_cod_tpr_seq', 6, true);
            public       postgres    false    275            �           0    0    tipo_semillero_cod_tso_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tipo_semillero_cod_tso_seq', 3, true);
            public       postgres    false    277            �           0    0    tipo_unidad_medida_cod_tum_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tipo_unidad_medida_cod_tum_seq', 1, false);
            public       postgres    false    279            �           0    0    trabajador_cod_tra_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.trabajador_cod_tra_seq', 26, true);
            public       postgres    false    282            �           0    0    unidad_de_medida_cod_unm_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.unidad_de_medida_cod_unm_seq', 7, true);
            public       postgres    false    284            �           0    0    usuario_id_usu_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.usuario_id_usu_seq', 2, true);
            public       postgres    false    286            �           0    0    utilizar_cod_uti_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.utilizar_cod_uti_seq', 66, true);
            public       postgres    false    288            �           2606    49711    act_con acordar_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.act_con
    ADD CONSTRAINT acordar_pkey PRIMARY KEY (cod_con, ide_ter);
 >   ALTER TABLE ONLY public.act_con DROP CONSTRAINT acordar_pkey;
       public         postgres    false    196    196            �           2606    49713    act_cul actuar_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_cul
    ADD CONSTRAINT actuar_pkey PRIMARY KEY (ide_ter, cod_cul);
 =   ALTER TABLE ONLY public.act_cul DROP CONSTRAINT actuar_pkey;
       public         postgres    false    197    197            �           2606    49715    afeccion afeccion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.afeccion
    ADD CONSTRAINT afeccion_pkey PRIMARY KEY (cod_afe);
 @   ALTER TABLE ONLY public.afeccion DROP CONSTRAINT afeccion_pkey;
       public         postgres    false    198            �           2606    49717    agroquimicos agroquimicos_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.agroquimicos
    ADD CONSTRAINT agroquimicos_pkey PRIMARY KEY (cod_agr);
 H   ALTER TABLE ONLY public.agroquimicos DROP CONSTRAINT agroquimicos_pkey;
       public         postgres    false    199            �           2606    49719    cliente cliente_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cod_cli);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    200            �           2606    49721    comprar comprar_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.comprar
    ADD CONSTRAINT comprar_pkey PRIMARY KEY (ide_ter, cod_com);
 >   ALTER TABLE ONLY public.comprar DROP CONSTRAINT comprar_pkey;
       public         postgres    false    203    203            �           2606    49723    compras compras_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (cod_com);
 >   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_pkey;
       public         postgres    false    204            �           2606    49725    comun comun_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.comun
    ADD CONSTRAINT comun_pkey PRIMARY KEY (cod_cun);
 :   ALTER TABLE ONLY public.comun DROP CONSTRAINT comun_pkey;
       public         postgres    false    206            �           2606    49727    contratos contratos_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_pkey PRIMARY KEY (cod_cot);
 B   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_pkey;
       public         postgres    false    208            �           2606    49729    convenio convenio_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.convenio
    ADD CONSTRAINT convenio_pkey PRIMARY KEY (cod_con);
 @   ALTER TABLE ONLY public.convenio DROP CONSTRAINT convenio_pkey;
       public         postgres    false    210            �           2606    49731    cultivos cultivos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cultivos
    ADD CONSTRAINT cultivos_pkey PRIMARY KEY (cod_cul);
 @   ALTER TABLE ONLY public.cultivos DROP CONSTRAINT cultivos_pkey;
       public         postgres    false    212            �           2606    49733    cultural cultural_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cultural
    ADD CONSTRAINT cultural_pkey PRIMARY KEY (cod_cut);
 @   ALTER TABLE ONLY public.cultural DROP CONSTRAINT cultural_pkey;
       public         postgres    false    214            �           2606    49735    departamento departamento_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (cod_dep);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public         postgres    false    216            �           2606    49737    duenio dueño_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.duenio
    ADD CONSTRAINT "dueño_pkey" PRIMARY KEY (cod_due);
 >   ALTER TABLE ONLY public.duenio DROP CONSTRAINT "dueño_pkey";
       public         postgres    false    218            �           2606    49739    ejecutar ejecutar_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ejecutar
    ADD CONSTRAINT ejecutar_pkey PRIMARY KEY (cod_con, cod_cul);
 @   ALTER TABLE ONLY public.ejecutar DROP CONSTRAINT ejecutar_pkey;
       public         postgres    false    221    221            �           2606    49741     email_tercero email_tercero_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.email_tercero
    ADD CONSTRAINT email_tercero_pkey PRIMARY KEY (ide_ter, ema_ter);
 J   ALTER TABLE ONLY public.email_tercero DROP CONSTRAINT email_tercero_pkey;
       public         postgres    false    222    222            �           2606    49743    enfermedades enfermedades_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.enfermedades
    ADD CONSTRAINT enfermedades_pkey PRIMARY KEY (cod_afe, cod_enf);
 H   ALTER TABLE ONLY public.enfermedades DROP CONSTRAINT enfermedades_pkey;
       public         postgres    false    223    223            �           2606    49745    eta_x_afe eta_x_afe_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.eta_x_afe
    ADD CONSTRAINT eta_x_afe_pkey PRIMARY KEY (cod_afe, cod_eta, cod_agr);
 B   ALTER TABLE ONLY public.eta_x_afe DROP CONSTRAINT eta_x_afe_pkey;
       public         postgres    false    224    224    224            �           2606    49747 *   etapas_crecimiento etapas_crecimiento_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.etapas_crecimiento
    ADD CONSTRAINT etapas_crecimiento_pkey PRIMARY KEY (cod_eta);
 T   ALTER TABLE ONLY public.etapas_crecimiento DROP CONSTRAINT etapas_crecimiento_pkey;
       public         postgres    false    225            �           2606    49749    fincas fincas_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.fincas
    ADD CONSTRAINT fincas_pkey PRIMARY KEY (cod_fin);
 <   ALTER TABLE ONLY public.fincas DROP CONSTRAINT fincas_pkey;
       public         postgres    false    227            �           2606    49751     fitosanitaria fitosanitaria_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.fitosanitaria
    ADD CONSTRAINT fitosanitaria_pkey PRIMARY KEY (cod_fit);
 J   ALTER TABLE ONLY public.fitosanitaria DROP CONSTRAINT fitosanitaria_pkey;
       public         postgres    false    229            �           2606    49753    formulacion formulacion_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.formulacion
    ADD CONSTRAINT formulacion_pkey PRIMARY KEY (cod_for);
 F   ALTER TABLE ONLY public.formulacion DROP CONSTRAINT formulacion_pkey;
       public         postgres    false    231            �           2606    49755    gozar gozar_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.gozar
    ADD CONSTRAINT gozar_pkey PRIMARY KEY (cod_tpr, cod_pro);
 :   ALTER TABLE ONLY public.gozar DROP CONSTRAINT gozar_pkey;
       public         postgres    false    232    232                        2606    49757 "   incidencia_afe incidencia_afe_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.incidencia_afe
    ADD CONSTRAINT incidencia_afe_pkey PRIMARY KEY (cod_afe, det_inc);
 L   ALTER TABLE ONLY public.incidencia_afe DROP CONSTRAINT incidencia_afe_pkey;
       public         postgres    false    233    233                       2606    49759    insumos insumos_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT insumos_pkey PRIMARY KEY (cod_ins);
 >   ALTER TABLE ONLY public.insumos DROP CONSTRAINT insumos_pkey;
       public         postgres    false    235                       2606    49761    jornales jornales_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.jornales
    ADD CONSTRAINT jornales_pkey PRIMARY KEY (cod_jor);
 @   ALTER TABLE ONLY public.jornales DROP CONSTRAINT jornales_pkey;
       public         postgres    false    237                       2606    49763    labores labores_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.labores
    ADD CONSTRAINT labores_pkey PRIMARY KEY (cod_lab);
 >   ALTER TABLE ONLY public.labores DROP CONSTRAINT labores_pkey;
       public         postgres    false    239            
           2606    49765    lotes lotes_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.lotes
    ADD CONSTRAINT lotes_pkey PRIMARY KEY (cod_lot);
 :   ALTER TABLE ONLY public.lotes DROP CONSTRAINT lotes_pkey;
       public         postgres    false    241                       2606    49767 #   ingredientes_activos moleculas_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ingredientes_activos
    ADD CONSTRAINT moleculas_pkey PRIMARY KEY (cod_iac);
 M   ALTER TABLE ONLY public.ingredientes_activos DROP CONSTRAINT moleculas_pkey;
       public         postgres    false    234                       2606    49769    municipio municipio_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (cod_mun);
 B   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_pkey;
       public         postgres    false    243                       2606    49771 "   nombre_cultivo nombre_cultivo_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.nombre_cultivo
    ADD CONSTRAINT nombre_cultivo_pkey PRIMARY KEY (cod_ncu);
 L   ALTER TABLE ONLY public.nombre_cultivo DROP CONSTRAINT nombre_cultivo_pkey;
       public         postgres    false    244                       2606    49773    otros otros_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.otros
    ADD CONSTRAINT otros_pkey PRIMARY KEY (cod_otr);
 :   ALTER TABLE ONLY public.otros DROP CONSTRAINT otros_pkey;
       public         postgres    false    246                       2606    49775 (   partes_planta_afe partes_planta_afe_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.partes_planta_afe
    ADD CONSTRAINT partes_planta_afe_pkey PRIMARY KEY (cod_afe, det_par);
 R   ALTER TABLE ONLY public.partes_planta_afe DROP CONSTRAINT partes_planta_afe_pkey;
       public         postgres    false    248    248                       2606    49777    plagas plagas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.plagas
    ADD CONSTRAINT plagas_pkey PRIMARY KEY (cod_afe, cod_plg);
 <   ALTER TABLE ONLY public.plagas DROP CONSTRAINT plagas_pkey;
       public         postgres    false    249    249                       2606    49779     planificacion planificacion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.planificacion
    ADD CONSTRAINT planificacion_pkey PRIMARY KEY (cod_pla);
 J   ALTER TABLE ONLY public.planificacion DROP CONSTRAINT planificacion_pkey;
       public         postgres    false    250                       2606    49781    pre_sto pre_sto_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.pre_sto
    ADD CONSTRAINT pre_sto_pkey PRIMARY KEY (fec_cin, cod_sto, cod_pre);
 >   ALTER TABLE ONLY public.pre_sto DROP CONSTRAINT pre_sto_pkey;
       public         postgres    false    251    251    251                       2606    49783 4   procesos_fitosanitarios procesos_fitosanitarios_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.procesos_fitosanitarios
    ADD CONSTRAINT procesos_fitosanitarios_pkey PRIMARY KEY (cod_pfi);
 ^   ALTER TABLE ONLY public.procesos_fitosanitarios DROP CONSTRAINT procesos_fitosanitarios_pkey;
       public         postgres    false    253                       2606    49785    produccion produccion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pkey PRIMARY KEY (cod_pro);
 D   ALTER TABLE ONLY public.produccion DROP CONSTRAINT produccion_pkey;
       public         postgres    false    254                       2606    49787    proveedor proveedor_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (cod_pro);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public         postgres    false    256                        2606    50186 0   recomendaciones_uso_agr recomendaciones_uso_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.recomendaciones_uso_agr
    ADD CONSTRAINT recomendaciones_uso_pkey PRIMARY KEY (cod_agr, det_rus);
 Z   ALTER TABLE ONLY public.recomendaciones_uso_agr DROP CONSTRAINT recomendaciones_uso_pkey;
       public         postgres    false    258    258            "           2606    49791    registrar registar_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.registrar
    ADD CONSTRAINT registar_pkey PRIMARY KEY (cod_com, cod_sto);
 A   ALTER TABLE ONLY public.registrar DROP CONSTRAINT registar_pkey;
       public         postgres    false    259    259            �           2606    49793    fertilizantes semillas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.fertilizantes
    ADD CONSTRAINT semillas_pkey PRIMARY KEY (cod_fer);
 E   ALTER TABLE ONLY public.fertilizantes DROP CONSTRAINT semillas_pkey;
       public         postgres    false    226            $           2606    49795    semillero semillero_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.semillero
    ADD CONSTRAINT semillero_pkey PRIMARY KEY (cod_smr);
 B   ALTER TABLE ONLY public.semillero DROP CONSTRAINT semillero_pkey;
       public         postgres    false    261            &           2606    49797    sin_x_afe sin_x_afe_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.sin_x_afe
    ADD CONSTRAINT sin_x_afe_pkey PRIMARY KEY (cod_afe, cod_sin);
 B   ALTER TABLE ONLY public.sin_x_afe DROP CONSTRAINT sin_x_afe_pkey;
       public         postgres    false    263    263            (           2606    49799    sintomas_afe sintomas_afe_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.sintomas_afe
    ADD CONSTRAINT sintomas_afe_pkey PRIMARY KEY (cod_sin);
 H   ALTER TABLE ONLY public.sintomas_afe DROP CONSTRAINT sintomas_afe_pkey;
       public         postgres    false    264            *           2606    49801    socio socio_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_pkey PRIMARY KEY (cod_soc);
 :   ALTER TABLE ONLY public.socio DROP CONSTRAINT socio_pkey;
       public         postgres    false    265            ,           2606    49803    stock stock_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (cod_sto);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public         postgres    false    267            .           2606    49805    tarea tarea_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT tarea_pkey PRIMARY KEY (cod_tar);
 :   ALTER TABLE ONLY public.tarea DROP CONSTRAINT tarea_pkey;
       public         postgres    false    269            0           2606    49807    tel_tercero tel_tercero_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tel_tercero
    ADD CONSTRAINT tel_tercero_pkey PRIMARY KEY (ide_ter, tel_ter);
 F   ALTER TABLE ONLY public.tel_tercero DROP CONSTRAINT tel_tercero_pkey;
       public         postgres    false    271    271            2           2606    49809    terceros terceros_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.terceros
    ADD CONSTRAINT terceros_pkey PRIMARY KEY (ide_ter);
 @   ALTER TABLE ONLY public.terceros DROP CONSTRAINT terceros_pkey;
       public         postgres    false    272            4           2606    49811 &   tipo_agroquimico tipo_agroquimico_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tipo_agroquimico
    ADD CONSTRAINT tipo_agroquimico_pkey PRIMARY KEY (cod_tag);
 P   ALTER TABLE ONLY public.tipo_agroquimico DROP CONSTRAINT tipo_agroquimico_pkey;
       public         postgres    false    273            6           2606    49813 *   tipo_de_produccion tipo_de_produccion_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tipo_de_produccion
    ADD CONSTRAINT tipo_de_produccion_pkey PRIMARY KEY (cod_tpr);
 T   ALTER TABLE ONLY public.tipo_de_produccion DROP CONSTRAINT tipo_de_produccion_pkey;
       public         postgres    false    274            8           2606    49815 "   tipo_semillero tipo_semillero_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tipo_semillero
    ADD CONSTRAINT tipo_semillero_pkey PRIMARY KEY (cod_tso);
 L   ALTER TABLE ONLY public.tipo_semillero DROP CONSTRAINT tipo_semillero_pkey;
       public         postgres    false    276            :           2606    49817 *   tipo_unidad_medida tipo_unidad_medida_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tipo_unidad_medida
    ADD CONSTRAINT tipo_unidad_medida_pkey PRIMARY KEY (cod_tum);
 T   ALTER TABLE ONLY public.tipo_unidad_medida DROP CONSTRAINT tipo_unidad_medida_pkey;
       public         postgres    false    278            <           2606    49819    toxicidad toxicidad_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.toxicidad
    ADD CONSTRAINT toxicidad_pkey PRIMARY KEY (cod_tox);
 B   ALTER TABLE ONLY public.toxicidad DROP CONSTRAINT toxicidad_pkey;
       public         postgres    false    280            >           2606    49821    trabajador trabajador_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT trabajador_pkey PRIMARY KEY (cod_tra);
 D   ALTER TABLE ONLY public.trabajador DROP CONSTRAINT trabajador_pkey;
       public         postgres    false    281            @           2606    49823 &   unidad_de_medida unidad_de_medida_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.unidad_de_medida
    ADD CONSTRAINT unidad_de_medida_pkey PRIMARY KEY (cod_unm);
 P   ALTER TABLE ONLY public.unidad_de_medida DROP CONSTRAINT unidad_de_medida_pkey;
       public         postgres    false    283            B           2606    49825    usuario usuario_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usu);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    285            D           2606    49827    utilizar utilizar_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT utilizar_pkey PRIMARY KEY (cod_sto, cod_tar, cod_uti);
 @   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT utilizar_pkey;
       public         postgres    false    287    287    287            E           2606    49828    act_con acordar_cod_con_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_con
    ADD CONSTRAINT acordar_cod_con_fkey FOREIGN KEY (cod_con) REFERENCES public.convenio(cod_con);
 F   ALTER TABLE ONLY public.act_con DROP CONSTRAINT acordar_cod_con_fkey;
       public       postgres    false    196    210    3042            F           2606    49833    act_con acordar_ide_ter_gkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_con
    ADD CONSTRAINT acordar_ide_ter_gkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 F   ALTER TABLE ONLY public.act_con DROP CONSTRAINT acordar_ide_ter_gkey;
       public       postgres    false    196    3122    272            G           2606    49838    act_cul actuar_cod_cul_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_cul
    ADD CONSTRAINT actuar_cod_cul_fkey FOREIGN KEY (cod_cul) REFERENCES public.cultivos(cod_cul);
 E   ALTER TABLE ONLY public.act_cul DROP CONSTRAINT actuar_cod_cul_fkey;
       public       postgres    false    212    197    3044            H           2606    49843    act_cul actuar_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_cul
    ADD CONSTRAINT actuar_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 E   ALTER TABLE ONLY public.act_cul DROP CONSTRAINT actuar_ide_ter_fkey;
       public       postgres    false    272    197    3122            I           2606    49848 &   agroquimicos agroquimicos_cod_ins_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.agroquimicos
    ADD CONSTRAINT agroquimicos_cod_ins_fkey FOREIGN KEY (cod_ins) REFERENCES public.insumos(cod_ins);
 P   ALTER TABLE ONLY public.agroquimicos DROP CONSTRAINT agroquimicos_cod_ins_fkey;
       public       postgres    false    235    199    3076            N           2606    49853    cliente cliente_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 F   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_ide_ter_fkey;
       public       postgres    false    3122    272    200            P           2606    49858    comprar comprar_cod_com_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comprar
    ADD CONSTRAINT comprar_cod_com_fkey FOREIGN KEY (cod_com) REFERENCES public.compras(cod_com);
 F   ALTER TABLE ONLY public.comprar DROP CONSTRAINT comprar_cod_com_fkey;
       public       postgres    false    204    3036    203            Q           2606    49863    comprar comprar_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comprar
    ADD CONSTRAINT comprar_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 F   ALTER TABLE ONLY public.comprar DROP CONSTRAINT comprar_ide_ter_fkey;
       public       postgres    false    203    272    3122            R           2606    49868    comun comun_cod_tar_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.comun
    ADD CONSTRAINT comun_cod_tar_fkey FOREIGN KEY (cod_tar) REFERENCES public.tarea(cod_tar);
 B   ALTER TABLE ONLY public.comun DROP CONSTRAINT comun_cod_tar_fkey;
       public       postgres    false    269    206    3118            S           2606    49873     contratos contratos_cod_con_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_cod_con_fkey FOREIGN KEY (cod_con) REFERENCES public.convenio(cod_con);
 J   ALTER TABLE ONLY public.contratos DROP CONSTRAINT contratos_cod_con_fkey;
       public       postgres    false    208    210    3042            Z           2606    49878    efectuar convenio_cod_con_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.efectuar
    ADD CONSTRAINT convenio_cod_con_fkey FOREIGN KEY (cod_con) REFERENCES public.convenio(cod_con);
 H   ALTER TABLE ONLY public.efectuar DROP CONSTRAINT convenio_cod_con_fkey;
       public       postgres    false    3042    210    220            T           2606    49883    cultivos cultivos_cod_lot_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivos
    ADD CONSTRAINT cultivos_cod_lot_fkey FOREIGN KEY (cod_lot) REFERENCES public.lotes(cod_lot);
 H   ALTER TABLE ONLY public.cultivos DROP CONSTRAINT cultivos_cod_lot_fkey;
       public       postgres    false    3082    241    212            U           2606    49888    cultivos cultivos_cod_ncu_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivos
    ADD CONSTRAINT cultivos_cod_ncu_fkey FOREIGN KEY (cod_ncu) REFERENCES public.nombre_cultivo(cod_ncu);
 H   ALTER TABLE ONLY public.cultivos DROP CONSTRAINT cultivos_cod_ncu_fkey;
       public       postgres    false    244    212    3086            V           2606    49893    cultural cultural_cod_tar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultural
    ADD CONSTRAINT cultural_cod_tar_fkey FOREIGN KEY (cod_tar) REFERENCES public.tarea(cod_tar);
 H   ALTER TABLE ONLY public.cultural DROP CONSTRAINT cultural_cod_tar_fkey;
       public       postgres    false    214    269    3118            Y           2606    49898    duenio dueño_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.duenio
    ADD CONSTRAINT "dueño_ide_ter_fkey" FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 F   ALTER TABLE ONLY public.duenio DROP CONSTRAINT "dueño_ide_ter_fkey";
       public       postgres    false    3122    218    272            \           2606    49903    ejecutar ejecutar_cod_con_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ejecutar
    ADD CONSTRAINT ejecutar_cod_con_fkey FOREIGN KEY (cod_con) REFERENCES public.convenio(cod_con);
 H   ALTER TABLE ONLY public.ejecutar DROP CONSTRAINT ejecutar_cod_con_fkey;
       public       postgres    false    3042    210    221            ]           2606    49908    ejecutar ejecutar_cod_cul_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ejecutar
    ADD CONSTRAINT ejecutar_cod_cul_fkey FOREIGN KEY (cod_cul) REFERENCES public.cultivos(cod_cul);
 H   ALTER TABLE ONLY public.ejecutar DROP CONSTRAINT ejecutar_cod_cul_fkey;
       public       postgres    false    221    212    3044            ^           2606    49913 (   email_tercero email_tercero_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.email_tercero
    ADD CONSTRAINT email_tercero_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 R   ALTER TABLE ONLY public.email_tercero DROP CONSTRAINT email_tercero_ide_ter_fkey;
       public       postgres    false    3122    222    272            d           2606    49918    fincas fincas_cod_dep_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fincas
    ADD CONSTRAINT fincas_cod_dep_fkey FOREIGN KEY (cod_dep) REFERENCES public.departamento(cod_dep);
 D   ALTER TABLE ONLY public.fincas DROP CONSTRAINT fincas_cod_dep_fkey;
       public       postgres    false    216    227    3048            e           2606    49923    fincas fincas_cod_mun_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fincas
    ADD CONSTRAINT fincas_cod_mun_fkey FOREIGN KEY (cod_mun) REFERENCES public.municipio(cod_mun);
 D   ALTER TABLE ONLY public.fincas DROP CONSTRAINT fincas_cod_mun_fkey;
       public       postgres    false    243    227    3084            f           2606    49928    fincas fincas_cod_unm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fincas
    ADD CONSTRAINT fincas_cod_unm_fkey FOREIGN KEY (cod_unm) REFERENCES public.unidad_de_medida(cod_unm);
 D   ALTER TABLE ONLY public.fincas DROP CONSTRAINT fincas_cod_unm_fkey;
       public       postgres    false    3136    227    283            g           2606    49933    fincas fincas_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fincas
    ADD CONSTRAINT fincas_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 D   ALTER TABLE ONLY public.fincas DROP CONSTRAINT fincas_ide_ter_fkey;
       public       postgres    false    3122    227    272            h           2606    49938 (   fitosanitaria fitosanitaria_cod_tar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fitosanitaria
    ADD CONSTRAINT fitosanitaria_cod_tar_fkey FOREIGN KEY (cod_tar) REFERENCES public.tarea(cod_tar);
 R   ALTER TABLE ONLY public.fitosanitaria DROP CONSTRAINT fitosanitaria_cod_tar_fkey;
       public       postgres    false    3118    229    269            �           2606    49943    sin_x_afe fk_afe_sin_x_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.sin_x_afe
    ADD CONSTRAINT fk_afe_sin_x_afe FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 D   ALTER TABLE ONLY public.sin_x_afe DROP CONSTRAINT fk_afe_sin_x_afe;
       public       postgres    false    3028    263    198            `           2606    49948    eta_x_afe fk_afe_x_eta_x_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.eta_x_afe
    ADD CONSTRAINT fk_afe_x_eta_x_afe FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 F   ALTER TABLE ONLY public.eta_x_afe DROP CONSTRAINT fk_afe_x_eta_x_afe;
       public       postgres    false    3028    224    198            x           2606    49953 $   procesos_fitosanitarios fk_afe_x_pfi    FK CONSTRAINT     �   ALTER TABLE ONLY public.procesos_fitosanitarios
    ADD CONSTRAINT fk_afe_x_pfi FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 N   ALTER TABLE ONLY public.procesos_fitosanitarios DROP CONSTRAINT fk_afe_x_pfi;
       public       postgres    false    198    253    3028            a           2606    49958    eta_x_afe fk_agr_eta_x_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.eta_x_afe
    ADD CONSTRAINT fk_agr_eta_x_afe FOREIGN KEY (cod_agr) REFERENCES public.agroquimicos(cod_agr);
 D   ALTER TABLE ONLY public.eta_x_afe DROP CONSTRAINT fk_agr_eta_x_afe;
       public       postgres    false    224    199    3030            O           2606    49963    comentarios_pfi fk_com_pfi    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentarios_pfi
    ADD CONSTRAINT fk_com_pfi FOREIGN KEY (cod_pfi) REFERENCES public.procesos_fitosanitarios(cod_pfi);
 D   ALTER TABLE ONLY public.comentarios_pfi DROP CONSTRAINT fk_com_pfi;
       public       postgres    false    202    253    3098            _           2606    49968    enfermedades fk_enf_x_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.enfermedades
    ADD CONSTRAINT fk_enf_x_afe FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 C   ALTER TABLE ONLY public.enfermedades DROP CONSTRAINT fk_enf_x_afe;
       public       postgres    false    198    223    3028            b           2606    49973    eta_x_afe fk_eta_x_eta_x_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.eta_x_afe
    ADD CONSTRAINT fk_eta_x_eta_x_afe FOREIGN KEY (cod_eta) REFERENCES public.etapas_crecimiento(cod_eta);
 F   ALTER TABLE ONLY public.eta_x_afe DROP CONSTRAINT fk_eta_x_eta_x_afe;
       public       postgres    false    224    3060    225            i           2606    49978    fitosanitaria fk_fit_pla    FK CONSTRAINT     �   ALTER TABLE ONLY public.fitosanitaria
    ADD CONSTRAINT fk_fit_pla FOREIGN KEY (cod_pla) REFERENCES public.planificacion(cod_pla);
 B   ALTER TABLE ONLY public.fitosanitaria DROP CONSTRAINT fk_fit_pla;
       public       postgres    false    229    3094    250            J           2606    49983    agroquimicos fk_for_agr    FK CONSTRAINT     �   ALTER TABLE ONLY public.agroquimicos
    ADD CONSTRAINT fk_for_agr FOREIGN KEY (cod_for) REFERENCES public.formulacion(cod_for);
 A   ALTER TABLE ONLY public.agroquimicos DROP CONSTRAINT fk_for_agr;
       public       postgres    false    3068    231    199            K           2606    49988    agroquimicos fk_iac_agr    FK CONSTRAINT     �   ALTER TABLE ONLY public.agroquimicos
    ADD CONSTRAINT fk_iac_agr FOREIGN KEY (cod_iac) REFERENCES public.ingredientes_activos(cod_iac);
 A   ALTER TABLE ONLY public.agroquimicos DROP CONSTRAINT fk_iac_agr;
       public       postgres    false    199    3074    234            l           2606    49993    incidencia_afe fk_inc_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.incidencia_afe
    ADD CONSTRAINT fk_inc_afe FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 C   ALTER TABLE ONLY public.incidencia_afe DROP CONSTRAINT fk_inc_afe;
       public       postgres    false    198    3028    233            �           2606    49998    tarea fk_lab_tar    FK CONSTRAINT     v   ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_lab_tar FOREIGN KEY (cod_lab) REFERENCES public.labores(cod_lab);
 :   ALTER TABLE ONLY public.tarea DROP CONSTRAINT fk_lab_tar;
       public       postgres    false    239    3080    269            s           2606    50003    partes_planta_afe fk_par_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.partes_planta_afe
    ADD CONSTRAINT fk_par_afe FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 F   ALTER TABLE ONLY public.partes_planta_afe DROP CONSTRAINT fk_par_afe;
       public       postgres    false    3028    198    248            u           2606    50008    planificacion fk_pla_pfi    FK CONSTRAINT     �   ALTER TABLE ONLY public.planificacion
    ADD CONSTRAINT fk_pla_pfi FOREIGN KEY (cod_pfi) REFERENCES public.procesos_fitosanitarios(cod_pfi);
 B   ALTER TABLE ONLY public.planificacion DROP CONSTRAINT fk_pla_pfi;
       public       postgres    false    250    253    3098            v           2606    50013    planificacion fk_pla_pla    FK CONSTRAINT     �   ALTER TABLE ONLY public.planificacion
    ADD CONSTRAINT fk_pla_pla FOREIGN KEY (cod_ppl) REFERENCES public.planificacion(cod_pla);
 B   ALTER TABLE ONLY public.planificacion DROP CONSTRAINT fk_pla_pla;
       public       postgres    false    3094    250    250            t           2606    50018    plagas fk_plg_afe    FK CONSTRAINT     x   ALTER TABLE ONLY public.plagas
    ADD CONSTRAINT fk_plg_afe FOREIGN KEY (cod_afe) REFERENCES public.afeccion(cod_afe);
 ;   ALTER TABLE ONLY public.plagas DROP CONSTRAINT fk_plg_afe;
       public       postgres    false    3028    198    249            |           2606    50023 $   recomendaciones_uso_agr fk_rus_x_agr    FK CONSTRAINT     �   ALTER TABLE ONLY public.recomendaciones_uso_agr
    ADD CONSTRAINT fk_rus_x_agr FOREIGN KEY (cod_agr) REFERENCES public.agroquimicos(cod_agr);
 N   ALTER TABLE ONLY public.recomendaciones_uso_agr DROP CONSTRAINT fk_rus_x_agr;
       public       postgres    false    3030    258    199            �           2606    50028    sin_x_afe fk_sin_sin_x_afe    FK CONSTRAINT     �   ALTER TABLE ONLY public.sin_x_afe
    ADD CONSTRAINT fk_sin_sin_x_afe FOREIGN KEY (cod_sin) REFERENCES public.sintomas_afe(cod_sin);
 D   ALTER TABLE ONLY public.sin_x_afe DROP CONSTRAINT fk_sin_sin_x_afe;
       public       postgres    false    3112    264    263            L           2606    50033    agroquimicos fk_tag_x_agr    FK CONSTRAINT     �   ALTER TABLE ONLY public.agroquimicos
    ADD CONSTRAINT fk_tag_x_agr FOREIGN KEY (cod_tag) REFERENCES public.tipo_agroquimico(cod_tag);
 C   ALTER TABLE ONLY public.agroquimicos DROP CONSTRAINT fk_tag_x_agr;
       public       postgres    false    273    199    3124            M           2606    50038    agroquimicos fk_tox_x_agr    FK CONSTRAINT     �   ALTER TABLE ONLY public.agroquimicos
    ADD CONSTRAINT fk_tox_x_agr FOREIGN KEY (cod_tox) REFERENCES public.toxicidad(cod_tox);
 C   ALTER TABLE ONLY public.agroquimicos DROP CONSTRAINT fk_tox_x_agr;
       public       postgres    false    3132    199    280            j           2606    50043    gozar gozar_cod_pro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gozar
    ADD CONSTRAINT gozar_cod_pro_fkey FOREIGN KEY (cod_pro) REFERENCES public.produccion(cod_pro);
 B   ALTER TABLE ONLY public.gozar DROP CONSTRAINT gozar_cod_pro_fkey;
       public       postgres    false    254    232    3100            k           2606    50048    gozar gozar_cod_tpr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gozar
    ADD CONSTRAINT gozar_cod_tpr_fkey FOREIGN KEY (cod_tpr) REFERENCES public.tipo_de_produccion(cod_tpr);
 B   ALTER TABLE ONLY public.gozar DROP CONSTRAINT gozar_cod_tpr_fkey;
       public       postgres    false    274    3126    232            m           2606    50053    insumos insumos_cod_unm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT insumos_cod_unm_fkey FOREIGN KEY (cod_unm) REFERENCES public.unidad_de_medida(cod_unm);
 F   ALTER TABLE ONLY public.insumos DROP CONSTRAINT insumos_cod_unm_fkey;
       public       postgres    false    3136    235    283            n           2606    50058    jornales jornales_cod_con_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.jornales
    ADD CONSTRAINT jornales_cod_con_fkey FOREIGN KEY (cod_con) REFERENCES public.convenio(cod_con);
 H   ALTER TABLE ONLY public.jornales DROP CONSTRAINT jornales_cod_con_fkey;
       public       postgres    false    210    237    3042            W           2606    50063     desarrollar labores_cod_lab_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.desarrollar
    ADD CONSTRAINT labores_cod_lab_fkey FOREIGN KEY (cod_lab) REFERENCES public.labores(cod_lab);
 J   ALTER TABLE ONLY public.desarrollar DROP CONSTRAINT labores_cod_lab_fkey;
       public       postgres    false    3080    239    217            o           2606    50068    lotes lotes_cod_fin_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.lotes
    ADD CONSTRAINT lotes_cod_fin_fkey FOREIGN KEY (cod_fin) REFERENCES public.fincas(cod_fin);
 B   ALTER TABLE ONLY public.lotes DROP CONSTRAINT lotes_cod_fin_fkey;
       public       postgres    false    241    227    3064            p           2606    50073    lotes lotes_cod_unm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lotes
    ADD CONSTRAINT lotes_cod_unm_fkey FOREIGN KEY (cod_unm) REFERENCES public.unidad_de_medida(cod_unm);
 B   ALTER TABLE ONLY public.lotes DROP CONSTRAINT lotes_cod_unm_fkey;
       public       postgres    false    3136    283    241            q           2606    50078     municipio municipio_cod_dep_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_cod_dep_fkey FOREIGN KEY (cod_dep) REFERENCES public.departamento(cod_dep);
 J   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_cod_dep_fkey;
       public       postgres    false    3048    243    216            r           2606    50083    otros otros_cod_ins_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.otros
    ADD CONSTRAINT otros_cod_ins_fkey FOREIGN KEY (cod_ins) REFERENCES public.insumos(cod_ins);
 B   ALTER TABLE ONLY public.otros DROP CONSTRAINT otros_cod_ins_fkey;
       public       postgres    false    235    3076    246            w           2606    50088    pre_sto pre_sto_cod_sto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_sto
    ADD CONSTRAINT pre_sto_cod_sto_fkey FOREIGN KEY (cod_sto) REFERENCES public.stock(cod_sto);
 F   ALTER TABLE ONLY public.pre_sto DROP CONSTRAINT pre_sto_cod_sto_fkey;
       public       postgres    false    3116    267    251            y           2606    50093 "   produccion produccion_cod_cul_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_cod_cul_fkey FOREIGN KEY (cod_cul) REFERENCES public.cultivos(cod_cul);
 L   ALTER TABLE ONLY public.produccion DROP CONSTRAINT produccion_cod_cul_fkey;
       public       postgres    false    212    254    3044            z           2606    50098 "   produccion produccion_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 L   ALTER TABLE ONLY public.produccion DROP CONSTRAINT produccion_ide_ter_fkey;
       public       postgres    false    254    3122    272            {           2606    50103     proveedor proveedor_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 J   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_ide_ter_fkey;
       public       postgres    false    3122    272    256            }           2606    50108    registrar registar_cod_com_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registrar
    ADD CONSTRAINT registar_cod_com_fkey FOREIGN KEY (cod_com) REFERENCES public.compras(cod_com);
 I   ALTER TABLE ONLY public.registrar DROP CONSTRAINT registar_cod_com_fkey;
       public       postgres    false    259    204    3036            ~           2606    50113    registrar registar_cod_sto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registrar
    ADD CONSTRAINT registar_cod_sto_fkey FOREIGN KEY (cod_sto) REFERENCES public.stock(cod_sto);
 I   ALTER TABLE ONLY public.registrar DROP CONSTRAINT registar_cod_sto_fkey;
       public       postgres    false    259    267    3116            c           2606    50118 #   fertilizantes semillas_cod_ins_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fertilizantes
    ADD CONSTRAINT semillas_cod_ins_fkey FOREIGN KEY (cod_ins) REFERENCES public.insumos(cod_ins);
 M   ALTER TABLE ONLY public.fertilizantes DROP CONSTRAINT semillas_cod_ins_fkey;
       public       postgres    false    235    3076    226                       2606    50123     semillero semillero_cod_ins_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semillero
    ADD CONSTRAINT semillero_cod_ins_fkey FOREIGN KEY (cod_ins) REFERENCES public.insumos(cod_ins);
 J   ALTER TABLE ONLY public.semillero DROP CONSTRAINT semillero_cod_ins_fkey;
       public       postgres    false    235    3076    261            �           2606    50128     semillero semillero_cod_tso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semillero
    ADD CONSTRAINT semillero_cod_tso_fkey FOREIGN KEY (cod_tso) REFERENCES public.tipo_semillero(cod_tso);
 J   ALTER TABLE ONLY public.semillero DROP CONSTRAINT semillero_cod_tso_fkey;
       public       postgres    false    276    3128    261            �           2606    50133    socio socio_ide_ter_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 B   ALTER TABLE ONLY public.socio DROP CONSTRAINT socio_ide_ter_fkey;
       public       postgres    false    265    272    3122            �           2606    50138    stock stock_cod_ins_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_cod_ins_fkey FOREIGN KEY (cod_ins) REFERENCES public.insumos(cod_ins);
 B   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_cod_ins_fkey;
       public       postgres    false    267    3076    235            X           2606    50143    desarrollar tarea_cod_tar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.desarrollar
    ADD CONSTRAINT tarea_cod_tar_fkey FOREIGN KEY (cod_tar) REFERENCES public.tarea(cod_tar);
 H   ALTER TABLE ONLY public.desarrollar DROP CONSTRAINT tarea_cod_tar_fkey;
       public       postgres    false    217    3118    269            [           2606    50148    efectuar tarea_cod_tar_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.efectuar
    ADD CONSTRAINT tarea_cod_tar_fkey FOREIGN KEY (cod_tar) REFERENCES public.tarea(cod_tar);
 E   ALTER TABLE ONLY public.efectuar DROP CONSTRAINT tarea_cod_tar_fkey;
       public       postgres    false    3118    220    269            �           2606    50153 $   tel_tercero tel_tercero_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tel_tercero
    ADD CONSTRAINT tel_tercero_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 N   ALTER TABLE ONLY public.tel_tercero DROP CONSTRAINT tel_tercero_ide_ter_fkey;
       public       postgres    false    3122    271    272            �           2606    50158 2   tipo_de_produccion tipo_de_produccion_cod_unm_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipo_de_produccion
    ADD CONSTRAINT tipo_de_produccion_cod_unm_fkey FOREIGN KEY (cod_unm) REFERENCES public.unidad_de_medida(cod_unm);
 \   ALTER TABLE ONLY public.tipo_de_produccion DROP CONSTRAINT tipo_de_produccion_cod_unm_fkey;
       public       postgres    false    274    283    3136            �           2606    50163 "   trabajador trabajador_ide_ter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT trabajador_ide_ter_fkey FOREIGN KEY (ide_ter) REFERENCES public.terceros(ide_ter);
 L   ALTER TABLE ONLY public.trabajador DROP CONSTRAINT trabajador_ide_ter_fkey;
       public       postgres    false    3122    281    272            �           2606    50168 .   unidad_de_medida unidad_de_medida_cod_tum_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.unidad_de_medida
    ADD CONSTRAINT unidad_de_medida_cod_tum_fkey FOREIGN KEY (cod_tum) REFERENCES public.tipo_unidad_medida(cod_tum);
 X   ALTER TABLE ONLY public.unidad_de_medida DROP CONSTRAINT unidad_de_medida_cod_tum_fkey;
       public       postgres    false    278    283    3130            �           2606    50173    utilizar utilizar_cod_sto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT utilizar_cod_sto_fkey FOREIGN KEY (cod_sto) REFERENCES public.stock(cod_sto);
 H   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT utilizar_cod_sto_fkey;
       public       postgres    false    3116    287    267            �           2606    50178    utilizar utilizar_cod_tar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilizar
    ADD CONSTRAINT utilizar_cod_tar_fkey FOREIGN KEY (cod_tar) REFERENCES public.tarea(cod_tar);
 H   ALTER TABLE ONLY public.utilizar DROP CONSTRAINT utilizar_cod_tar_fkey;
       public       postgres    false    287    3118    269               E   x�Uɹ�@ ��������5�Ko}k'��Evꨋq��\�7��Mnq����w��]�����	1            x�3�4�540�475�04����� %aT         �   x���A
�@EיS�*L�Apѭ+71�j@&0i]z#O�Ŝ���
���C�W#��;&B0�czH�I�m����C�h�AI4��^-���,���B�-ti�HIM�H�3��	r�����B7�~?���������ߝ���k�����9��7f�         �  x�]R�n1=���4-(�4��Az�r족dl��*�s?!?����ʻ�Yy��{��33�Dm	���8ݛk��66��|�4S�'�[�W�ֿ���f��48�噣Аԙ�uj��1�Ӻ���]�����	>$�\_��|5t����m�F*�d'��;Z��k�F���R��(Y;�K+�3�� �i�
v�v���]
�tHc�B��M��yO���E%����6������	��s�{61�Ι/>�ϲ���c|�1a����|u��Zo�4���|q��y�"����%���ѩ*UQ�Q�Hfe����Q�%s����	���E�Ol9w�D굼�>x�&&��v�{�"��#F�^�v�I�){y���;�ة��2���!�ԩ��6\?�q7���r3sR����=������������h0��C߆      	      x������ � �         ,   x�3�5�L,N"N##]S]CS.C�hE1��1'��=... ��[         8   x�Uɹ !A�&�C�.o.���T|�D�F@�u��Y��7|�7}��;O�th��         6   x�3�4202�50�54�46 .#1.cd!C#��	BȔ�,d�,5,F��� q�            x������ � �            x������ � �         3   x�3�4202�50�54�2BpL���eL�9��3d�92��c�̉���� �Z         J   x�3�4202�50�521ut�9M8�8o�/V0V�M-N-V02SH�L,� �8M,�9�b���� �            x������ � �         <  x�EPˎ� <�_�TUi�GP@J R���{�a��ď��]iO�{<��'���@ɕ�*��p	cH�q���(+&\ymQ6�o��e���e��M�فqV��(��ȹU��&P�k�i��7���k	S������3}��U3�����	f��=��h�W��b2B�r ��Dl+�\�'`�B�lcw�m�M�	֬������	�6rnWs����ÿ�����-,9�n{�^T�]ly:ß�[by��İYm��$no�,���p`������8����|����ۆ�m��p`�j"�yD�>�r{            x������ � �            x�3�4�540�475�04����� %aT         ,   x���  ��w;�w� ���s�L�A�Xn�IZ��c�^�o�i�         %   x�3�4�2bc 6bS 6bs � bK ����� g��         S   x�3�540�475�04�,��L�KtH�M���K���2K[���sf�&��[�p&���;$�d��ec���� ��^             x�3�5�4�5��,*-����� (��      !   �   x�����0E������R���:�~���}:'���
/�Ni"��c7��s���h�J���/Ao=]0QU�M�j����ЎA,�Ol)��!��q&�A��e���1��i^��x��v�k�t��3	�^�g�k/      "   N   x�3�5�(J-K�K�<�9��P׈ӣ4�,��4��I,*K1M8�s2sr�3N���Ģ����|��Ԕ�|�=... ��f      #   5   x�3�4�4�uL���WpJ,NUpIUp-.�<��(9?�sO����K����� VO      $   �   x��;�0@�:YE60���؀�V�6#���C䨻�w���uc�k�GN�%uڸ�3����*�1�I�V��	Ԯ�6��?�E��L0p��`��F��N`&xS�-�:���51�V`�[z�e��	�W���JJ�~�/�      &   .   x�3�4���4�5�2��4����8��,.cNNc0+F��� �1o      (   m  x���MN1�יS� ��{F�"DlظSe�O��m8��/S~�i�Q^����Ǯ���$�D}�b��ʭ�8��9�đv�uT2�\�$M��@"�R<ڝ\��S���?LN&1ؤ��0USw��3w��Ei�O����o=p��7F�$�m�#�02��Ԥ�^Ѝx�01�`�a��T�}�ڝ�u�,��3�y�ح{��i���1#Չ���V�4*��-2���`m��� �b�Lޢ�p��7�F��Ζ��+�a&B�;I��BA<�+�̝Qѣ�A�$F�~�fM�U�5&�5u�n|�_y�t�!��aڰ�5���V[�?�68뎲�m���p)5\L��i�4�â�Od�[      )      x������ � �      *      x������ � �      +   �   x�]���0Eg�+�� ��f`���P���&KI\�-*OJ6F�k�JW`"Y��B���t͌�ʴ�v
�g􁥠-�=	G7�w	Z��.��0�(��,�p���硠���O������6L(ĵ6�)�Rv��؍��E���R_a�:f      ,   �   x�m�1nAEk�)|��5��(!Hi�eK;Q,9��;��m8C����C�,���o��ޮ�����}q�Х����~K�+عK.��X�NF��!Z�8����^���J�C�Q�p�4H{ئ���p��2��&m��')����9�pH�{�~r�8�s��C���&�B^�=��0���=��x�|y_��� +�I�      .   F   x�=���0���0��ܻt�9AA�5�afrb���JO.T��*MW7z�ѝ��y84Y�1��}�t��      0   �   x�]�K�0D��)|�"`Y�Y#�e�����Oq�J�Sp1RJ+����<k6bO��s��h�aG�Hm��"��8{.�3|E�lg� ;qJ�4Y/[k2U��^Ogt�تi�z�1���`"#vT��"��A�VQ�8���1�H9��E��	k�\ WS;Y}.�K���Z(>���h=]� �7M�b2      2   *   x�3���/IU��I���4�542615��0�4�4����� �=W      4      x�m|�r˲�~Lʘ�~�)qS���V�� [T+���`��zף)CƉ�)���k��A��`f5�V�#Wf=��NV]U�5�~��`v�.ֻ�E?����Rs�� =� ��];����7���(���w��S�=�r~V��,��2i�ߪu1��\�]1K�#�sB?��#ߗ�4ֳ,>�J�����Oۻ����} ��%��^MU�|��(:��vRJ��x��	��E3����ofqp�Z�.���,M�`���0}�~����vCӣ �\���& �zS܏e7���6eC}����w�����Q@xC����[����b���=?^T%{pQ�v|������߶}�U-;> �B}�ZC@���B��_+���UQ�5iSl�
"�#�f=>�@���9�aBEٳ�l��z����+i2j�~;vQ8M[��ȣ�iVE���e��tLR3�-ۉ��=��XfD\O2&�m�z�"0mǺU# �%�u �_c5ؔ@�tź��C{��'L1��}�C���J#��;���$K�����[�c�m]���e׍��5��d_�.����Ƀ:1�n]��uK�1!�MQk:X�-���S�%tVBx�J��9?~Wc�}��\W������)T'�n���L�B��TR�Ώ����yÎO�k�oms�y� e?t�p
��Q͸ ������M�P�mY�|���7E��4��GL�������~����"x�j��e��U_��$`��Rv����2��
H9�Q�K��AOd�^��gD�U�o��d��Rm��d�4���x�_a��;��d���{�t�[���]i$�̩1��p3�-ט=���\#�uQ�w�0�S4���L����c@)�siyDq�����I��y�"A�V�	;4O��6��-�<;���8�dL^8ٜ��4w}�xm�Q"֡��ꡰb"���{I���at��� �-���S�n1rYXD���};��g�8��̇������z�*r���䘝�������A4o�z���X�4{���e���e,7L���--%�D����d������U�鋨b��_�
��{�Tc���HA7oG8����7e����U�9�`}���MBMt�I�CG��8�0]�uL���]�����:\���d^�0��+:Sݜ���l8�8�Hs�8A1]�e�rNl�G�<���S��r�Ԙ���<�l���=����;���^��@Q�v?[�<͌��j~�u�G�^�YJ��5�/"�Z�B<	�2J$��k����k�MqF�I�+���`����`��	�KE1�m��� ��@
�����v�ӌ�Mhj�����82�7�����0�+Q�#&d�"�
Փ*����n���=�����`��(V�[,���td[F�h2�[�n��U7$4��5D��P�H&p^�b}O�]��B"&K��m�"2�J҃�5nm�%ف�s�j;�)���i2?>�t�����l���RZ�!�i�~JskܗƠ~�(T��B~�Qg�BE1~*˰R~�rVM��bU�dCJ����ѽF�#j�S�Л�Li���E�vn.��NK����vZv���q�A���~��q���Pb��<�Dk*�>�����+��' ǝRdla�rBEM����A��ex���QR[�d�v�����n>(��+$T`��F�.*ω�j^�!����h80!O��=���|i���UA|p5����s��xBR&1w��O(]��L`�'���|A�	��
�������N���|P����-���-�Q,&��3�|��=oJpF� I�*$ ���R<����W�r"i {�ҙ*a��N�Φ^����D��`�ʁ����Y����� o�������]6�J�( y�¤�QL��N[7L��Z��� ��=�YU���(�o��n(�p6�-��Q�2�l`.��P�P($�^�m�.�늟��ס��@
�
���=r�^��d1Făa@k��UF��	��k�M����+���ӑ�F��y`'	�ɬݢ������miCI.�vel��Z�{���d����?�O2��O\��.�Y˕[�$&�qհ��f�����G*k�[�5��5�=��J��<�0���2 �u�C;�n1>L�r�X���n��0� �ٸ27���d�>�c���#���Wn=�Ơ�#U����}����M1�N֢r���'r�ȜXX�W��`MAp�|-Y'��;�O�V#��|5v�\�m�Q�)��N�)rP�ҋ�
�>�g��'���Ggi0��g����22��oN[V��I&vr����՟�ΐ�T+�%�̙\-w8�1g�jdF�2��4�X�d�,s��GS�`����_��i�� �~�ϱ\u��A�nΘ:o1H�1����ޭv?���!�!�E����bj"V�V�2¿N�^$sߣR8�c�"իp̋�c��+V(iU��o^�$�_��P����r�JD� �Y0�2�n|�����"r��i�fV�#�L�ɂ3z$7�B�7�6w���x��l�	��~[5
�BO`�ʯ��Z��;�F�?����N�=a]$3q�^�CHLf�VB��+U��
������;L��.*}�A}A]����v?���r�(q�����޶����	����X�䓬����.��P��|�2��6+y�0^d��&w�l�@��X:KY�w��2�m�, `�pVfz���8��(�NR0�2ql>z�<T�l� ǁ�+��>ܛ��d�YKc���=P 6�Zi�-Q����`��p@��6XA:{�le� ��\����:P��@CR�\4Q�'�9qU+ڥ��#)<JPpd���	AG���_5�"�G��v%��{(��ڹ������w.9�w9ž�PP��,�~G!(�=2ߡ�.$��{:w���[�"h��v@#
�C����Gdӏ���AE�9�\<����~Aj����Q�����0e�T`#S�x�7AHT���I �F���-A@6�Ϗ�1���5p�
�B�ӹ��c��y�v�M�[��S�r��H�'���t��ޒb:Gp��͈�t�T�)Q�j�4���iq���[ti��S� '�3DF\j1���E�q��Tw�R�����T3irx�� $i:˯Cp�o���0�H��A�ęB2����$)���)���������VzQX.�w~Tc.�0,`A������iݢI�G�D�sa��,υo�Z��B�t����ƭ�����u�G�`�5yB5�?T��� ���P�%�0��j"O��\*�L[��9`Z5����_G^f�E��[ے�|"��65#�P�]g[�O��g�Hq�$s�i��s�&U ���!F`#���l~��M����G!�?�ō�2�VG��=�Bl$fx�:;؀��@,�u�v+��A���X%�@|(5�X只�ӷ���7���Z*��f+&�?L�gh k̪�\���"p��f�k��مNU0U"���V��X�#۪��2�]����"0�E?l�I£@���������ŀ\���8OnTA
F�H��&h�3E���7>�o�~2/�@�H��b����0t���$&឵��9��P��_=BT���(�0> er�1a| R���l%x����m|@��N-"�e1w'P��qI,SZ��?�Aw_�y��F���Ȇ�%Мʑ[3�)��	�\B(e&i�]&�t��E$.�6i#p
�-pD���4ߒ�t?䉠҉�U���S#�!�P��݋U�1zWQzX�(�F�̉��e�\7�W\d�\�_�RqUv��N�S���Q*��I���=�ʆ��}���~Nc'͏,�x�-����G�����R�5w�Ls'?Z�e�����8��#�Lh?�<��τ�cU�s9�3a]����Kד	��5�2��Ը��(Ke~�(�ѣ,;T��SH?M�dQ.���{���{�����Z_� |��8��+��cSu�U�dN�+0�    cD9��4��遪'`���'��#��%B��N�b��e�ԝ�`�K�Owb��e��j�����.K�~��}� �}_�AK���3?��.1�m5� �K|��ҍAB��_��7e.%'fmv��#�����]P51���AI���鸜 �؍<ca!0��*��1��r�sUX���.wo�G�W����#���Zt>�@IZ<F�j1���׍�FWQL&�*�РI$Dw�Y�������5v|>�*�<��W1D ��࣫�;׺����j�L<A'��'+��p���[�%І��2�$�<�@��?�H��%kL���q��!�7Փm\aC�o,*�CBƌ�W1Qs?&c1Ao�@��O!Qw���qz8&��f�sɊ� F�D�������0`k�u���ll���u�\,�Ib7֊����x
�}* ���]��U����c0dQ0�\R{����Lg���N�]H}�'�g'�7�������2�;�ƥ�Ơ2�cXg�<vU)݀/�AbW����&�$v�ɩɤ������4 !{LvUvf�Ů�5��Yh<��=��u�y�� @^W���e��a����.X���.�QIr�
v�X����`'�L�r'�1�I�u��?�S�T�[�l5Lה��u�&4��r��|ԔL	�mò<y�?)�vv�&�D��W�|�e��fAD�y/2ZF����$Έ��ٚo]��L�6Ȉbc�31��j�SJ(!��c0���dW@BW�g���t�6�� �I"FоA@����q��.u���#
��vb�{�\5��k�/��k��M�v�L1X溪]����]�_��U�I�/����hZw��6P�ww�@-׭%@,��\�m�/T2�Q������2���X����E'(�Qn��t���^^�AF�	îM�*��`��7sU����@%���V�wbϙk����Nn������f�i�u �ٍ�4��p�M׮�D*�ᖴ�+��hwJ��Gnzzq}��y }�5��Bɷ��	�
�R�Xw��Sqe-<`HuE�H��7���aku��/9�\�P\�(�
�9�a|��Uo��G�N�q28E�u�03����ȓ,;dI�\%��$�7s��� "�nU�vO/�x��yG�c��\NC��]%c#�m��m�.�޳\�V�}B�.�O""���q�$"б�Zb�|t�R"��8�q0iou��* %�?��3,JM9��aQ6}U?�<~ ��-�o���n��O@
���U/��=�t��� l0��y:j���f�C��	�"fcyfbX ��CN@�İ�r�V�a!�o�pâj�3�I�
���S�$%2�_p֤�	h�D�6�H`a��!	P��o]����o*����Q�mme��p[	�"X��NL�h�
�d1�`��Ё� 'ƚ@���9C����hXt�pw�ի��W���
��u;�ioЁ����"Ђ��2C�@�L�uv䓀L�P���E,l���XW-#^����E�	��‘��rU��{k�j!�+_.j%y2i��F� }Ѣ%N�vI����Y4�/��a1/Ez��/��Uw���'�yQ�N����iC-���޺˒q���T�7YN�]�����f^j{�*�[i�)�F���S/;�hi �J��}��~@��mӘ�T��Tl���t�2�h����{��$3Ą�J��E� ibG���{s�`�Soβ���+�7����GU�zzJ�jۼL}Z򲛕���\�1?�=�f\�[L�U_���L�7[����+N�����B�<��u`L��4GA7���?v��%G��x�Q)�E����O&�m)��c���̂� nV��	o���]h���?(��5�Q�j��w[ܷ�C�N�R��-��W�X8�ݖk���y� ����$��`q��GU)��;A�^�K}��]�ڴ ��e��\w�̽�0������30�-�k��Y{J�N��2���Z��>��+ML-S��m���%^)����_+��nە����G)�ŏ��H�'� �����7�zv(h��
�S��-<���OA{�<�WH�O��n"�I�A��.�I�q\W�8S��4��?9H�?i@��o��Rei	Z	R�U��Mfu˄�Z���dС��U�S�L�U[�J�o@��4�i�~�H���������K�XOA����N|
��>��N���o���W��ք3�t��&�m\���鋬2ɼW�5�=F�Q5G%#�ZW0��2▻B��m&I�PbS��Jg�,2��GK3��lG7!�K3"���1��f��jM=�V������K�C��r�lĒ{�
-8긤Յ��s?f���hu�4�1�2ϔG��mٸ��ih�'��NF�Sw���k�*�^�Jc�2�y����6lt�y�S��o�{���ʼ�@�c��`���^��yS]�2/z�S3fשR�����<��LC�63���(�|Vf��y����~i�����E�%�Sm�����~S"�|3�o���7#>����5�lM/ZTh�|(y*[m�u3�C�#����f{��������;����������텅��l���=�>uv�5�W5{@�7l)������Ye�[�K����>����YS#H_L�Re���A^�q�d�]�J�x��Y�*0�]�Q�W���b�]�,�mO>$	�}	�A�������Z5�/�J\����!���E��(�e���3Ѥ��B3����ʲț4�d\��JE�Qp�z�&
]�`OH��̹�����uj8��@#)-��"��A PB3Ȯ����@�ފ�����V��Vf���W�#d���
@��������j(~]�2�q�Jj^��̏͐��kQ����m-w�b3�c��]4��e���V�<� �e����iԕ��&�o؆n���o�q�X�^;��_��]��Yz��b/,W\G bqR�x�Px�K�Pf�+U{��v~|��G�V�e
3^}��+'ȶr����X��@�����*��N�3�,<Ǻx����r��uAx����Q��3����ߒ) a�E_�J���ҩ.�-%?���J��6{Q�k�Y����-[6Ͱ�^���4�Yp���H"C��e�oE7��i�V�B���řůkD��5����3�,����~��ɜ���mL���ܚ��u/��f�����,�1���BP�Y��Nw2�a��H�{=�3�F�9>���V��e������{f
R:���n\����v�s�$�i��3��)(��7_�3&A���3
){>�#�Q��v>�GrF�E�Ś��G�*����5�Ȏ�tT��C�5�=7~�8�]��a ��]�\T��{�v_�����VT����>/gP/�P"���b�*�#wׅ�j�{�꜒۝�+�M�	��`5gH q�)0�����)'����� �����nF)��n���v�[�k�S"jz;[��������|FIL[>,]����-�=ˉ���d�vS���[ޕ�Ώr�p;�e-
^�AήM����-o�v��K{VY�{����a�	22�-#���i��rR︚���|��E��s%����v,��pNv��Ą��*F�t:v�e��\:��w��^�7'�����}sW�r�'ώ��G�O*J�*)'�gx���ɞN���I��g��c���%uo~�~�Ζ��.P����t?'9.���ۉ�@���>W����pᒻ,X�9Xp���1���{�B���"H]�,=G�8��=�-y�[ih�z=�M��ws/!.t覴�!yJHS��Je�eٸ���]��Ԣ�@�n��j����,��Z8�˲�6�J@A$Y�����G�t�B�ظ�6�طvF��K W�����@ �~���R\j{���(��e�l
� q���0� *������������.j�~9��{{$����o4�9����	aVX�n���/g{9������\�l�C�D��+�؁&F� �b."����wpX`��f��_�[����с�jz O  #�yֽ<Q�<B�0QMo�=�t_ž.^N������~=�����,G�j�2��@o�==0�r�L/=�rl�����!�ө9�6��Cz` ɚ9R�R��<����Qb�L<	��M�����t�2� ��/�t�z:�*�}ZM��!���}��Ӟ6!��O�%g8��S3}���{���&�U��X^B�w��������7�+�0~S�I{ �Z�z�� (����A|��~7|�F��
����>�$�慎�|Fَ_4� ���n���,?����oE�=@��/�G #\mƮ _��d�+6P�Tm��z�8��j+���;���@nt�ۺ6Sjʵ3$������p�ol@,('�"��s������?�)�n���A-�u!E= ^�\!�q_vu��O�!�}����\}�W�z�{�g�P��t@���1��r�_�r&�����Qɽ�Y����ޟ&H:{�m���$4�ƥ�tId�Fo����P��$�*uK����g��ݛ����V�p�Ίf�k{g�?iyC�OнԬ(7T)h�iy������a�u]J�R)3ܪ&|�z�hp���>�) �?���lyԩxg���'��:c!(|(�t��g�Wz����O��٣d������N�I�S�Po�f7����R���ȫo&e�/����q���������Qa��O�˓�ٻ�����-�c{�/z��d��Y�7���KytB;�<��	������}H�̾�����@`� ����f����}���<�ZOg������ep����Q�z4����KD����t����Ɵ,�      5   4   x�3�4���M,IUpIU8��()?��!�_txs�1B�9?��+F��� N��      7   X   x�3�4�4�uO,.�W(�/RH��KN- rRR��2S�R�8Mp+�),��I-�SsRsS�J򋹌9Mq�()J,���*p��qqq  �*�      9   &   x�3�5�T���J,�2�5�2 l�����b�=... ��	i      :   #   x�3�5�4�5���+NM.����b0~� ���      ;   �   x��α
�0���+�F���]�'�@��MJD�ޗ�m�
��νDr	�~��X\m�C�S�u��\.5�}�! ��l$W�'l��WQ-�;ط�$��cx�O!B�f�����3�h�n�����6�$�$]B��:\6�����r����z��.[��8�R�      <   [   x�m���0�0EHc$jg��s�Jy���ϝ�PTxk�\�%�N@º��kl��B����^�6��H���S\ C'�3?�Z�      >   I   x�3�5�4202�50�56����4�5�t.-JL�<�9�ăț��@�P����LSsP$��"���qqq D�"W      ?      x������ � �      A      x�3�4�542�014244������ $�B      C   9   x�3�5�L)N�2�5�L-JK-**/J-*O-��r'� i3��4 �3�Ҹb���� ��      D      x�3�4�2bcNc.N.SNS�=... '�      F   I   x�3�4A݀���JJs�\RB�sKRA�����s��8��P�����ZT���v��S��/J����� �[!�      H      x�3�5�4�5�2�5�1z\\\ $       I   @   x�3�5�tN�LITHI�QH+*-��2�5��M,J��,I��L�+�J*�$+d�g%s��qqq m�      J      x������ � �      L   (   x�3�44��2����F��f\&@�)�)�4����� Z�      N   �   x�}�M� F�p�^�f��V/`<����ր�x{�6�f�o^>@�@A�G�Z��  ��P��(UkA^��������kBf��%}��>�@%m�/k�D6��#��Z�(0�oI5�Ҫ��������rw�ͭÅ�f�����1����s�+�˼�)q��NJ�r�`      P   @   x����@��ҋ>�{��:��qp ���@K�٘��?n���[��{j
r�rU�6�      Q   z   x�=�=�0���_�^��8��R\�{C�@j�?�/p{��g\��EÑ�E�A�Q��6Ae���7Ǧ�u�n�����vRֿo'W�<b͞��J6�:J_��V�<���s����'�      R   C   x�3���+NM.�L�LI�2�t+�K���9��KR� <N�Ԣ$۔�/57�Ō3 �ʎ���� F�      S      x�3�4�u/*M-��44����� /c2      U       x�3���M,IUHIU8��()?�+F��� d�s      W   ?   x�3�.-H-J�L�2��M,N�2�tN�+�LIL�2����K�,)M�2���)�M������ Ѕ      Y   >   x�3��L�����2��L���9==9s�2sr�L�< ��4�˔�3�3,�(%�+F��� �$�      Z      x�3�4�540��05321����� %�W      \   �   x�e�9�0D����D68[�P�ti�b��H,�r�|C�"�G���IPV�Џ����$�Q�|@CS���}�_(ւR��K����E��v�v�c'D���8sW��8�Y4;#�=.��M]F���[uS�j}���
Yu��l�t@)�$廮� ��Yg�����G�{��_^�&8�~
��\�mCD/�CR�      ^      x�3�LL��̃�\1z\\\ 8Z      `   T   x�=˹ !C��*f_��+Go�PQ�!�OT]Q�rv��S�
*[IM�S/M��n�mw��a�I���"kXv��C:�     