SPOOL 00_start.lst
	PROMPT Скрипт развертывания БД АСУ ТП;
	PROMPT разработал: Серова Е.М.;
	PROMPT Скрипт создан: 20.04.20;

	@@01_create_table.sql;
	@@02_create_pk.sql
	@@03_create_fk.sql
	@@04_create_sq.sql;
	@@05_create_tr.sql;

	COMMIT;
SPOOL off;