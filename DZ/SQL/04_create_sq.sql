SPOOL 04_create_sq.lst

PROMPT Создание последовательностей для таблиц информационной системы
PROMPT Автор: Серова Е.М.
PROMPT Дата создания 20.04.2020

PROMPT Создание последовательности для таблицы equipment
DROP SEQUENCE seq_equip_id;
CREATE SEQUENCE seq_equip_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы dedocs
DROP SEQUENCE seq_ddoc_id;
CREATE SEQUENCE seq_ddoc_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы operations
DROP SEQUENCE seq_oper_id;
CREATE SEQUENCE seq_oper_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы personal
DROP SEQUENCE seq_per_id;
CREATE SEQUENCE seq_per_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы docs
DROP SEQUENCE seq_docs_id;
CREATE SEQUENCE seq_docs_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы acwoproduct
DROP SEQUENCE seq_acwp_id;
CREATE SEQUENCE seq_acwp_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы acdefproduct
DROP SEQUENCE seq_acdp_id;
CREATE SEQUENCE seq_acdp_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы defproduct
DROP SEQUENCE seq_defp_id;
CREATE SEQUENCE seq_defp_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы woproduct
DROP SEQUENCE seq_wop_id;
CREATE SEQUENCE seq_wop_id
	INCREMENT BY 1
	START WITH 1;

PROMPT Создание последовательности для таблицы personalization
DROP SEQUENCE seq_pers_id;
CREATE SEQUENCE seq_pers_id
	INCREMENT BY 1
	START WITH 1;

COMMIT;

SPOOL off;