SPOOL 01_сreate_table.lst

PROMPT Скрипт создания таблиц
PROMPT Автор: Серова Е.М.
PROMPT Дата создания 20.04.2020

PROMPT Создание таблицы equipment
DROP TABLE equipment CASCADE CONSTRAINTS;
CREATE TABLE equipment (
          equip_id  INTEGER NOT NULL
        , equip_prod_id  INTEGER NOT NULL
        , equip_name VARCHAR2(30) NOT NULL
        , equip_cost INTEGER NULL
        , equip_date DATE NULL
        , equip_docs_id INTEGER NOT NULL
        , equip_ddoc_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы personal
DROP TABLE personal CASCADE CONSTRAINTS;
CREATE TABLE personal (
           per_id  INTEGER NOT NULL
         , per_name  VARCHAR(15) NOT NULL
         , per_surname VARCHAR(15) NOT NULL
         , per_secname VARCHAR(15) NULL
         , per_post VARCHAR(50) NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы operations
DROP TABLE operations CASCADE CONSTRAINTS;
CREATE TABLE operations (
           oper_id INTEGER NOT NULL
         , oper_prod_id INTEGER NOT NULL
         , oper_name VARCHAR(40) NOT NULL
         , oper_per_id INTEGER NOT NULL
         , oper_docs_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы docs
DROP TABLE docs CASCADE CONSTRAINTS;
CREATE TABLE docs (
           docs_id INTEGER NOT NULL
         , docs_name VARCHAR(50) NOT NULL
         , docs_type VARCHAR(25) NOT NULL
         , docs_date DATE NULL
         , docs_per_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы dedocs
DROP TABLE dedocs CASCADE CONSTRAINTS;
CREATE TABLE dedocs (
           ddoc_id INTEGER NOT NULL
         , ddoc_dec VARCHAR(20) NULL
         , ddoc_name VARCHAR(40) NOT NULL
         , ddoc_date DATE NULL
         , ddoc_per_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы acwoproduct
DROP TABLE acwoproduct CASCADE CONSTRAINTS;
CREATE TABLE acwoproduct (
           acwp_id INTEGER NOT NULL
         , acwp_comment VARCHAR(100) NULL
         , acwp_date DATE NULL
         , acwp_per_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы acdefproduct
DROP TABLE acdefproduct CASCADE CONSTRAINTS;
CREATE TABLE acdefproduct (
           acdp_id INTEGER NOT NULL
         , acdp_reason VARCHAR(50) NOT NULL
         , acdp_date DATE NULL
         , acdp_per_id INTEGER NOT NULL
         , acdp_wop_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы defproduct
DROP TABLE defproduct CASCADE CONSTRAINTS;
CREATE TABLE defproduct (
           defp_id INTEGER NOT NULL
         , defp_reason VARCHAR(50) NOT NULL
         , defp_date DATE NULL
         , defp_per_id INTEGER NOT NULL
         , defp_wop_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы woproduct
DROP TABLE woproduct CASCADE CONSTRAINTS;
CREATE TABLE woproduct (
           wop_id INTEGER NOT NULL
         , wop_status VARCHAR(10) NOT NULL
         , wop_date DATE NULL
         , wop_per_id INTEGER NOT NULL)
TABLESPACE users;

PROMPT Создание таблицы personalization
DROP TABLE personalization CASCADE CONSTRAINTS;
CREATE TABLE personalization (
           pers_id INTEGER NOT NULL
         , pers_login VARCHAR(20) NOT NULL
         , pers_password VARCHAR(30) NOT NULL
         , pers_per_id INTEGER NOT NULL)
TABLESPACE users;

COMMIT;

SPOOL off;
