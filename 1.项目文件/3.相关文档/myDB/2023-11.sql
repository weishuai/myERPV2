PGDMP                     
    {            crmwf    14.8    14.8 J   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    107341    crmwf    DATABASE     P   CREATE DATABASE crmwf WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE crmwf;
                openerp    false            �            1259    107342    account_tag    TABLE     �  CREATE TABLE public.account_tag (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.account_tag;
       public         heap    openerp    false                       1259    572505    accounting_voucher    TABLE     �  CREATE TABLE public.accounting_voucher (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    title character varying(255),
    account_number character varying(255),
    type character varying(255),
    bill_reference character varying(255),
    statement_date date,
    accounting_date date,
    payment_reference character varying,
    payee_bank character varying(255),
    payment_terms character varying(255),
    journal character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 &   DROP TABLE public.accounting_voucher;
       public         heap    openerp    false                       1259    572512    accounting_voucher_list    TABLE     �  CREATE TABLE public.accounting_voucher_list (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying(255),
    note character varying(255),
    landed_cost character varying(255),
    type character varying(255),
    subject character varying(255),
    analysis character varying(255),
    number numeric,
    unit character varying(255),
    price numeric,
    tax numeric,
    subtotal numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 +   DROP TABLE public.accounting_voucher_list;
       public         heap    openerp    false            �            1259    107347    activity    TABLE     �  CREATE TABLE public.activity (
    id character varying(255) NOT NULL,
    mid character varying(255),
    types character varying(255),
    subject character varying(255),
    starts timestamp(6) without time zone,
    ends timestamp(6) without time zone,
    all_day_event bigint,
    attendees1 text,
    attendees2 text,
    related_type character varying(255),
    related_to character varying(255),
    event_type character varying(255),
    location character varying(255),
    description character varying(255),
    collaborate1 character varying(255),
    collaborate2 character varying(255),
    priority character varying(255),
    status character varying(255),
    attachment character varying(255),
    email_to character varying(255),
    cc character varying(255),
    send_mine character varying(255),
    contact character varying(255),
    sender_number character varying(255),
    receiver_number character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    mtable character varying(255),
    caller character varying
);
    DROP TABLE public.activity;
       public         heap    openerp    false            �            1259    107352 
   attachment    TABLE     �  CREATE TABLE public.attachment (
    id character varying(255) NOT NULL,
    owner_id character varying(255),
    owner_type bigint,
    "dateUploaded" timestamp(6) without time zone,
    name character varying(255),
    upload_user_id character varying(255),
    "when" character varying(255),
    is_del bigint,
    url text,
    mimetype character varying(255),
    size bigint,
    mid character varying(255)
);
    DROP TABLE public.attachment;
       public         heap    openerp    false            �            1259    107357    attence    TABLE     c  CREATE TABLE public.attence (
    id character varying(255) NOT NULL,
    name character varying(255),
    date timestamp(6) without time zone,
    check_in_time timestamp(6) without time zone,
    check_in_temperature timestamp(6) without time zone,
    check_in_place character varying(255),
    check_in_address character varying(255),
    check_in_notes character varying(255),
    check_out_time timestamp(6) without time zone,
    check_out_temperature character varying(255),
    check_out_place character varying(255),
    check_out_address character varying(255),
    check_out_notes character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.attence;
       public         heap    openerp    false                       1259    572519 	   bank_cash    TABLE     �  CREATE TABLE public.bank_cash (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    report character varying(255),
    fhdate date,
    lable character varying(255),
    refer character varying(255),
    partners character varying(255),
    amount_money numeric,
    serial_number character varying(255),
    notes text,
    type character varying(255),
    accounting_voucher character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.bank_cash;
       public         heap    openerp    false                       1259    572498    batch    TABLE     �  CREATE TABLE public.batch (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    titel character varying(255),
    product character varying(255),
    number character varying(255),
    code character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.batch;
       public         heap    openerp    false                       1259    428763    bom    TABLE     
  CREATE TABLE public.bom (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    product character varying(255),
    code character varying,
    product_telm character varying,
    bom_type character varying,
    number numeric(6,0),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.bom;
       public         heap    openerp    false                       1259    428770    bom_product    TABLE     �  CREATE TABLE public.bom_product (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying,
    number numeric,
    unit character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.bom_product;
       public         heap    openerp    false            �            1259    107362    campaign    TABLE       CREATE TABLE public.campaign (
    id character varying(255),
    name character varying(255),
    starts timestamp(6) without time zone,
    ends timestamp(6) without time zone,
    owner character varying(255),
    budget bigint,
    status character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.campaign;
       public         heap    openerp    false            �            1259    107367    client    TABLE     =  CREATE TABLE public.client (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(800),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    type character varying(255),
    account_owner character varying(255),
    reg_number character varying(255),
    industry character varying(255),
    phone_number character varying(255),
    website character varying(255),
    fax_number character varying(255),
    street character varying(255),
    city character varying(255),
    state character varying(255),
    post_code character varying(255),
    country character varying(255),
    don character varying(255),
    ref character varying(255),
    additional_field4 character varying(255),
    additional_field5 character varying(255),
    gender character varying(255),
    date_birth timestamp(6) without time zone,
    language character varying(255),
    income character varying(255),
    marital character varying(255),
    children character varying(255),
    accounts_type character varying(255),
    account_tag character varying(255),
    client_state character varying(255)
);
    DROP TABLE public.client;
       public         heap    openerp    false            �            1259    107372    contac_person    TABLE       CREATE TABLE public.contac_person (
    id character varying(255) NOT NULL,
    client character varying(255),
    name character varying(255),
    no character varying(255),
    email character varying(255),
    islogin character varying(255),
    login character varying(255),
    password character varying(255),
    isnotification character varying(255),
    isemail character varying(255),
    description character varying(800),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    job_title character varying(255),
    account character varying(255),
    phone_number character varying(255),
    mobile_number character varying(255),
    fax_number character varying(255),
    gender character varying(255),
    date_birth timestamp(6) without time zone,
    language character varying(255),
    income character varying(255),
    marital character varying(255),
    children character varying(255),
    street character varying(255),
    city character varying(255),
    state character varying(255),
    post_code character varying(255),
    country character varying(255),
    emergency character varying(255),
    security_course character varying(255),
    additional_field3 character varying(255),
    additional_field4 character varying(255),
    additional_field5 character varying(255),
    is_alert character varying(255)
);
 !   DROP TABLE public.contac_person;
       public         heap    openerp    false            �            1259    107377    country    TABLE     �  CREATE TABLE public.country (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.country;
       public         heap    openerp    false            �            1259    107382    currency    TABLE     �  CREATE TABLE public.currency (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    rate character varying(255),
    source character varying(255)
);
    DROP TABLE public.currency;
       public         heap    openerp    false            �            1259    107387    customization    TABLE     <  CREATE TABLE public.customization (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    rate character varying(255),
    source character varying(255),
    format character varying(255),
    value character varying(255),
    "table" character varying(255)
);
 !   DROP TABLE public.customization;
       public         heap    openerp    false            �            1259    107392    delivery_item    TABLE     �  CREATE TABLE public.delivery_item (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    "detailsId" character varying(255),
    qty character varying(255),
    balance_qty character varying(255),
    unit character varying(255),
    remarks character varying(255),
    mid character varying(255),
    details_id character varying
);
 !   DROP TABLE public.delivery_item;
       public         heap    openerp    false            �            1259    107397    delivery_order    TABLE     �  CREATE TABLE public.delivery_order (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    ref_number character varying(255),
    linked_invoice character varying(255),
    delivery_name character varying(255),
    client_company character varying(255),
    delivery_date timestamp(6) without time zone,
    client_contact character varying(255),
    creator character varying(255),
    post_code character varying(255),
    street character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    terms_conditions character varying(255),
    remark character varying(800)
);
 "   DROP TABLE public.delivery_order;
       public         heap    openerp    false            �            1259    107402    exchange_rate    TABLE     �  CREATE TABLE public.exchange_rate (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.exchange_rate;
       public         heap    openerp    false            �            1259    107407    feedback    TABLE     �  CREATE TABLE public.feedback (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.feedback;
       public         heap    openerp    false            �            1259    107412    fhcrm_table1    TABLE     i  CREATE TABLE public.fhcrm_table1 (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fh_f1 character varying(255),
    fh_f2 text,
    fh_f3 boolean,
    fh_f4 integer,
    fh_f5 timestamp(6) without time zone,
    fh_f6 date,
    fh_f7 timestamp without time zone,
    fh_f8 integer,
    fh_f9 numeric,
    fh_f10 numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
     DROP TABLE public.fhcrm_table1;
       public         heap    openerp    false            3           1259    761748    fhfault    TABLE       CREATE TABLE public.fhfault (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 integer,
    fhf2 numeric,
    fhf3 character varying(255),
    fhf4 date,
    fhf5 integer,
    fhf6 character varying(255),
    fhf7 character varying(255),
    fhf8 numeric,
    fhf9 character varying(255),
    fhf10 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhfault;
       public         heap    openerp    false            9           1259    762074    fhinspection    TABLE     M  CREATE TABLE public.fhinspection (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 date,
    fhf2 character varying(255),
    fhf3 character varying(255),
    fhf4 character varying(255),
    fhf5 character varying(255),
    fhf6 character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
     DROP TABLE public.fhinspection;
       public         heap    openerp    false            6           1259    762053    fhmeasuring    TABLE     R  CREATE TABLE public.fhmeasuring (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 date,
    fhf2 numeric,
    fhf3 character varying(255),
    fhf4 integer,
    fhf5 integer,
    fhf6 integer,
    fhf7 character varying(255),
    fhf8 integer,
    fhf9 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhmeasuring;
       public         heap    openerp    false            7           1259    762060    fhreform    TABLE     (  CREATE TABLE public.fhreform (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 character varying(255),
    fhf2 character varying(255),
    fhf3 character varying(255),
    fhf4 character varying(255),
    fhf5 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhreform;
       public         heap    openerp    false            :           1259    762081 	   fhrunning    TABLE     p  CREATE TABLE public.fhrunning (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 character varying(255),
    fhf2 character varying(255),
    fhf3 character varying(255),
    fhf4 numeric(255,0),
    fhf5 numeric,
    fhf6 numeric,
    fhf7 date,
    fhf8 character varying,
    fhf9 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhrunning;
       public         heap    openerp    false            8           1259    762067    fhservice_plan    TABLE     �  CREATE TABLE public.fhservice_plan (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 date,
    fhf2 character varying(255),
    fhf3 character varying(255),
    fhf4 timestamp without time zone,
    fhf5 timestamp without time zone,
    fhf6 timestamp without time zone,
    fhf7 character varying(255),
    fhf8 character varying(255),
    fhf9 character varying(255),
    fhf10 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 "   DROP TABLE public.fhservice_plan;
       public         heap    openerp    false            0           1259    761720    fhservicetb    TABLE     ^  CREATE TABLE public.fhservicetb (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf0 date,
    fhf1 integer,
    fhf2 numeric,
    fhf3 character varying(255),
    fhf4 date,
    fhf5 integer,
    fhf6 character varying(255),
    fhf7 character varying(255),
    fhf8 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhservicetb;
       public         heap    openerp    false            5           1259    761762    fhtest    TABLE     )  CREATE TABLE public.fhtest (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 integer,
    fhf2 numeric,
    fhf3 character varying(255),
    fhf4 date,
    fhf5 integer,
    fhf6 character varying(255),
    fhf7 text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhtest;
       public         heap    openerp    false            4           1259    761755    fhtest_fht1    TABLE     A  CREATE TABLE public.fhtest_fht1 (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhf1 integer,
    fhf2 numeric,
    fhf3 character varying(255),
    fhf4 date,
    fhf5 integer,
    fhf6 character varying(255),
    fhf7 date,
    fhf8 boolean,
    fhf9 character varying(255),
    fhf10 character varying(255),
    fhf11 character varying(255),
    fhf12 character varying(255),
    fhf13 character varying(255),
    fhf14 character varying(255),
    fhf15 date,
    fhf16 numeric,
    fhf17 numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.fhtest_fht1;
       public         heap    openerp    false            2           1259    761734    hr_contract    TABLE       CREATE TABLE public.hr_contract (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    staff character varying(255),
    department character varying(255),
    job character varying(255),
    company character varying(255),
    paystructure character varying,
    startdate date,
    firstcontractdate date,
    enddate date,
    workarrangement character varying(255),
    hrsupervisor character varying(255),
    wages numeric,
    fhtxt text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.hr_contract;
       public         heap    openerp    false            �            1259    107422    industry    TABLE     �  CREATE TABLE public.industry (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.industry;
       public         heap    openerp    false                       1259    572477 	   inventory    TABLE     �  CREATE TABLE public.inventory (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    title character varying(255),
    "position" character varying(255),
    job_date date,
    warehouse character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.inventory;
       public         heap    openerp    false                       1259    572484    inventory_list    TABLE     �  CREATE TABLE public.inventory_list (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying(255),
    unit character varying(255),
    "position" character varying(255),
    batch character varying(255),
    package character varying(255),
    owner character varying(255),
    theoretical numeric,
    actual_quantity numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 "   DROP TABLE public.inventory_list;
       public         heap    openerp    false            �            1259    107427    invoice_details    TABLE       CREATE TABLE public.invoice_details (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    linked_uotation character varying(255),
    invoice_number character varying(255),
    invoice_status character varying(255),
    invoice_name character varying(255),
    account character varying(255),
    sales_person character varying(255),
    client_contact character varying(255),
    currency character varying(255),
    invoice_date timestamp(6) without time zone,
    due_date timestamp(6) without time zone,
    tech_name character varying(255),
    tracking_no character varying(255),
    additional_field3 character varying(255),
    additional_field4 character varying(255),
    remark character varying(255),
    client_number character varying(255),
    tax character varying(255),
    over_date double precision,
    is_alert character varying(255),
    total_amount double precision,
    client_po_number character varying(255),
    ref_number character varying(255),
    paid_amount double precision,
    outstanding_amount double precision
);
 #   DROP TABLE public.invoice_details;
       public         heap    openerp    false            �            1259    107432    invoice_item    TABLE     9  CREATE TABLE public.invoice_item (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    qty character varying(255),
    unit character varying(255),
    unit_price character varying(255),
    remark character varying(800),
    mid character varying(255)
);
     DROP TABLE public.invoice_item;
       public         heap    openerp    false            �            1259    107437    invoice_payment    TABLE     n  CREATE TABLE public.invoice_payment (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    invoice_id character varying(255),
    date timestamp(6) without time zone,
    method character varying(255),
    ref_no character varying(800),
    payment_amount character varying(255),
    remark character varying(255),
    mid character varying(255),
    photo character varying(255)
);
 #   DROP TABLE public.invoice_payment;
       public         heap    openerp    false            �            1259    107442    job    TABLE     �  CREATE TABLE public.job (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    title character varying(255),
    wi_type character varying(255),
    clients character varying(255),
    enabled character varying(800)
);
    DROP TABLE public.job;
       public         heap    openerp    false            �            1259    107447    job_item    TABLE       CREATE TABLE public.job_item (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    step character varying(255),
    title character varying(255),
    template character varying(255),
    require character varying(800),
    mid character varying(255),
    photo character varying(255)
);
    DROP TABLE public.job_item;
       public         heap    openerp    false            �            1259    107452    language    TABLE     �  CREATE TABLE public.language (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.language;
       public         heap    openerp    false            �            1259    107457 	   leadpools    TABLE     �  CREATE TABLE public.leadpools (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.leadpools;
       public         heap    openerp    false            �            1259    107462    leads    TABLE     C  CREATE TABLE public.leads (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    job_title character varying(255),
    company character varying(255),
    industry character varying(255),
    website character varying(255),
    email character varying(255),
    phone_number character varying(255),
    mobile_number character varying(255),
    fax_number character varying(255),
    remark character varying(255),
    lead_owner character varying(255),
    lead_pool character varying(255),
    campaign character varying(255),
    source character varying(255),
    street_road character varying(255),
    city character varying(255),
    ctate character varying(255),
    post_code character varying(255),
    country character varying(255),
    satus character varying(255),
    linked_in character varying(255)
);
    DROP TABLE public.leads;
       public         heap    openerp    false            �            1259    107467    monthly_goal    TABLE        CREATE TABLE public.monthly_goal (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    target_number character varying(255),
    type character varying(255),
    team_id character varying(255),
    personal_id character varying(255),
    by_type character varying(255)
);
     DROP TABLE public.monthly_goal;
       public         heap    openerp    false                       1259    572435    mybom    TABLE       CREATE TABLE public.mybom (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    product character varying(255),
    code character varying(255),
    product_telm character varying(255),
    bom_type character varying(255),
    number numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.mybom;
       public         heap    openerp    false                       1259    572442    mybom_product    TABLE     �  CREATE TABLE public.mybom_product (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying(255),
    number numeric,
    unit character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.mybom_product;
       public         heap    openerp    false            <           1259    762109    mytbmatching    TABLE     p  CREATE TABLE public.mytbmatching (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhdate date,
    sampledate date,
    documentnumber character varying(255),
    customercode character varying(255),
    customername integer,
    samplename character varying(255),
    numbe integer,
    component character varying(255),
    appearancestyle character varying(255),
    requirements character varying(255),
    technology character varying(255),
    cmyheck integer,
    registration integer,
    quotation integer,
    manufacturingorders integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
     DROP TABLE public.mytbmatching;
       public         heap    openerp    false            ;           1259    762102    mytbmatchingline    TABLE       CREATE TABLE public.mytbmatchingline (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    rawmaterial character varying(255),
    batchnumber character varying(255),
    number numeric,
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 $   DROP TABLE public.mytbmatchingline;
       public         heap    openerp    false                       1259    572421    mywork    TABLE     �  CREATE TABLE public.mywork (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    operationname character varying(255),
    duration character varying(255),
    workcenter character varying(255),
    defaultduration numeric,
    serialnumber character varying(255),
    company character varying(255),
    bom character varying(255),
    worksheet character varying(255),
    fhtext character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.mywork;
       public         heap    openerp    false                       1259    572428    mywork_center    TABLE     �  CREATE TABLE public.mywork_center (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    workcenter character varying(255),
    code character varying(255),
    title character varying(255),
    working_hours numeric,
    fhreplace character varying(255),
    time_efficiency character varying(255),
    capacity character varying(255),
    oee character varying(255),
    set_time numeric,
    cleaning_time numeric,
    hourly_cost numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.mywork_center;
       public         heap    openerp    false            �            1259    107472    note    TABLE     �  CREATE TABLE public.note (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    subject character varying(255),
    related_to character varying(255),
    note character varying(255),
    attachment character varying(255),
    related_type character varying(255)
);
    DROP TABLE public.note;
       public         heap    openerp    false            �            1259    107477    opportunity    TABLE     �  CREATE TABLE public.opportunity (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    opportunity_name character varying(255),
    account character varying(255),
    opportunity_owner character varying(255),
    expiry_date timestamp(6) without time zone,
    stage_name character varying(255),
    probability character varying(255),
    currency character varying(255),
    sales_value character varying(255),
    cost numeric(10,2),
    remark character varying(255),
    stage character varying(255),
    priority character varying(255),
    deal_age bigint,
    close_probabilitclose_probability character varying(255),
    forecast_value double precision,
    expected_close_date timestamp(6) without time zone,
    ref_number character varying(255)
);
    DROP TABLE public.opportunity;
       public         heap    openerp    false            �            1259    107482    opportunity_comments    TABLE     �  CREATE TABLE public.opportunity_comments (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    mid character varying(255),
    subject character varying(255),
    assign_to character varying(255),
    note character varying(255)
);
 (   DROP TABLE public.opportunity_comments;
       public         heap    openerp    false            �            1259    107487 	   parameter    TABLE     �  CREATE TABLE public.parameter (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    key character varying(255)
);
    DROP TABLE public.parameter;
       public         heap    openerp    false            �            1259    107492    payment_term    TABLE     �  CREATE TABLE public.payment_term (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    key character varying(255)
);
     DROP TABLE public.payment_term;
       public         heap    openerp    false            �            1259    107497    photo    TABLE     �   CREATE TABLE public.photo (
    id bigint NOT NULL,
    name character varying(255),
    description text,
    filename character varying(255),
    views bigint
);
    DROP TABLE public.photo;
       public         heap    openerp    false            *           1259    761670    procure_plan    TABLE     �  CREATE TABLE public.procure_plan (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    purchaser character varying(255),
    applicationtype character varying(255),
    supplier character varying(255),
    deadline date,
    subscriptiondate date,
    deliverydate date,
    sourcefile character varying(255),
    jobtype character varying(255),
    company character varying(255),
    term character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
     DROP TABLE public.procure_plan;
       public         heap    openerp    false            +           1259    761677    procure_plan_list    TABLE     K  CREATE TABLE public.procure_plan_list (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying(255),
    fhtext character varying(255),
    number numeric,
    orderedquantity numeric,
    unit character varying(255),
    unitprice numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 %   DROP TABLE public.procure_plan_list;
       public         heap    openerp    false            ,           1259    761684    procure_price    TABLE     �  CREATE TABLE public.procure_price (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    supplier character varying(255),
    product character varying(255),
    productcode character varying(255),
    deliveryleadtime date,
    product2 character varying(255),
    producttemlp character varying(255),
    number character varying(255),
    unitprice numeric,
    ative character varying(255),
    company character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.procure_price;
       public         heap    openerp    false            �            1259    107502    product    TABLE     �  CREATE TABLE public.product (
    id character varying(255) NOT NULL,
    product_name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    manufacturer character varying(255),
    category character varying(255),
    unit character varying(255),
    currency character varying(255),
    list_price character varying(255),
    cost character varying(255),
    photo character varying(255)
);
    DROP TABLE public.product;
       public         heap    openerp    false            �            1259    107507    product_item    TABLE     9  CREATE TABLE public.product_item (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    qty character varying(255),
    unit character varying(255),
    unit_price character varying(255),
    remark character varying(255),
    mid character varying(255)
);
     DROP TABLE public.product_item;
       public         heap    openerp    false            �            1259    107512    product_type    TABLE     �  CREATE TABLE public.product_type (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
     DROP TABLE public.product_type;
       public         heap    openerp    false            �            1259    107517    purchase_item    TABLE     c  CREATE TABLE public.purchase_item (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    details_id character varying(255),
    qty character varying(255),
    balance_qty character varying(255),
    unit character varying(255),
    remarks character varying(255),
    mid character varying(255)
);
 !   DROP TABLE public.purchase_item;
       public         heap    openerp    false            �            1259    107522    purchase_order    TABLE     k  CREATE TABLE public.purchase_order (
    id character varying(255) NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    ref_number character varying(255),
    currency character varying(255),
    contact character varying(255),
    payment_term character varying(255),
    taxes character varying(255),
    remark character varying(255),
    payment_terms character varying
);
 "   DROP TABLE public.purchase_order;
       public         heap    openerp    false            '           1259    761649    quality_inspection    TABLE     �  CREATE TABLE public.quality_inspection (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    title character varying(255),
    team character varying(255),
    producttmlp character varying(255),
    head character varying(255),
    product character varying(255),
    label character varying(255),
    batch character varying(255),
    rootcause text,
    pick character varying(255),
    priority character varying(255),
    fhtxt text,
    inspectionitems character varying(255),
    checkaddress character varying(255),
    correctiveaction text,
    preventiveactions text,
    sundry text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 &   DROP TABLE public.quality_inspection;
       public         heap    openerp    false            (           1259    761656    quality_inspection_item    TABLE     
  CREATE TABLE public.quality_inspection_item (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    fhitem character varying(255),
    fhtxt character varying(255),
    fhnotes character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 +   DROP TABLE public.quality_inspection_item;
       public         heap    openerp    false            =           1259    762116 	   quotation    TABLE     �  CREATE TABLE public.quotation (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    ref_number character varying,
    opportunity_id character varying,
    quotation_name character varying,
    sales_person character varying,
    payment_terms character varying,
    contact character varying,
    taxes character varying,
    currency character varying,
    cat integer,
    status character varying,
    amount integer,
    percentage numeric,
    discount_type character varying,
    discount numeric,
    total_discount numeric,
    test1 character varying,
    test2 character varying,
    additional_field3 character varying,
    additional_field4 character varying,
    terms_conditions character varying,
    remark text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.quotation;
       public         heap    openerp    false            �            1259    107532    quotation_comments    TABLE     �  CREATE TABLE public.quotation_comments (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    mid character varying(255),
    subject character varying(255),
    assign_to character varying(255),
    note character varying(255)
);
 &   DROP TABLE public.quotation_comments;
       public         heap    openerp    false            �            1259    107537    quotation_item    TABLE     p  CREATE TABLE public.quotation_item (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    mid character varying(255),
    name character varying(255),
    photo character varying(255),
    percentage character varying(255),
    direct_price character varying(255),
    reduction character varying(255),
    description character varying(255),
    qty character varying(255),
    unit character varying(255),
    unit_price character varying(255),
    unit_cost character varying(255),
    remark character varying(255),
    discount character varying(255),
    productname character varying(255),
    discount_type character varying(255)
);
 "   DROP TABLE public.quotation_item;
       public         heap    openerp    false            /           1259    761712    returnorder    TABLE     %  CREATE TABLE public.returnorder (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    project character varying(255),
    custom character varying(255),
    invoice character varying(255),
    contractnumber character varying(255),
    contractquantity numeric,
    product character varying(255),
    shipper character varying(255),
    deliveryquantity numeric,
    outagequantity numeric,
    deliverytype character varying(255),
    trackingnumber character varying(255),
    recipient character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.returnorder;
       public         heap    openerp    false            �            1259    107542    role    TABLE     .  CREATE TABLE public.role (
    id character varying(255) NOT NULL,
    name character varying(255),
    app character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    is_default character varying(255),
    is_del character varying(255)
);
    DROP TABLE public.role;
       public         heap    openerp    false            "           1259    761614    sale_contract    TABLE     @  CREATE TABLE public.sale_contract (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    releasetime character varying(255),
    project character varying(255),
    version character varying(255),
    custom character varying(255),
    expectedcompletion date,
    productioncompleted date,
    deliverycompleted date,
    estimatedtime date,
    contractamount numeric,
    invoicingamount numeric,
    collectionamount numeric,
    completionprogress character varying(255),
    specialrequirements text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.sale_contract;
       public         heap    openerp    false            #           1259    761621    selling_price    TABLE     �  CREATE TABLE public.selling_price (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    company integer,
    mygroup character varying,
    dscountpolicy character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.selling_price;
       public         heap    openerp    false            $           1259    761628    selling_price_list    TABLE     :  CREATE TABLE public.selling_price_list (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying(255),
    variant character varying(255),
    minimumquantity numeric,
    price numeric,
    startdate date,
    enddate date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 &   DROP TABLE public.selling_price_list;
       public         heap    openerp    false            �            1259    107547    service_contract    TABLE     �  CREATE TABLE public.service_contract (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    contract_ref character varying(255),
    created_by character varying(255),
    contract_name character varying(255),
    status character varying(255),
    account character varying(255),
    contract_value character varying(255),
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone,
    sla character varying(255),
    period character varying(255),
    contract_values character varying(255),
    client_po character varying(255),
    additional_field5 character varying(255),
    terms_conditions character varying(255),
    remark character varying(255),
    currency character varying(255)
);
 $   DROP TABLE public.service_contract;
       public         heap    openerp    false            �            1259    107552    service_item    TABLE     N  CREATE TABLE public.service_item (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    mid character varying(255),
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone,
    qty character varying(255),
    remarks character varying(255)
);
     DROP TABLE public.service_item;
       public         heap    openerp    false            �            1259    107557    skill    TABLE     �  CREATE TABLE public.skill (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.skill;
       public         heap    openerp    false            �            1259    107562 
   staff_list    TABLE       CREATE TABLE public.staff_list (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    full_name character varying(255),
    contact_no character varying(255),
    email character varying(255),
    role character varying(255),
    clients text,
    type text,
    login character varying(255)
);
    DROP TABLE public.staff_list;
       public         heap    openerp    false            �            1259    107567    stage    TABLE     �  CREATE TABLE public.stage (
    id character varying(255) NOT NULL,
    name character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.stage;
       public         heap    openerp    false                        1259    572528    stock_quant    TABLE     �  CREATE TABLE public.stock_quant (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    product character varying(255),
    "position" character varying(255),
    batch character varying(255),
    package character varying(255),
    inhand integer,
    available integer,
    unit character varying(255),
    price numeric,
    company character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.stock_quant;
       public         heap    openerp    false            !           1259    572535    stock_valuation_layer    TABLE     %  CREATE TABLE public.stock_valuation_layer (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhdate date,
    product character varying(255),
    number numeric,
    unit character varying(255),
    totalvalue numeric,
    company character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 )   DROP TABLE public.stock_valuation_layer;
       public         heap    openerp    false                       1259    572456    storage_location    TABLE     �  CREATE TABLE public.storage_location (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    myname character varying(255),
    mid character varying(255),
    type character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 $   DROP TABLE public.storage_location;
       public         heap    openerp    false                       1259    572463 
   store_move    TABLE     �  CREATE TABLE public.store_move (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    partners character varying(255),
    delivery_date date,
    source_location character varying(255),
    source_document character varying(255),
    type character varying(255),
    owner character varying(255),
    fhtime timestamp without time zone,
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.store_move;
       public         heap    openerp    false            -           1259    761691    store_move_list    TABLE     P  CREATE TABLE public.store_move_list (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    product character varying(255),
    demand integer,
    reserve integer,
    complete integer,
    unit character varying(255),
    selling_price numeric,
    cost_price numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 #   DROP TABLE public.store_move_list;
       public         heap    openerp    false            �            1259    107572    task    TABLE     �  CREATE TABLE public.task (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    subject character varying(255),
    due_date timestamp(6) without time zone,
    collaborate1 character varying(255),
    collaborate2 character varying(255),
    related_to character varying(255),
    priority character varying(255),
    status character varying(255),
    comments character varying(255),
    related_type character varying(255),
    feedback text
);
    DROP TABLE public.task;
       public         heap    openerp    false            �            1259    107577    task_attachment    TABLE     �  CREATE TABLE public.task_attachment (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    subject character varying(255),
    note character varying(255),
    attachment character varying(255),
    mid character varying(255)
);
 #   DROP TABLE public.task_attachment;
       public         heap    openerp    false            �            1259    107582    task_comments    TABLE     �  CREATE TABLE public.task_comments (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    subject character varying(255),
    assign_to character varying(255),
    note character varying(255),
    mid character varying(255)
);
 !   DROP TABLE public.task_comments;
       public         heap    openerp    false                        1259    107587    taxes    TABLE     �  CREATE TABLE public.taxes (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    rate character varying(255),
    source character varying(255),
    description character varying(255)
);
    DROP TABLE public.taxes;
       public         heap    openerp    false            .           1259    761705    tbaftersale    TABLE     Q  CREATE TABLE public.tbaftersale (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    project character varying(255),
    fhdate character varying(255),
    location character varying(255),
    contacts character varying(255),
    contactinformation character varying(255),
    visitdescription character varying(255),
    problemhandling character varying(255),
    remainingproblems character varying(255),
    aftersalestype character varying(255),
    annex character varying(255),
    processedby character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.tbaftersale;
       public         heap    openerp    false            %           1259    761635 
   tbmatching    TABLE     n  CREATE TABLE public.tbmatching (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    fhname character varying(255),
    fhdate date,
    sampledate date,
    documentnumber character varying(255),
    customercode character varying(255),
    customername integer,
    samplename character varying(255),
    numbe integer,
    component character varying(255),
    appearancestyle character varying(255),
    requirements character varying(255),
    technology character varying(255),
    cmyheck integer,
    registration integer,
    quotation integer,
    manufacturingorders integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.tbmatching;
       public         heap    openerp    false            &           1259    761642    tbmatchingline    TABLE       CREATE TABLE public.tbmatchingline (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    rawmaterial character varying(255),
    batchnumber character varying(255),
    number integer,
    notes text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 "   DROP TABLE public.tbmatchingline;
       public         heap    openerp    false            )           1259    761663    tbpackag    TABLE     I  CREATE TABLE public.tbpackag (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    project character varying(255),
    product character varying(255),
    productcode character varying(255),
    code character varying(255),
    deliveryquantity numeric,
    deliverydate date,
    factoryordernumber character varying(255),
    trackingnumber character varying(255),
    expresscompany character varying(255),
    recipient character varying(255),
    shipper character varying(255),
    photo character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.tbpackag;
       public         heap    openerp    false            1           1259    761727    tbreturnvisit    TABLE     �  CREATE TABLE public.tbreturnvisit (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    project character varying(255),
    fhdate date,
    location character varying(255),
    contacts character varying(255),
    contactinformation character varying(255),
    returnvisitdescription character varying(255),
    annex character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
 !   DROP TABLE public.tbreturnvisit;
       public         heap    openerp    false                       1259    107592    template    TABLE     �  CREATE TABLE public.template (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    template_name character varying(255),
    photo character varying(255),
    template_type character varying(255)
);
    DROP TABLE public.template;
       public         heap    openerp    false                       1259    107597    term_condition    TABLE     �  CREATE TABLE public.term_condition (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    rate character varying(255),
    source character varying(255),
    description character varying(255)
);
 "   DROP TABLE public.term_condition;
       public         heap    openerp    false                       1259    107602    terms    TABLE     �  CREATE TABLE public.terms (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    leader_id text,
    role_id character varying(255),
    description text,
    background_color character varying(255)
);
    DROP TABLE public.terms;
       public         heap    openerp    false                       1259    107607    terms_member    TABLE     �  CREATE TABLE public.terms_member (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    description text,
    terms_id character varying(255),
    member_id character varying(255)
);
     DROP TABLE public.terms_member;
       public         heap    openerp    false                       1259    107612    ticket    TABLE     �  CREATE TABLE public.ticket (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    description text,
    rate character varying(255),
    source character varying(255)
);
    DROP TABLE public.ticket;
       public         heap    openerp    false                       1259    107617 	   translate    TABLE     �  CREATE TABLE public.translate (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    description text,
    rate character varying(255),
    source character varying(255)
);
    DROP TABLE public.translate;
       public         heap    openerp    false                       1259    107622    unit    TABLE     �  CREATE TABLE public.unit (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    description text,
    rate character varying(255),
    source character varying(255)
);
    DROP TABLE public.unit;
       public         heap    openerp    false                       1259    107627    user    TABLE     F  CREATE TABLE public."user" (
    id character varying(255) NOT NULL,
    email character varying(255),
    user_name character varying(255),
    app character varying(255),
    timezone character varying(255),
    mobile_country_code character varying(255),
    mobile_calling_country_code character varying(255),
    mobile_number character varying(255),
    avatar character varying(255),
    is_locked numeric(255,0),
    created_at timestamp(6) without time zone,
    last_sign_in timestamp(6) without time zone,
    has_password boolean,
    password character varying(255)
);
    DROP TABLE public."user";
       public         heap    openerp    false            	           1259    107632 	   user_role    TABLE     �   CREATE TABLE public.user_role (
    user_id character varying(255) NOT NULL,
    app character varying(255),
    role_id character varying(255)
);
    DROP TABLE public.user_role;
       public         heap    openerp    false                       1259    572449 	   warehouse    TABLE     �  CREATE TABLE public.warehouse (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    myname character varying(255),
    fhname character varying(255),
    address character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.warehouse;
       public         heap    openerp    false            
           1259    107637    warranty    TABLE       CREATE TABLE public.warranty (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    description text,
    product character varying(255),
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone,
    is_remind character varying(255)
);
    DROP TABLE public.warranty;
       public         heap    openerp    false                       1259    107642    work    TABLE     �  CREATE TABLE public.work (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    quote character varying(255),
    title character varying(255),
    states character varying(255),
    qty character varying(255),
    work_type character varying(255),
    room character varying(255),
    client character varying(255),
    contact character varying(255),
    work_instructions character varying(255),
    assign_to character varying(255),
    start_date timestamp(6) without time zone,
    end_date time(6) without time zone,
    remark character varying(255),
    reedback character varying(255),
    full_address character varying(255),
    ref_number character varying(255),
    priority character varying(255),
    terms_id character varying(255),
    sign_below_txt character varying(255),
    sign_below_photo text,
    sign_below_userid character varying(255),
    sign_below_time timestamp(6) without time zone
);
    DROP TABLE public.work;
       public         heap    openerp    false                       1259    428714    work_center    TABLE     �  CREATE TABLE public.work_center (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    workcenter character varying(255),
    code character varying(255),
    title character varying(255),
    working_hours numeric,
    fhreplace character varying(255),
    time_efficiency character varying(255),
    capacity character varying(255),
    oee character varying(255),
    set_time numeric,
    cleaning_time numeric,
    hourly_cost numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.work_center;
       public         heap    openerp    false                       1259    107647 	   work_item    TABLE     4  CREATE TABLE public.work_item (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    name character varying(255),
    description text,
    qty character varying(255),
    unit character varying(255),
    unit_price character varying,
    discount character varying,
    total character varying,
    mid character varying
);
    DROP TABLE public.work_item;
       public         heap    openerp    false                       1259    428777    work_job    TABLE     v  CREATE TABLE public.work_job (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    mid character varying(255),
    title character varying(255),
    durationcal_culation numeric,
    work_center character varying(255),
    product_telm character varying(255),
    default_duration numeric,
    work_records text,
    work_recordspdf text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.work_job;
       public         heap    openerp    false                       1259    107652 	   work_note    TABLE     �  CREATE TABLE public.work_note (
    id character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255),
    work_id character varying(255),
    title character varying,
    note character varying(255),
    assign_to character varying(255),
    mid character varying
);
    DROP TABLE public.work_note;
       public         heap    openerp    false                       1259    428707    work_orders    TABLE     �  CREATE TABLE public.work_orders (
    id character varying(255) NOT NULL,
    name character varying(255),
    description text,
    assignment character varying(255),
    workcenter character varying(255),
    manufacturing_orders character varying(255),
    product character varying(255),
    number numeric,
    schedule_date date,
    expected_duration numeric,
    actual_duration numeric,
    state character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    isactived character varying(255),
    islocked character varying(255),
    create_uid character varying(255),
    updated_uid character varying(255)
);
    DROP TABLE public.work_orders;
       public         heap    openerp    false            x          0    107342    account_tag 
   TABLE DATA           �   COPY public.account_tag (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    209   �o      �          0    572505    accounting_voucher 
   TABLE DATA             COPY public.accounting_voucher (id, name, description, title, account_number, type, bill_reference, statement_date, accounting_date, payment_reference, payee_bank, payment_terms, journal, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    285   �s      �          0    572512    accounting_voucher_list 
   TABLE DATA           �   COPY public.accounting_voucher_list (id, name, description, mid, product, note, landed_cost, type, subject, analysis, number, unit, price, tax, subtotal, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    286   t      y          0    107347    activity 
   TABLE DATA             COPY public.activity (id, mid, types, subject, starts, ends, all_day_event, attendees1, attendees2, related_type, related_to, event_type, location, description, collaborate1, collaborate2, priority, status, attachment, email_to, cc, send_mine, contact, sender_number, receiver_number, created_at, updated_at, isactived, islocked, create_uid, updated_uid, mtable, caller) FROM stdin;
    public          openerp    false    210   2t      z          0    107352 
   attachment 
   TABLE DATA           �   COPY public.attachment (id, owner_id, owner_type, "dateUploaded", name, upload_user_id, "when", is_del, url, mimetype, size, mid) FROM stdin;
    public          openerp    false    211   Zu      {          0    107357    attence 
   TABLE DATA           *  COPY public.attence (id, name, date, check_in_time, check_in_temperature, check_in_place, check_in_address, check_in_notes, check_out_time, check_out_temperature, check_out_place, check_out_address, check_out_notes, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    212   wu      �          0    572519 	   bank_cash 
   TABLE DATA           �   COPY public.bank_cash (id, name, description, report, fhdate, lable, refer, partners, amount_money, serial_number, notes, type, accounting_voucher, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    287   �u      �          0    572498    batch 
   TABLE DATA           �   COPY public.batch (id, name, description, titel, product, number, code, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    284   �u      �          0    428763    bom 
   TABLE DATA           �   COPY public.bom (id, name, description, product, code, product_telm, bom_type, number, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    272    v      �          0    428770    bom_product 
   TABLE DATA           �   COPY public.bom_product (id, name, description, mid, product, number, unit, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    273   v      |          0    107362    campaign 
   TABLE DATA           �   COPY public.campaign (id, name, starts, ends, owner, budget, status, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    213   :v      }          0    107367    client 
   TABLE DATA           �  COPY public.client (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, type, account_owner, reg_number, industry, phone_number, website, fax_number, street, city, state, post_code, country, don, ref, additional_field4, additional_field5, gender, date_birth, language, income, marital, children, accounts_type, account_tag, client_state) FROM stdin;
    public          openerp    false    214   ��      ~          0    107372    contac_person 
   TABLE DATA           �  COPY public.contac_person (id, client, name, no, email, islogin, login, password, isnotification, isemail, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, job_title, account, phone_number, mobile_number, fax_number, gender, date_birth, language, income, marital, children, street, city, state, post_code, country, emergency, security_course, additional_field3, additional_field4, additional_field5, is_alert) FROM stdin;
    public          openerp    false    215   	�                0    107377    country 
   TABLE DATA           ~   COPY public.country (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    216   
�      �          0    107382    currency 
   TABLE DATA           �   COPY public.currency (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, rate, source) FROM stdin;
    public          openerp    false    217   ��      �          0    107387    customization 
   TABLE DATA           �   COPY public.customization (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, rate, source, format, value, "table") FROM stdin;
    public          openerp    false    218   H�      �          0    107392    delivery_item 
   TABLE DATA           �   COPY public.delivery_item (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, "detailsId", qty, balance_qty, unit, remarks, mid, details_id) FROM stdin;
    public          openerp    false    219   e�      �          0    107397    delivery_order 
   TABLE DATA           +  COPY public.delivery_order (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, ref_number, linked_invoice, delivery_name, client_company, delivery_date, client_contact, creator, post_code, street, city, state, country, terms_conditions, remark) FROM stdin;
    public          openerp    false    220   ��      �          0    107402    exchange_rate 
   TABLE DATA           �   COPY public.exchange_rate (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    221   b�      �          0    107407    feedback 
   TABLE DATA              COPY public.feedback (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    222   &�      �          0    107412    fhcrm_table1 
   TABLE DATA           �   COPY public.fhcrm_table1 (id, name, description, fh_f1, fh_f2, fh_f3, fh_f4, fh_f5, fh_f6, fh_f7, fh_f8, fh_f9, fh_f10, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    223   �      �          0    761748    fhfault 
   TABLE DATA           �   COPY public.fhfault (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, fhf8, fhf9, fhf10, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    307   .�      �          0    762074    fhinspection 
   TABLE DATA           �   COPY public.fhinspection (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    313   K�      �          0    762053    fhmeasuring 
   TABLE DATA           �   COPY public.fhmeasuring (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, fhf8, fhf9, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    310   h�      �          0    762060    fhreform 
   TABLE DATA           �   COPY public.fhreform (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    311   ��      �          0    762081 	   fhrunning 
   TABLE DATA           �   COPY public.fhrunning (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, fhf8, fhf9, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    314   ��      �          0    762067    fhservice_plan 
   TABLE DATA           �   COPY public.fhservice_plan (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, fhf8, fhf9, fhf10, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    312   ��      �          0    761720    fhservicetb 
   TABLE DATA           �   COPY public.fhservicetb (id, name, description, fhname, fhf0, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, fhf8, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    304   ܍      �          0    761762    fhtest 
   TABLE DATA           �   COPY public.fhtest (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    309   ��      �          0    761755    fhtest_fht1 
   TABLE DATA           �   COPY public.fhtest_fht1 (id, name, description, fhname, fhf1, fhf2, fhf3, fhf4, fhf5, fhf6, fhf7, fhf8, fhf9, fhf10, fhf11, fhf12, fhf13, fhf14, fhf15, fhf16, fhf17, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    308   �      �          0    761734    hr_contract 
   TABLE DATA             COPY public.hr_contract (id, name, description, fhname, staff, department, job, company, paystructure, startdate, firstcontractdate, enddate, workarrangement, hrsupervisor, wages, fhtxt, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    306   3�      �          0    107422    industry 
   TABLE DATA              COPY public.industry (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    224   P�      �          0    572477 	   inventory 
   TABLE DATA           �   COPY public.inventory (id, name, description, title, "position", job_date, warehouse, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    282   ̎      �          0    572484    inventory_list 
   TABLE DATA           �   COPY public.inventory_list (id, name, description, mid, product, unit, "position", batch, package, owner, theoretical, actual_quantity, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    283   �      �          0    107427    invoice_details 
   TABLE DATA           �  COPY public.invoice_details (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, linked_uotation, invoice_number, invoice_status, invoice_name, account, sales_person, client_contact, currency, invoice_date, due_date, tech_name, tracking_no, additional_field3, additional_field4, remark, client_number, tax, over_date, is_alert, total_amount, client_po_number, ref_number, paid_amount, outstanding_amount) FROM stdin;
    public          openerp    false    225   �      �          0    107432    invoice_item 
   TABLE DATA           �   COPY public.invoice_item (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, qty, unit, unit_price, remark, mid) FROM stdin;
    public          openerp    false    226   ב      �          0    107437    invoice_payment 
   TABLE DATA           �   COPY public.invoice_payment (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, invoice_id, date, method, ref_no, payment_amount, remark, mid, photo) FROM stdin;
    public          openerp    false    227   =�      �          0    107442    job 
   TABLE DATA           �   COPY public.job (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, title, wi_type, clients, enabled) FROM stdin;
    public          openerp    false    228   ��      �          0    107447    job_item 
   TABLE DATA           �   COPY public.job_item (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, step, title, template, require, mid, photo) FROM stdin;
    public          openerp    false    229   ��      �          0    107452    language 
   TABLE DATA              COPY public.language (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    230   �      �          0    107457 	   leadpools 
   TABLE DATA           �   COPY public.leadpools (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    231   ��      �          0    107462    leads 
   TABLE DATA           7  COPY public.leads (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, job_title, company, industry, website, email, phone_number, mobile_number, fax_number, remark, lead_owner, lead_pool, campaign, source, street_road, city, ctate, post_code, country, satus, linked_in) FROM stdin;
    public          openerp    false    232   ��      �          0    107467    monthly_goal 
   TABLE DATA           �   COPY public.monthly_goal (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, target_number, type, team_id, personal_id, by_type) FROM stdin;
    public          openerp    false    233   �      �          0    572435    mybom 
   TABLE DATA           �   COPY public.mybom (id, name, description, product, code, product_telm, bom_type, number, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    277   z�      �          0    572442    mybom_product 
   TABLE DATA           �   COPY public.mybom_product (id, name, description, mid, product, number, unit, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    278   ��      �          0    762109    mytbmatching 
   TABLE DATA           K  COPY public.mytbmatching (id, name, description, fhname, fhdate, sampledate, documentnumber, customercode, customername, samplename, numbe, component, appearancestyle, requirements, technology, cmyheck, registration, quotation, manufacturingorders, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    316   ��      �          0    762102    mytbmatchingline 
   TABLE DATA           �   COPY public.mytbmatchingline (id, name, description, mid, rawmaterial, batchnumber, number, notes, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    315   љ      �          0    572421    mywork 
   TABLE DATA           �   COPY public.mywork (id, name, description, operationname, duration, workcenter, defaultduration, serialnumber, company, bom, worksheet, fhtext, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    275   �      �          0    572428    mywork_center 
   TABLE DATA           �   COPY public.mywork_center (id, name, description, workcenter, code, title, working_hours, fhreplace, time_efficiency, capacity, oee, set_time, cleaning_time, hourly_cost, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    276   �      �          0    107472    note 
   TABLE DATA           �   COPY public.note (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, subject, related_to, note, attachment, related_type) FROM stdin;
    public          openerp    false    234   (�      �          0    107477    opportunity 
   TABLE DATA           W  COPY public.opportunity (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, opportunity_name, account, opportunity_owner, expiry_date, stage_name, probability, currency, sales_value, cost, remark, stage, priority, deal_age, close_probabilitclose_probability, forecast_value, expected_close_date, ref_number) FROM stdin;
    public          openerp    false    235   Ț      �          0    107482    opportunity_comments 
   TABLE DATA           �   COPY public.opportunity_comments (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, mid, subject, assign_to, note) FROM stdin;
    public          openerp    false    236   ��      �          0    107487 	   parameter 
   TABLE DATA           �   COPY public.parameter (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, key) FROM stdin;
    public          openerp    false    237   ��      �          0    107492    payment_term 
   TABLE DATA           �   COPY public.payment_term (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, key) FROM stdin;
    public          openerp    false    238   ��      �          0    107497    photo 
   TABLE DATA           G   COPY public.photo (id, name, description, filename, views) FROM stdin;
    public          openerp    false    239   =�      �          0    761670    procure_plan 
   TABLE DATA           �   COPY public.procure_plan (id, name, description, fhname, purchaser, applicationtype, supplier, deadline, subscriptiondate, deliverydate, sourcefile, jobtype, company, term, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    298   d�      �          0    761677    procure_plan_list 
   TABLE DATA           �   COPY public.procure_plan_list (id, name, description, mid, product, fhtext, number, orderedquantity, unit, unitprice, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    299   ��      �          0    761684    procure_price 
   TABLE DATA           �   COPY public.procure_price (id, name, description, supplier, product, productcode, deliveryleadtime, product2, producttemlp, number, unitprice, ative, company, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    300   ��      �          0    107502    product 
   TABLE DATA           �   COPY public.product (id, product_name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, manufacturer, category, unit, currency, list_price, cost, photo) FROM stdin;
    public          openerp    false    240   ��      �          0    107507    product_item 
   TABLE DATA           �   COPY public.product_item (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, qty, unit, unit_price, remark, mid) FROM stdin;
    public          openerp    false    241   ��      �          0    107512    product_type 
   TABLE DATA           �   COPY public.product_type (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    242   ��      �          0    107517    purchase_item 
   TABLE DATA           �   COPY public.purchase_item (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, details_id, qty, balance_qty, unit, remarks, mid) FROM stdin;
    public          openerp    false    243   s�      �          0    107522    purchase_order 
   TABLE DATA           �   COPY public.purchase_order (id, name, created_at, updated_at, isactived, islocked, create_uid, updated_uid, ref_number, currency, contact, payment_term, taxes, remark, payment_terms) FROM stdin;
    public          openerp    false    244   ��      �          0    761649    quality_inspection 
   TABLE DATA           6  COPY public.quality_inspection (id, name, description, fhname, title, team, producttmlp, head, product, label, batch, rootcause, pick, priority, fhtxt, inspectionitems, checkaddress, correctiveaction, preventiveactions, sundry, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    295   8�      �          0    761656    quality_inspection_item 
   TABLE DATA           �   COPY public.quality_inspection_item (id, name, description, mid, fhitem, fhtxt, fhnotes, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    296   U�      �          0    762116 	   quotation 
   TABLE DATA           {  COPY public.quotation (id, name, description, ref_number, opportunity_id, quotation_name, sales_person, payment_terms, contact, taxes, currency, cat, status, amount, percentage, discount_type, discount, total_discount, test1, test2, additional_field3, additional_field4, terms_conditions, remark, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    317   r�      �          0    107532    quotation_comments 
   TABLE DATA           �   COPY public.quotation_comments (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, mid, subject, assign_to, note) FROM stdin;
    public          openerp    false    245   ��      �          0    107537    quotation_item 
   TABLE DATA             COPY public.quotation_item (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, mid, name, photo, percentage, direct_price, reduction, description, qty, unit, unit_price, unit_cost, remark, discount, productname, discount_type) FROM stdin;
    public          openerp    false    246   ١      �          0    761712    returnorder 
   TABLE DATA             COPY public.returnorder (id, name, description, project, custom, invoice, contractnumber, contractquantity, product, shipper, deliveryquantity, outagequantity, deliverytype, trackingnumber, recipient, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    303   ��      �          0    107542    role 
   TABLE DATA           Y   COPY public.role (id, name, app, created_at, updated_at, is_default, is_del) FROM stdin;
    public          openerp    false    247   �      �          0    761614    sale_contract 
   TABLE DATA           Z  COPY public.sale_contract (id, name, description, fhname, releasetime, project, version, custom, expectedcompletion, productioncompleted, deliverycompleted, estimatedtime, contractamount, invoicingamount, collectionamount, completionprogress, specialrequirements, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    290   _�      �          0    761621    selling_price 
   TABLE DATA           �   COPY public.selling_price (id, name, description, fhname, company, mygroup, dscountpolicy, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    291   |�      �          0    761628    selling_price_list 
   TABLE DATA           �   COPY public.selling_price_list (id, name, description, mid, product, variant, minimumquantity, price, startdate, enddate, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    292   ��      �          0    107547    service_contract 
   TABLE DATA           4  COPY public.service_contract (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, contract_ref, created_by, contract_name, status, account, contract_value, start_date, end_date, sla, period, contract_values, client_po, additional_field5, terms_conditions, remark, currency) FROM stdin;
    public          openerp    false    248   ��      �          0    107552    service_item 
   TABLE DATA           �   COPY public.service_item (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid, mid, start_date, end_date, qty, remarks) FROM stdin;
    public          openerp    false    249   x�      �          0    107557    skill 
   TABLE DATA           |   COPY public.skill (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    250   ��      �          0    107562 
   staff_list 
   TABLE DATA           �   COPY public.staff_list (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, full_name, contact_no, email, role, clients, type, login) FROM stdin;
    public          openerp    false    251   -�      �          0    107567    stage 
   TABLE DATA           |   COPY public.stage (id, name, description, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    252   ��      �          0    572528    stock_quant 
   TABLE DATA           �   COPY public.stock_quant (id, name, description, product, "position", batch, package, inhand, available, unit, price, company, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    288   J�      �          0    572535    stock_valuation_layer 
   TABLE DATA           �   COPY public.stock_valuation_layer (id, name, description, fhdate, product, number, unit, totalvalue, company, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    289   g�      �          0    572456    storage_location 
   TABLE DATA           �   COPY public.storage_location (id, name, description, myname, mid, type, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    280   ��      �          0    572463 
   store_move 
   TABLE DATA           �   COPY public.store_move (id, name, description, partners, delivery_date, source_location, source_document, type, owner, fhtime, notes, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    281   ��      �          0    761691    store_move_list 
   TABLE DATA           �   COPY public.store_move_list (id, name, description, mid, product, demand, reserve, complete, unit, selling_price, cost_price, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    301   ��      �          0    107572    task 
   TABLE DATA           �   COPY public.task (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, subject, due_date, collaborate1, collaborate2, related_to, priority, status, comments, related_type, feedback) FROM stdin;
    public          openerp    false    253   ۥ      �          0    107577    task_attachment 
   TABLE DATA           �   COPY public.task_attachment (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, subject, note, attachment, mid) FROM stdin;
    public          openerp    false    254   ��      �          0    107582    task_comments 
   TABLE DATA           �   COPY public.task_comments (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, subject, assign_to, note, mid) FROM stdin;
    public          openerp    false    255   �      �          0    107587    taxes 
   TABLE DATA           �   COPY public.taxes (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, rate, source, description) FROM stdin;
    public          openerp    false    256   2�      �          0    761705    tbaftersale 
   TABLE DATA             COPY public.tbaftersale (id, name, description, mid, project, fhdate, location, contacts, contactinformation, visitdescription, problemhandling, remainingproblems, aftersalestype, annex, processedby, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    302   ڦ      �          0    761635 
   tbmatching 
   TABLE DATA           I  COPY public.tbmatching (id, name, description, fhname, fhdate, sampledate, documentnumber, customercode, customername, samplename, numbe, component, appearancestyle, requirements, technology, cmyheck, registration, quotation, manufacturingorders, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    293   ��      �          0    761642    tbmatchingline 
   TABLE DATA           �   COPY public.tbmatchingline (id, name, description, mid, rawmaterial, batchnumber, number, notes, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    294   �      �          0    761663    tbpackag 
   TABLE DATA             COPY public.tbpackag (id, name, description, mid, project, product, productcode, code, deliveryquantity, deliverydate, factoryordernumber, trackingnumber, expresscompany, recipient, shipper, photo, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    297   1�      �          0    761727    tbreturnvisit 
   TABLE DATA           �   COPY public.tbreturnvisit (id, name, description, mid, project, fhdate, location, contacts, contactinformation, returnvisitdescription, annex, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    305   N�      �          0    107592    template 
   TABLE DATA           �   COPY public.template (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, template_name, photo, template_type) FROM stdin;
    public          openerp    false    257   k�      �          0    107597    term_condition 
   TABLE DATA           �   COPY public.term_condition (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, rate, source, description) FROM stdin;
    public          openerp    false    258   ��      �          0    107602    terms 
   TABLE DATA           �   COPY public.terms (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, leader_id, role_id, description, background_color) FROM stdin;
    public          openerp    false    259   j�      �          0    107607    terms_member 
   TABLE DATA           �   COPY public.terms_member (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, description, terms_id, member_id) FROM stdin;
    public          openerp    false    260   .�      �          0    107612    ticket 
   TABLE DATA           �   COPY public.ticket (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, description, rate, source) FROM stdin;
    public          openerp    false    261   K�      �          0    107617 	   translate 
   TABLE DATA           �   COPY public.translate (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, description, rate, source) FROM stdin;
    public          openerp    false    262   Ӭ      �          0    107622    unit 
   TABLE DATA           �   COPY public.unit (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, description, rate, source) FROM stdin;
    public          openerp    false    263   a�      �          0    107627    user 
   TABLE DATA           �   COPY public."user" (id, email, user_name, app, timezone, mobile_country_code, mobile_calling_country_code, mobile_number, avatar, is_locked, created_at, last_sign_in, has_password, password) FROM stdin;
    public          openerp    false    264   �      �          0    107632 	   user_role 
   TABLE DATA           :   COPY public.user_role (user_id, app, role_id) FROM stdin;
    public          openerp    false    265   K�      �          0    572449 	   warehouse 
   TABLE DATA           �   COPY public.warehouse (id, name, description, myname, fhname, address, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    279   h�      �          0    107637    warranty 
   TABLE DATA           �   COPY public.warranty (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, description, product, start_date, end_date, is_remind) FROM stdin;
    public          openerp    false    266   ��      �          0    107642    work 
   TABLE DATA           _  COPY public.work (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, quote, title, states, qty, work_type, room, client, contact, work_instructions, assign_to, start_date, end_date, remark, reedback, full_address, ref_number, priority, terms_id, sign_below_txt, sign_below_photo, sign_below_userid, sign_below_time) FROM stdin;
    public          openerp    false    267   ;�      �          0    428714    work_center 
   TABLE DATA           �   COPY public.work_center (id, name, description, workcenter, code, title, working_hours, fhreplace, time_efficiency, capacity, oee, set_time, cleaning_time, hourly_cost, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    271   ��      �          0    107647 	   work_item 
   TABLE DATA           �   COPY public.work_item (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, name, description, qty, unit, unit_price, discount, total, mid) FROM stdin;
    public          openerp    false    268   ǯ      �          0    428777    work_job 
   TABLE DATA           �   COPY public.work_job (id, name, description, mid, title, durationcal_culation, work_center, product_telm, default_duration, work_records, work_recordspdf, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    274   �      �          0    107652 	   work_note 
   TABLE DATA           �   COPY public.work_note (id, created_at, updated_at, isactived, islocked, create_uid, updated_uid, work_id, title, note, assign_to, mid) FROM stdin;
    public          openerp    false    269   �      �          0    428707    work_orders 
   TABLE DATA           �   COPY public.work_orders (id, name, description, assignment, workcenter, manufacturing_orders, product, number, schedule_date, expected_duration, actual_duration, state, created_at, updated_at, isactived, islocked, create_uid, updated_uid) FROM stdin;
    public          openerp    false    270   �      P           2606    107658    photo Photo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT "Photo_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.photo DROP CONSTRAINT "Photo_pkey";
       public            openerp    false    239            "           2606    107660    country account_tag_copy1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.country
    ADD CONSTRAINT account_tag_copy1_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.country DROP CONSTRAINT account_tag_copy1_pkey;
       public            openerp    false    216                       2606    107662    account_tag account_tag_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.account_tag
    ADD CONSTRAINT account_tag_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.account_tag DROP CONSTRAINT account_tag_pkey;
       public            openerp    false    209            �           2606    572518 4   accounting_voucher_list accounting_voucher_list_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.accounting_voucher_list
    ADD CONSTRAINT accounting_voucher_list_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.accounting_voucher_list DROP CONSTRAINT accounting_voucher_list_pkey;
       public            openerp    false    286            �           2606    572511 *   accounting_voucher accounting_voucher_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.accounting_voucher
    ADD CONSTRAINT accounting_voucher_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.accounting_voucher DROP CONSTRAINT accounting_voucher_pkey;
       public            openerp    false    285                       2606    107664    activity activity_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.activity DROP CONSTRAINT activity_pkey;
       public            openerp    false    210                       2606    107666    attachment attachment_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attachment
    ADD CONSTRAINT attachment_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attachment DROP CONSTRAINT attachment_pkey;
       public            openerp    false    211                       2606    107668    attence attence_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.attence
    ADD CONSTRAINT attence_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.attence DROP CONSTRAINT attence_pkey;
       public            openerp    false    212            �           2606    572525    bank_cash bank_cash_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bank_cash
    ADD CONSTRAINT bank_cash_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bank_cash DROP CONSTRAINT bank_cash_pkey;
       public            openerp    false    287            �           2606    572504    batch batch_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.batch
    ADD CONSTRAINT batch_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.batch DROP CONSTRAINT batch_pkey;
       public            openerp    false    284            �           2606    428769    bom bom_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.bom
    ADD CONSTRAINT bom_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.bom DROP CONSTRAINT bom_pkey;
       public            openerp    false    272            �           2606    428776    bom_product bom_product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bom_product
    ADD CONSTRAINT bom_product_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.bom_product DROP CONSTRAINT bom_product_pkey;
       public            openerp    false    273                       2606    107670    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            openerp    false    214                        2606    107672     contac_person contac_person_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.contac_person
    ADD CONSTRAINT contac_person_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.contac_person DROP CONSTRAINT contac_person_pkey;
       public            openerp    false    215            $           2606    107674    currency country_copy1_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT country_copy1_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.currency DROP CONSTRAINT country_copy1_pkey;
       public            openerp    false    217            ,           2606    107676 !   exchange_rate country_copy1_pkey1 
   CONSTRAINT     _   ALTER TABLE ONLY public.exchange_rate
    ADD CONSTRAINT country_copy1_pkey1 PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.exchange_rate DROP CONSTRAINT country_copy1_pkey1;
       public            openerp    false    221            2           2606    107678    industry country_copy1_pkey2 
   CONSTRAINT     Z   ALTER TABLE ONLY public.industry
    ADD CONSTRAINT country_copy1_pkey2 PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.industry DROP CONSTRAINT country_copy1_pkey2;
       public            openerp    false    224            6           2606    107680     invoice_item country_copy1_pkey3 
   CONSTRAINT     ^   ALTER TABLE ONLY public.invoice_item
    ADD CONSTRAINT country_copy1_pkey3 PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.invoice_item DROP CONSTRAINT country_copy1_pkey3;
       public            openerp    false    226            >           2606    107682    language country_copy1_pkey4 
   CONSTRAINT     Z   ALTER TABLE ONLY public.language
    ADD CONSTRAINT country_copy1_pkey4 PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.language DROP CONSTRAINT country_copy1_pkey4;
       public            openerp    false    230            &           2606    107684 !   customization currency_copy1_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customization
    ADD CONSTRAINT currency_copy1_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.customization DROP CONSTRAINT currency_copy1_pkey;
       public            openerp    false    218            *           2606    107686 #   delivery_order currency_copy1_pkey1 
   CONSTRAINT     a   ALTER TABLE ONLY public.delivery_order
    ADD CONSTRAINT currency_copy1_pkey1 PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.delivery_order DROP CONSTRAINT currency_copy1_pkey1;
       public            openerp    false    220            (           2606    107688 &   delivery_item customization_copy1_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.delivery_item
    ADD CONSTRAINT customization_copy1_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.delivery_item DROP CONSTRAINT customization_copy1_pkey;
       public            openerp    false    219            .           2606    107690 !   feedback exchange_rate_copy1_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT exchange_rate_copy1_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.feedback DROP CONSTRAINT exchange_rate_copy1_pkey;
       public            openerp    false    222            4           2606    107692 )   invoice_details exchange_rate_copy1_pkey1 
   CONSTRAINT     g   ALTER TABLE ONLY public.invoice_details
    ADD CONSTRAINT exchange_rate_copy1_pkey1 PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.invoice_details DROP CONSTRAINT exchange_rate_copy1_pkey1;
       public            openerp    false    225            0           2606    107694    fhcrm_table1 fhcrm_table1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fhcrm_table1
    ADD CONSTRAINT fhcrm_table1_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fhcrm_table1 DROP CONSTRAINT fhcrm_table1_pkey;
       public            openerp    false    223            �           2606    761754    fhfault fhfault_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.fhfault
    ADD CONSTRAINT fhfault_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.fhfault DROP CONSTRAINT fhfault_pkey;
       public            openerp    false    307            �           2606    762080    fhinspection fhinspection_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fhinspection
    ADD CONSTRAINT fhinspection_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fhinspection DROP CONSTRAINT fhinspection_pkey;
       public            openerp    false    313            �           2606    762059    fhmeasuring fhmeasuring_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fhmeasuring
    ADD CONSTRAINT fhmeasuring_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fhmeasuring DROP CONSTRAINT fhmeasuring_pkey;
       public            openerp    false    310            �           2606    762066    fhreform fhreform_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.fhreform
    ADD CONSTRAINT fhreform_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.fhreform DROP CONSTRAINT fhreform_pkey;
       public            openerp    false    311            �           2606    762087    fhrunning fhrunning_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.fhrunning
    ADD CONSTRAINT fhrunning_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.fhrunning DROP CONSTRAINT fhrunning_pkey;
       public            openerp    false    314            �           2606    762073 "   fhservice_plan fhservice_plan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fhservice_plan
    ADD CONSTRAINT fhservice_plan_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.fhservice_plan DROP CONSTRAINT fhservice_plan_pkey;
       public            openerp    false    312            �           2606    761726    fhservicetb fhservicetb_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fhservicetb
    ADD CONSTRAINT fhservicetb_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fhservicetb DROP CONSTRAINT fhservicetb_pkey;
       public            openerp    false    304            �           2606    761761    fhtest_fht1 fhtest_fht1_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.fhtest_fht1
    ADD CONSTRAINT fhtest_fht1_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fhtest_fht1 DROP CONSTRAINT fhtest_fht1_pkey;
       public            openerp    false    308            �           2606    761768    fhtest fhtest_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.fhtest
    ADD CONSTRAINT fhtest_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.fhtest DROP CONSTRAINT fhtest_pkey;
       public            openerp    false    309            �           2606    761740    hr_contract hr_contract_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hr_contract
    ADD CONSTRAINT hr_contract_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.hr_contract DROP CONSTRAINT hr_contract_pkey;
       public            openerp    false    306            �           2606    572490 "   inventory_list inventory_list_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.inventory_list
    ADD CONSTRAINT inventory_list_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.inventory_list DROP CONSTRAINT inventory_list_pkey;
       public            openerp    false    283            �           2606    572483    inventory inventory_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            openerp    false    282            8           2606    107698 '   invoice_payment invoice_item_copy1_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.invoice_payment
    ADD CONSTRAINT invoice_item_copy1_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.invoice_payment DROP CONSTRAINT invoice_item_copy1_pkey;
       public            openerp    false    227            :           2606    107700    job invoice_item_copy1_pkey1 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job
    ADD CONSTRAINT invoice_item_copy1_pkey1 PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job DROP CONSTRAINT invoice_item_copy1_pkey1;
       public            openerp    false    228            <           2606    107702    job_item job_copy1_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.job_item
    ADD CONSTRAINT job_copy1_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.job_item DROP CONSTRAINT job_copy1_pkey;
       public            openerp    false    229            @           2606    107704    leadpools language_copy1_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.leadpools
    ADD CONSTRAINT language_copy1_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.leadpools DROP CONSTRAINT language_copy1_pkey;
       public            openerp    false    231            D           2606    107706 !   monthly_goal language_copy1_pkey1 
   CONSTRAINT     _   ALTER TABLE ONLY public.monthly_goal
    ADD CONSTRAINT language_copy1_pkey1 PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.monthly_goal DROP CONSTRAINT language_copy1_pkey1;
       public            openerp    false    233            `           2606    107708    role language_copy1_pkey10 
   CONSTRAINT     X   ALTER TABLE ONLY public.role
    ADD CONSTRAINT language_copy1_pkey10 PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.role DROP CONSTRAINT language_copy1_pkey10;
       public            openerp    false    247            b           2606    107710 &   service_contract language_copy1_pkey11 
   CONSTRAINT     d   ALTER TABLE ONLY public.service_contract
    ADD CONSTRAINT language_copy1_pkey11 PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.service_contract DROP CONSTRAINT language_copy1_pkey11;
       public            openerp    false    248            d           2606    107712 "   service_item language_copy1_pkey12 
   CONSTRAINT     `   ALTER TABLE ONLY public.service_item
    ADD CONSTRAINT language_copy1_pkey12 PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.service_item DROP CONSTRAINT language_copy1_pkey12;
       public            openerp    false    249            f           2606    107714    skill language_copy1_pkey13 
   CONSTRAINT     Y   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT language_copy1_pkey13 PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.skill DROP CONSTRAINT language_copy1_pkey13;
       public            openerp    false    250            j           2606    107716    stage language_copy1_pkey14 
   CONSTRAINT     Y   ALTER TABLE ONLY public.stage
    ADD CONSTRAINT language_copy1_pkey14 PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.stage DROP CONSTRAINT language_copy1_pkey14;
       public            openerp    false    252            F           2606    107718    note language_copy1_pkey2 
   CONSTRAINT     W   ALTER TABLE ONLY public.note
    ADD CONSTRAINT language_copy1_pkey2 PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.note DROP CONSTRAINT language_copy1_pkey2;
       public            openerp    false    234            H           2606    107720     opportunity language_copy1_pkey3 
   CONSTRAINT     ^   ALTER TABLE ONLY public.opportunity
    ADD CONSTRAINT language_copy1_pkey3 PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.opportunity DROP CONSTRAINT language_copy1_pkey3;
       public            openerp    false    235            J           2606    107722 )   opportunity_comments language_copy1_pkey4 
   CONSTRAINT     g   ALTER TABLE ONLY public.opportunity_comments
    ADD CONSTRAINT language_copy1_pkey4 PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.opportunity_comments DROP CONSTRAINT language_copy1_pkey4;
       public            openerp    false    236            L           2606    107724    parameter language_copy1_pkey5 
   CONSTRAINT     \   ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT language_copy1_pkey5 PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.parameter DROP CONSTRAINT language_copy1_pkey5;
       public            openerp    false    237            T           2606    107726 !   product_item language_copy1_pkey6 
   CONSTRAINT     _   ALTER TABLE ONLY public.product_item
    ADD CONSTRAINT language_copy1_pkey6 PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.product_item DROP CONSTRAINT language_copy1_pkey6;
       public            openerp    false    241            V           2606    107728 !   product_type language_copy1_pkey7 
   CONSTRAINT     _   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT language_copy1_pkey7 PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.product_type DROP CONSTRAINT language_copy1_pkey7;
       public            openerp    false    242            \           2606    107732 '   quotation_comments language_copy1_pkey9 
   CONSTRAINT     e   ALTER TABLE ONLY public.quotation_comments
    ADD CONSTRAINT language_copy1_pkey9 PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.quotation_comments DROP CONSTRAINT language_copy1_pkey9;
       public            openerp    false    245            B           2606    107734    leads leadpools_copy1_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.leads
    ADD CONSTRAINT leadpools_copy1_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.leads DROP CONSTRAINT leadpools_copy1_pkey;
       public            openerp    false    232            �           2606    572441    mybom mybom_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.mybom
    ADD CONSTRAINT mybom_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.mybom DROP CONSTRAINT mybom_pkey;
       public            openerp    false    277            �           2606    572448     mybom_product mybom_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mybom_product
    ADD CONSTRAINT mybom_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.mybom_product DROP CONSTRAINT mybom_product_pkey;
       public            openerp    false    278            �           2606    762115    mytbmatching mytbmatching_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mytbmatching
    ADD CONSTRAINT mytbmatching_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.mytbmatching DROP CONSTRAINT mytbmatching_pkey;
       public            openerp    false    316            �           2606    762108 &   mytbmatchingline mytbmatchingline_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mytbmatchingline
    ADD CONSTRAINT mytbmatchingline_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.mytbmatchingline DROP CONSTRAINT mytbmatchingline_pkey;
       public            openerp    false    315            �           2606    572434     mywork_center mywork_center_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mywork_center
    ADD CONSTRAINT mywork_center_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.mywork_center DROP CONSTRAINT mywork_center_pkey;
       public            openerp    false    276            �           2606    572427    mywork mywork_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.mywork
    ADD CONSTRAINT mywork_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.mywork DROP CONSTRAINT mywork_pkey;
       public            openerp    false    275            N           2606    107736 !   payment_term parameter_copy1_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.payment_term
    ADD CONSTRAINT parameter_copy1_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.payment_term DROP CONSTRAINT parameter_copy1_pkey;
       public            openerp    false    238            R           2606    107738    product payment_term_copy1_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.product
    ADD CONSTRAINT payment_term_copy1_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.product DROP CONSTRAINT payment_term_copy1_pkey;
       public            openerp    false    240            �           2606    761683 (   procure_plan_list procure_plan_list_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.procure_plan_list
    ADD CONSTRAINT procure_plan_list_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.procure_plan_list DROP CONSTRAINT procure_plan_list_pkey;
       public            openerp    false    299            �           2606    761676    procure_plan procure_plan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.procure_plan
    ADD CONSTRAINT procure_plan_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.procure_plan DROP CONSTRAINT procure_plan_pkey;
       public            openerp    false    298            �           2606    761690     procure_price procure_price_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.procure_price
    ADD CONSTRAINT procure_price_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.procure_price DROP CONSTRAINT procure_price_pkey;
       public            openerp    false    300            X           2606    107740 %   purchase_item product_type_copy1_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.purchase_item
    ADD CONSTRAINT product_type_copy1_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.purchase_item DROP CONSTRAINT product_type_copy1_pkey;
       public            openerp    false    243            Z           2606    107742 '   purchase_order product_type_copy1_pkey1 
   CONSTRAINT     e   ALTER TABLE ONLY public.purchase_order
    ADD CONSTRAINT product_type_copy1_pkey1 PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT product_type_copy1_pkey1;
       public            openerp    false    244            �           2606    761662 4   quality_inspection_item quality_inspection_item_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.quality_inspection_item
    ADD CONSTRAINT quality_inspection_item_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.quality_inspection_item DROP CONSTRAINT quality_inspection_item_pkey;
       public            openerp    false    296            �           2606    761655 *   quality_inspection quality_inspection_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.quality_inspection
    ADD CONSTRAINT quality_inspection_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.quality_inspection DROP CONSTRAINT quality_inspection_pkey;
       public            openerp    false    295            ^           2606    107744 ,   quotation_item quotation_comments_copy1_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.quotation_item
    ADD CONSTRAINT quotation_comments_copy1_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.quotation_item DROP CONSTRAINT quotation_comments_copy1_pkey;
       public            openerp    false    246            �           2606    762122    quotation quotation_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.quotation
    ADD CONSTRAINT quotation_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.quotation DROP CONSTRAINT quotation_pkey;
       public            openerp    false    317            �           2606    761718    returnorder returnorder_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.returnorder
    ADD CONSTRAINT returnorder_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.returnorder DROP CONSTRAINT returnorder_pkey;
       public            openerp    false    303            �           2606    761620     sale_contract sale_contract_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sale_contract
    ADD CONSTRAINT sale_contract_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sale_contract DROP CONSTRAINT sale_contract_pkey;
       public            openerp    false    290            �           2606    761634 *   selling_price_list selling_price_list_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.selling_price_list
    ADD CONSTRAINT selling_price_list_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.selling_price_list DROP CONSTRAINT selling_price_list_pkey;
       public            openerp    false    292            �           2606    761627     selling_price selling_price_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.selling_price
    ADD CONSTRAINT selling_price_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.selling_price DROP CONSTRAINT selling_price_pkey;
       public            openerp    false    291            h           2606    107746    staff_list skill_copy1_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.staff_list
    ADD CONSTRAINT skill_copy1_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.staff_list DROP CONSTRAINT skill_copy1_pkey;
       public            openerp    false    251            l           2606    107748    task stage_copy1_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.task
    ADD CONSTRAINT stage_copy1_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.task DROP CONSTRAINT stage_copy1_pkey;
       public            openerp    false    253            �           2606    572534    stock_quant stock_quant_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.stock_quant
    ADD CONSTRAINT stock_quant_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.stock_quant DROP CONSTRAINT stock_quant_pkey;
       public            openerp    false    288            �           2606    572541 0   stock_valuation_layer stock_valuation_layer_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.stock_valuation_layer
    ADD CONSTRAINT stock_valuation_layer_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.stock_valuation_layer DROP CONSTRAINT stock_valuation_layer_pkey;
       public            openerp    false    289            �           2606    572462 &   storage_location storage_location_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.storage_location
    ADD CONSTRAINT storage_location_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.storage_location DROP CONSTRAINT storage_location_pkey;
       public            openerp    false    280            �           2606    761697 $   store_move_list store_move_list_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.store_move_list
    ADD CONSTRAINT store_move_list_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.store_move_list DROP CONSTRAINT store_move_list_pkey;
       public            openerp    false    301            �           2606    572469    store_move store_move_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.store_move
    ADD CONSTRAINT store_move_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.store_move DROP CONSTRAINT store_move_pkey;
       public            openerp    false    281            p           2606    107750 (   task_comments task_attachment_copy1_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.task_comments
    ADD CONSTRAINT task_attachment_copy1_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.task_comments DROP CONSTRAINT task_attachment_copy1_pkey;
       public            openerp    false    255            n           2606    107752    task_attachment task_copy1_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.task_attachment
    ADD CONSTRAINT task_copy1_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.task_attachment DROP CONSTRAINT task_copy1_pkey;
       public            openerp    false    254            r           2606    107754    taxes task_copy1_pkey1 
   CONSTRAINT     T   ALTER TABLE ONLY public.taxes
    ADD CONSTRAINT task_copy1_pkey1 PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.taxes DROP CONSTRAINT task_copy1_pkey1;
       public            openerp    false    256            t           2606    107756    template taxes_copy1_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.template
    ADD CONSTRAINT taxes_copy1_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.template DROP CONSTRAINT taxes_copy1_pkey;
       public            openerp    false    257            v           2606    107758     term_condition taxes_copy1_pkey1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.term_condition
    ADD CONSTRAINT taxes_copy1_pkey1 PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.term_condition DROP CONSTRAINT taxes_copy1_pkey1;
       public            openerp    false    258            �           2606    761711    tbaftersale tbaftersale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbaftersale
    ADD CONSTRAINT tbaftersale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbaftersale DROP CONSTRAINT tbaftersale_pkey;
       public            openerp    false    302            �           2606    761641    tbmatching tbmatching_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbmatching
    ADD CONSTRAINT tbmatching_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tbmatching DROP CONSTRAINT tbmatching_pkey;
       public            openerp    false    293            �           2606    761648 "   tbmatchingline tbmatchingline_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbmatchingline
    ADD CONSTRAINT tbmatchingline_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbmatchingline DROP CONSTRAINT tbmatchingline_pkey;
       public            openerp    false    294            �           2606    761669    tbpackag tbpackag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbpackag
    ADD CONSTRAINT tbpackag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbpackag DROP CONSTRAINT tbpackag_pkey;
       public            openerp    false    297            �           2606    761733     tbreturnvisit tbreturnvisit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbreturnvisit
    ADD CONSTRAINT tbreturnvisit_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tbreturnvisit DROP CONSTRAINT tbreturnvisit_pkey;
       public            openerp    false    305            x           2606    107760    terms term_condition_copy1_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.terms
    ADD CONSTRAINT term_condition_copy1_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.terms DROP CONSTRAINT term_condition_copy1_pkey;
       public            openerp    false    259            z           2606    107762    terms_member terms_copy1_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.terms_member
    ADD CONSTRAINT terms_copy1_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.terms_member DROP CONSTRAINT terms_copy1_pkey;
       public            openerp    false    260            |           2606    107764    ticket terms_member_copy1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT terms_member_copy1_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ticket DROP CONSTRAINT terms_member_copy1_pkey;
       public            openerp    false    261            ~           2606    107766    translate ticket_copy1_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.translate
    ADD CONSTRAINT ticket_copy1_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.translate DROP CONSTRAINT ticket_copy1_pkey;
       public            openerp    false    262            �           2606    107768    unit translate_copy1_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.unit
    ADD CONSTRAINT translate_copy1_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.unit DROP CONSTRAINT translate_copy1_pkey;
       public            openerp    false    263            �           2606    107770    user_role unit_copy1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT unit_copy1_pkey PRIMARY KEY (user_id);
 C   ALTER TABLE ONLY public.user_role DROP CONSTRAINT unit_copy1_pkey;
       public            openerp    false    265            �           2606    107772    warranty unit_copy1_pkey1 
   CONSTRAINT     W   ALTER TABLE ONLY public.warranty
    ADD CONSTRAINT unit_copy1_pkey1 PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.warranty DROP CONSTRAINT unit_copy1_pkey1;
       public            openerp    false    266            �           2606    107774    work_item unit_copy_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.work_item
    ADD CONSTRAINT unit_copy_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.work_item DROP CONSTRAINT unit_copy_pkey;
       public            openerp    false    268            �           2606    107776    work_note unit_copy_pkey1 
   CONSTRAINT     W   ALTER TABLE ONLY public.work_note
    ADD CONSTRAINT unit_copy_pkey1 PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.work_note DROP CONSTRAINT unit_copy_pkey1;
       public            openerp    false    269            �           2606    107778    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            openerp    false    264            �           2606    572455    warehouse warehouse_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.warehouse DROP CONSTRAINT warehouse_pkey;
       public            openerp    false    279            �           2606    107780    work warranty_copy1_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.work
    ADD CONSTRAINT warranty_copy1_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.work DROP CONSTRAINT warranty_copy1_pkey;
       public            openerp    false    267            �           2606    428720    work_center work_center_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.work_center
    ADD CONSTRAINT work_center_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.work_center DROP CONSTRAINT work_center_pkey;
       public            openerp    false    271            �           2606    428783    work_job work_job_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.work_job
    ADD CONSTRAINT work_job_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.work_job DROP CONSTRAINT work_job_pkey;
       public            openerp    false    274            �           2606    428713    work_orders work_orders_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.work_orders
    ADD CONSTRAINT work_orders_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.work_orders DROP CONSTRAINT work_orders_pkey;
       public            openerp    false    270            x   �  x���mo�8�_�O�����yu�=
t{�m��V:A���Bx(Wʧ�IR'4!�F�-��_f��d��1n���B8��d��*灲�`TKYj���
'��Ђk��vK����O�?|O��{���a/磻n�<���:��T*[j��������wO,^![✭RU�b��Ԩ2sw���������ˀ8.�!�
e(�2s{����C�gi|��0`(Ӧ�ŗ�i�7=�w�bD�:�%W��+��4�Oz�}�%���\�rZ�����J�/B85Δ�=dz]����aF8��s�I0̤�N�R�G-�]�a&�K>�J��" �B�R{
���� ����2\ ).b@� ��{��>�N}�m�LP@9�H��$��=fm���Ͱy�$/D}N9�@�
��f��\��?����&��p@��[�#)3	�vl�����[cڎ_2�/��������a/�u�0��_�D�8�q��0���F�����}���rJcq)4X |�td��(P�cq�OXM��qrj��u��*��art��@8���:�������f��4��,�e�J�ó뒧�_Ő�sj�e�iA��<���c����@�9�.�*1W��'r��,���|�|��,K��m�*~�%"���j�F�@���,��ӧ��I�Ɗt�?�����4(�,d��p��b7y���B<�-b�m�a��7U���l�>�\k����<+>e
,m����/���֜�� ��A�Ƽ�.���>�}�贉�xq��T�/����-��Y��l�����x�����ð�	jD����i�GߏM��c��gX�U>k"��*���p��{�eqvxP�&^��V#-��l�:�cN�ko���s^jQ��㖲�y�q�@�X��D��(&E�_ ��*E,&��q�Pw��d	�5t�݇gb��S�U���A�c���{^�+v�i��V�?ѧ�O�dv,�s,� �V�I+���</k      �      x������ � �      �      x������ � �      y     x����j�0���S�$fF�zkq7hB1).%�@m)��m���)����P1�K���0���>�,��#�O���D�'�����P��o�ܹ�U���e�y��u��#�VQ��z魹\Uw��<�x�DQ�hHY�F��.-�y����័�&�<�Q��t����\���$�brj	A
��Ơ��Ygbgֺ'ns��M!�S��F7}�!5-�ϠGX��B���׶J���`p 9�5А6����,Ș^�t:r�B���P(��*���ٻ�      z      x������ � �      {   ?   x�Kq�+���3�444��#����t,t�����ͬ��,��p�r �!W� ]�U      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      |   P  x��[Gn+;��m�
L����m���e%+ږ���:z�[j�2�dU�$����ц��s�˛�W�C���.�</�G=���q�,�[��4�8i�۞���!�����U^��JAUj��'�=���xD�~��_[Szi�(�)H=`�~? �5b�h�?���aڡ���n�1JCjǑ����՚��R����w�z^ξ}{�%Τ�Q��i�`���xD}<�J�������G��F�@��8"ޞ׏;����I��Hgpm�7�%�#�_*�K|����~jG`
���&�z�1q�[�ù}:�b�u]���� ��b���������CS�?���	\芖xD�{Z�a���}V�! �����/`���T��߶_��[}^.�|�W�}��/A[w���+����gN���TmɆ�B���<b����j
�V�� �2A�7�,|�1�|�G�xp ��e�G���lzn�8�Y�_��lL�����q�51�p�(�������LyH����0�d�4A����&�%�cc��'��ԫ�ř�|���!��0���$QOJ]�:�VU(x""�	���AZb�� Ƹr���<��K�ͳ��y�\����+kr��Qw_Z�Tl��B�*�c�9C��g!�7d�c9˱��e���7<O�	��u���i��9�s*�����o1��)� �7��Y�,��h����p�i�;�j��<���Y��%����YC�f2|_-I��vi,��z��e=��<8�]�ײ�H���+.��f������ĳ1�m���蛻��\'�;:�7��,h1��O`#z���V�S�XKl�Ʃ'3�̟ϋ��3WEz�X�bf쫩4�#�Kq�N����9e. ���0��#q��X^GUT�X�R���	!��i3�#��b@��\��D�	�$6��v$1��K6�'a�����=���U�c<�΢ð_^��r=�#��i�>�#����j�-⚪�!%�z���EǸ���qN_���ܪ��mpk�7�LO��j��B?ǙT+��B��<���Azw9Tf�s����f���8�[�֬H\V�3�\�2��.H%�1��FEP GԃBy���N5�t�[S�z%�֐��Ⲓݟ�+�w�@-L�<�6u�"+�e<������P�Dj�� �Pc]K>�c�vB\�� <���#ʈE��`	�m��ӔxD�=�|�nM�ي09�ݔ!k���r�K��N�xV?=����������a��:����Ytg	�t~ۜ+Dئ�pD�����a��k��lj�B���	ї�aTN���fΚb߰���^�}vyn���-SO?!��Q�.ьT�w��������ԻM�nST4�-@��D�l���[i���sV���i!1�e��z���z!X�N���v5UI\fd��R����<Z�0e뢑p���5�WNK�P�n�;���2�k ����ږ'{��>�b� �� �k`�p�!.˷��1���n��"&Kdǆ\-yJ<"^6���]�Z��	�}>6e� ��y8�����k'yda�/K7wai�Ny=s2��gr[!�U���-q���ӯ���6�9�^׆�F�zy��r4v�>���8�h���^��lv�}�=��.c�)s&auz*4��=�#q���R'?�{�#��C���^� ��]�ҕ:/��I�q�"C�Z�q�������xDN�����j� 2�.�E\�C��l-��I�+��!�@-���#��U���w�����A�N��2�<���}J<bnMa3Ӝn�1Ɉ6� ���)qY#f*詛u/�$�倂98�"C\������p��o@�h���	h��/󇗥{o���/����4"qh�mo;(��!���+>���Gԛ��h}�^�d�!�8��l�f���	�y�Y��;Iu��:��9j�ˬ|��w��ݹ�̴��Y��Z�����OtSJv�P0�Z:�qٶ������
o����Z���f�h��q�5yw�)��sa&#�H|��\WQ1.��Ԩlr��ȹKn�@6�|2ƥq���~y��H݌�������}�=����������A��ª<����*̒��`È��=\ή�ק��۩2IQa?��Z��F!��÷��ő���*g���igpz�v��H��V���Ȼ�s��om��[��-�`�����+ztR��Fw��|5��xD���87J	�딩M��,q#W4�9����X����Mb<b���a/��V	����阇5-I\C��S�K��Q�:T��
�g�Ǻk���;������q9�htJ�rg�Ew"�΀�}���Z9�;�<O�*0/I�֣�xD���~��=d{
sq�u����И^rcP���!q�hCOu�������� +�{��
��kXN�__�ǯ!��s	��%8����wK<���t�[���r�3��5
�/� 0,:�#�[��R�l�)üSw��H����ev+����l������[��$D�li�U�G�G�y��\��>S��w�����4�U)o	��{�l壑-,ڛ:�*R#P��v{ރe����4���p�YT��� �PӤ�e����t#֬��4
�};��<�eJ�x��P�����ӣ0�'��"6�8�A�x{�@|��s,��v(i���>;d�� ���uT#3kr�%�*1m QO#�士�f�r5�N\�aq��j���>��<�:���n�g ��ՂA+!.���e��j�(��LW�Z&�j�OpD{���i[�쓆#��yL���J\&�)ܶ�\�;e��
0m}�Ӆ�e�����U��7��������VjǸ��I��~��׉X�Z��F�o*L�qy�_�=\Z��c�0F�a��=X��`y,4�ż�N���F�y��iû��('���Y��2�T^+���v���'�V���/��c\H��9TF��]��9 ��tuH\�C}�b��z���v����%�	��\�o�5�ڝ� �:��q���}\���)���Sm��P�M-0��vX�~�#�f���=�z� GO�����P��1.W>>ּ�1��xC���M�	����K����-wR��S������O�G̽�&��_�{d��kmf��
L�Oo�q毟mp(�8h1$��U��e}{����) ���b\�N��ˢ:�oz��]�]>b���/���q��r��畜ķ�cXv�G����J/����������v��a�Շ2��UM�5n�!���b�>.�zH��[�����a�>jS�z2����2�.��%3�d��_7���6P�����>�6��T�������׵XLs�_^�q��Wu�&W��K�r��׹�H�Fl�Y-w�o���+��_���n���W� �$�9vn�TH};����w���Ds��h��R�?�f�c��)V)������*cG�/�����X�����Q$_M��+���*qq�$,�(@R~}�T���ov��*AY!���5.���+�u��l�N��N�lw�w��V{�z��;4V��x�=NV��8��?ӎ����Q,ߵ���~ͺ�J+K�
��ܭ�z^�O���p(FnI�ϣf^l�o�>S�;<��w(�P�o�#���j�i3�"& ��{R>����NΛ0Żn���|��m|l��t�D��q.��Y�W%���˧�����@3�O�*C[�&�u�$�>*���X�?LW�eu�֦��<�sx�TZ���e���ع��lA`!�x%�g��8���K߭�v��������0�Z�QV����H&5����YKB�Ɓ'�
�]7����5J�1]|�����y�{� [K+̹)O^��^�<֒R)�P9���CR�IT�Î�	�O���I:>O�W�?�_�~�`K�      }   _  x���KN1�יS�ٱ��UH-���EmTU�W`�9Xq%�1�����쨝Xʟ�?�qf�%��~z�3���bp1�B $`�S>�!Ł�tH��,;��Z�mo�pR�D��\*��N�2� RY<��~�t��'�'���Ŗ�Ԕ
�HZ�s!J��!�z�ץ���a�T�B��%y���D�\�=:J���z��魰�:h�$d��t %�v�����t,�A�>��ڣ��Ɔ�U$D/�f�[7��o�~ b��Aˌ�^2R����s;,yT��<Mp�Tz<��_�o k��G2٤v�fp�:Cn��g��	Za�^x�oή��hE�7��T      ~   �   x����J1�ϓ���e>�l�� -xPPDk�e���.�ҧ7ٕJ]=&3a��G~0�n=o��ycaq�O���%�mAu@	�+��H�A�@���%�e�_L������b�f���S����0�IV���(��N����U�+O��y}�KF���$��ۦo�8T%D)їL�`\����w�g�{@Ͻ��r }4<y��}[�o���k:rxj��q~�{ �	P-*��u�v�         }   x�e̱
�@����)����l�qe
[l�`a!$(Qԧ7 !���ߥ��a{]��i����e�� H(�	^A�����7B���N���~�w����l��\ �h�a&�Pj�4�'�%��^+      �   �   x�m��
�0D��W���[brӓ�T����h)D�R�����Vaw����y��b�T彮�k�jfI�po�i�Kt�z�H�nIY7�vh���|��C%�/��G�^��ٸ`@	�QBY�������=��|����>�$�e���#ba��/!�?6      �      x������ � �      �   >   x�3��
H	sK�444c###]]#C+SK+CS=c#��@��㇉�b���� $"�      �   �   x�K4s	H���M���!###]]#C+SS+S3=sKC��@h��D .��ʒ�?�w�V�Y���7$����Hg��R�\V虚�'ݗ9Yy��Qn�冸�4��3�!J�u��A�A��ح3�20�31�T�8����� _<{a      �   �   x�u�A
�0E��)�@B�'i���ZPЅ�Ν�ў���p��c�k���?3Eݜ�rQ���q}�o�) 3�
��$rrx�;�TjbċH��.���4tڗa��4Ώrj�f5+���]0���Fk��n�wW��F�]3F�>#��P^�&d�q�j����������7�e]      �   �   x�u�=
�@�zs�\ ��n��%*bTmK�TQ��nS�a^�`��c?/7}s����������2G0A�q�Ir,�<At�f]��v�{�֎��7R!�h���TS�+�8Jt<�*�W˝�T�#�Q�J4����o�lp&�i>����X�ؔ�b����ϲ��:�      �   ;  x����N1@��_��tf�n�o�JL`1�����C#,���ۢ�	f�nۙ&�'����|����L  �$&�bC�2'Jy�����冤F*l������B "�O�#�ԃ��꿜@����a�3��������^�D>��//D�\2�����`Vu�W��4�c��$G����M;'-H�>���7:(֡��ӗV�|��W�)v������J�l)/t���������z�S-��3�Jy��\���Ţw'o�E�C�ͷ��M׷w��>Æ�XZ�5�I�^�L�-9��<p�栚�$I� 3��;      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   l   x���6IsL�2s����K)-.)�444Da���(X�Z�YZ�7 BCNC��<�2��$��x�qFFHL#cccLCL���1�MM����B����� �,H      �      x������ � �      �      x������ � �      �   �  x��V�R"1}�� �ݹL2o���Bq��*j�"����ܾ~E����M��S5�t:ݝn�[�����#  ��#̢��D��$�+nۯ��뵵� ���̦7-\寰����Hr��I����TsV�ݘ��z˭#�N��Ȫ_�p8��ޮ�G��V"�r�����о�UŠj���1Z+�!b&?�����o�	Є��q�� �z#k1��A'3֕�ns821�qR��Z �����n3^�iz��*����=�i��ҷ�f�,ӱO��n�!��;Y��]������Bf�;�;��,�;j��#���,Q$0�a"�,z(����\t��X>���>Qg�X��-D��RC�c��M�����$?>j�F��)+��w��fjR��z�-�z��H2��*F �ݕNyS���q������2�����$8MY��9]���")-;%�id[��Y�~�X�w�6u(��۸��x��Iت�&�Qգ'���P$�id�9P�}�����}(�i!�4���E��p���p�v�]�cd�_���9�0�?�>�����|�$Q��[�ɢ�U�
�N�S͠ �r{4�gqmo�7�?�L�Ϣ�Z������$��X�W���`t����a!�>Ni&��{Y�7��w����]����T�|�.x��1���}1^?�z08��	�<A䏇{<͑^�L&�?U7`      �   V  x����n1���O�Ě��z�;�R�P�"����B @O_� �8X�v�ҹ���3|,����)%�0`�
�&��@E���pM9"A�Ňf����Ŧ�j媏L�Ԇi
R� �3/As]Z�6a���))LP.�T�<��.#�&�E��}���[5y��:�h;x���4AD��i;�`��H&�H�>	�F�)r>W���N�ʡ3p?z���rƽ˗�j�\^����?1}�ϖ�%���Ô= �
�z }��Q��n��9P��"����,��ެD�A[C��z �=o_˰�nWD�u�>��f�J}����r����zފ��.[���a\��b�xao�ʽǲ͏]�7XKe��c/�^��O=�,��'r)�\+ǿ�X��� O�g���䳽���0��T��Vw�˖��S�O��jRd����Ln�ic�Xn�x���?];

_�������W�_}[0"�:D�%����qP�Ss�vS����!w��ۉ�,��F
y���0;�.�k������kE��??I��1F�I��(����n�ճ�m7/�Yj��]r���BÀ���~�c�U�u�ޟ�E4����k       �   C   x���q�6H�I/*�4202�5��54S04�24�21�310�)n ��@㇬���
�@�0����� �m�      �   Y   x���(�LJ��4202�5��50S02�26�26׳02�)n ��@�G\EE�~9����m�
�V&V��z���8ű���� �� �      �      x������ � �      �   �   x��4+O��5q5��|�~�FFp��1�����������������������9�������1�!�ryfT��d��eAM344Db�i7�25ѳ4���X�(X��Y���� ����� �/R      �   �  x�u�_n�@Ɵ�Sp�ff�x�oBCJH	�R�RQZB�H�`���#O�R�ctm����3+����hǸ;^��ݘ!b.`�M�@$�����l�ɏ�r}�0� �8tu$U$�ku��tG�� ~J��TU��ܠ��=+�Yĥ�m�"��@q�^�Վ�e���~��-��kF�pe�o'�Mt�r���H{V�;k�`����;�L�A��"��a�n�JV
��\Fr�(�D	���!�����mW�l?0)�#��� �HJn���=�5O�|zz��L)�GŢ�[���Gu�{�S��i���G<��0��=�qHs�y�hd�[Yz�Q��\jQ�{�l3���7	f�ڧ�Is��>���%7j�`�2��>UL�ܚJ���a��>?��[�
P���p�G�/t�M���ŭ�0���RqY_��pM�����xs3]��2P>��V1
Á�t���Q�=>\��������o�{1��bHrY�|��_���~�F�?��      �   -  x���]N1��;�`m����i�Qa2����A�Qf>��ܒqv üAzҤ�Mϗ{�^��t֘'L��[C�I�J	K��k#@9ֿe�0,)�<�(=����ㇴ�EAB�����@��BH��u���wQ��&�k/������P�o�(����� �eqD��"-������^�@�a����]}�RXw4_�w�I�SL3�,s̗�K�v���_���6�ִ��
�S�MG�dV/�W����I/�NC�07����(�	��!�k[���I�8���/�(��J��      �   ~   x�]�1
A��:9�^`��Mf3�N,a+Y�X���wEP���o���|�)�� �H�1Ds�����:�'Y�-%���Bf�6����^��������$=A�a- ��~I� ��g���� �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�uNA
�@;w^��2�ٺ��AA�����
z�A}�{�R'�	��iL��a�*aQ8��ik��Є�d�
*.@��� �X�f��G}\z|�[c�H��G�ͻVU�,*t��y?O]�8;F��V-����Xj��~<=:�2I      �   �   x����j!E��+�e�[KHҖJ ��&��wv��>$����������u���&fO�Sq �Yr��ǣ��E�(�b`H�N&���s+�	*GU�Tf�}�{�zS�\o�����>��� 
S�8������%�ڦ�����<?oN�߿���94��ġ�0tS���)�NkNH�X��f��0~`�!w�{:L�{tnp�탵��EX      �   �   x�u�MK1�ϻ�b�@��$����*Ն����Zۂ�^��o�v�Bry�}��y�_�n�"A��0�1^��(�
]�,�����6�@��������\�#�S�0��ڄ��^5Vu�s�����o':ba�����Kk�U]��^��I���U�9]��w��|8�nDء����,��~�٧��0,G1/`�f�Y]���WOqc�P�u��t{ݶ�y<o�      �   �   x�u��J�@��7O��0����^�E�DB[�P�xh,Q1B����������|��xx��+�w�#���D.�.�F����oOS�욢;=��R�����EDU��� �G
�Y.{+@�����=�z}�L��C�|�D��@��z��E�0sm_���m�l����K�a�!��0�������8�_�C��v��UK

��yOɔ��2:�o"�(�o*U0      �   �   x�uNK
�0\7���{�4�֕�
��+7�j�ۛl������线]Bܪ���w��0Ā�KI@ā8�����	��_20�۱4�����Ҽ��RJ��C)����
g�<�q龙����ǅ�H�J�֨��i`p�k����N0�>$>B�      �      x�3444�# �\1z\\\ '2#      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m��N�0���S�ub�)�oH;p�B�a�m--RiB�=>�Є������5�����Z bn"��
�
m�ٖl5��-���J��Ul��ubW2�}wxY�6
:��RAL�� }u��,���3�h9<����s�&��Xc�P�K�a���JsSr��.�8�R�<C?������ ���c�Cj��~b����B+mU��U��!�܀��MT�      �      x������ � �      �   �   x��4-�tt�HI�|�k��ɍ�7�~ڱڈ�8���t,t��L����,�0�ML��-,8�АӐ���+���$�9�T��h7�25�25ӳ�0�4��X��alI����n^��?�yP7�X�*�Y �h�gnj�)nd�ghb7,F��� �=o      �      x������ � �      �   �   x�u��
�@�ϻO����Ϯ�/`A)�A�xH;���B�>E�C43��L��.M��,@��DQ �X�P��_N�yr��F��=ʼܜ��F0y�x"�n�F1+���)VS���Y��σ�t�b\�nI�����K�E[?���lYi)���.�      �      x������ � �      �      x������ � �      �      x������ � �      �   :   x�sL����t��4202�5��50W04�21�24�351�)n ��@�G\1z\\\ ���      �      x������ � �      �      x������ � �      �   <   x�sNJ˳�
2w�4�?N###]]SCS+c3+SC=3C3��@-1~\1z\\\ �o�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�����@�k�)x�����sw�	&���Cca��XH���ˏ
�L���;�k��qQ���������:a�|��Y_��t�jg.�m�tVB�r��;�N��쟫���4'��3�F�pA.�i��>	�+h��s��������>��lT%)=Ll��$k��Ӗ�1��U�      �      x������ � �      �   �   x�+26�r.�H��|�������F�����������������������%NqCN 6����tO�56M���c�@��u,u�M�L,��,��Az!��\�#=SB"�9AHbh26�34��)3,F��� �8�      �   _   x�+H�K
�O���4202�5��50S02�26�2��365�)n ��@㇉��u]"|����*���L�L��LM1���,������� �%-      �   �   x�e�M
�0���)z���7I�d�.��RED*.����[�T��y<>x�W�E�=,�7մ��`*"�@�!��]�(-�;��I���X7탥������̿2si}�b1 {�]�e0�Nj����.��K|�0�쳧�M)�s�l�0��Vk�ż5�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�uα
�0�y��@�ݟKl�
ED:��CAlD�
J��t���7����ݫfs>t��(@�&hH	�"Q���=�p����\��4�Sߧu��z�N��d)�H�B�0 kU�o��I{=N��4�d%D덳����y���6��(����9�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   :   x��t��t���L�4202�54�50T04�26�20ճ06�)n ��@�A\1z\\\ ��c      �   �   x�u��
�0��S�v�6m�k����P
*��Z/}zS=�.���a&��p�á @�����_΂����ݥ��!����θ���b��Y��4��Ň��lxc<�f�cj!��K���xޜ���n�I}N�6ް�L�s�.�7�?���JK)�PTGV      �   �  x�u��n�<���by���h�������2�a�@��p����dAT=y���s|���7/a��F!"����A�XQ�%���kH���qq��E��왯}���Gu��7.���O=�<��H�C*��	�cP ��5>�lѱ��i��`�CF�u��D�D<#
�c	���'e�&hm���{�/�P��Nt�uB�A����:�#8�����ËFّ5���`�����;4�)7����.���&T�R�
�!�ʥB�O�MM ��þyse"`��C�	��2�9TB�\�� hJ&Iy��nF'���L�	*@��Z�d��Shb�|^�M6��"W`&
"�+u��%����;�Xp�w���X�nS+R��P���:ޭ��>�~TB��J�U�-Y�k>����v�6E?_�.(9_���ʂ6����g��\���\��TV�.�hxbzٿ��E�i���Vɖ�u�OL��w���=��	���E�5��?��U��]�4�t���R��dzD&������p��^��+о>/��Tw�c���.�o-~��I�H!�N�<t2���i<����%g����c�t�Eۄ�����s؅�EO_@D�'�tG�I�0�����K��A��s��h�'6�2Z֝�w�-fKH
�Lw7m�9��e���7�ל����n��Ifx�.��?O���B!*�v�����bx�~�������#z0h�ܭ��F����� �����_oU<�%dRUꖘ��V���ݶ��)
�Ͱ�z#*�ф����>�h3:�e#$L���9�~�л���vb��.{��N�r*���meF6�L�fD�Z��Q�7������~;`�[�
��7%�Z`l�������6;ٞ�u�Ff� )*uK$ٛ��ґ�?F�Vky���
AW�(�W��@B ���I1      �      x������ � �      �   x   x�m��
�@���S�dٝ���N풐: X)R�oo��f���;>��r��sZ.-'XH�LZ��C�T�jĚ^��t�ָ�N��>��f/l*!-�0S�u�૜�9���!|      �   ~   x�]��
�0Eg�+�zX��1K�,]<d�X�N��5�!�t��4���syF愜8TL���(��հ@+��Q`�#D¶�ƾ��z�_ϿlʀU�\��4�Z������I�ȭt���w�@"`      �   �   x�u��
�0E��+�	�I�y����)Rte�-�!_o��.��;\8�Ü��us�]V�����&�V�9�ȔG��\�٧2=�0/�g)PF�%'ʹ�\Ĉ�]���=ƾ��v8��PGYI�ڥ
K��TG��t��{�{V�9�      �   3   x�3�44516362�p(,�K���,O�,�(M���Ç��ML͸b���� ���      �      x������ � �      �      x������ � �      �   �   x�uO�
�0=�_�hI�uks�1a��2v�2�ܨ����{/9<�Br�����M#�(��0���ؐ6y���՞P��1u�W�p���]�S <��<a�Ь� )p
��Sd0r���4x/�}E�Vɲ�ݸ=��9�%��8F�ֹ�>ΏM����R�'H9?      �   _   x��(�Ksu�r��4202�5��50S02�26�2��371�)n ��@�G!�
NI7��/5�B��\��������\���S��L��؄������� 	�:      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     