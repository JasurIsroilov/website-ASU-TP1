SPOOL 05_create_tr.lst

PROMPT Создание триггеров для таблиц информационной системы
PROMPT Автор :Серова Е.М.
PROMPT Дата создания 20.04.2020

PROMPT Создание триггера для таблицы equipment
CREATE OR REPLACE TRIGGER tr_equip_id
BEFORE INSERT ON equipment
FOR EACH ROW
BEGIN
         SELECT seq_equip_id.nextval
         INTO :new.equip_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы dedocs
CREATE OR REPLACE TRIGGER tr_ddoc_id
BEFORE INSERT ON dedocs
FOR EACH ROW
BEGIN
         SELECT seq_ddoc_id.nextval
         INTO :new.ddoc_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы operations
CREATE OR REPLACE TRIGGER tr_oper_id
BEFORE INSERT ON operations
FOR EACH ROW
BEGIN
         SELECT seq_oper_id.nextval
         INTO :new.oper_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы personal
CREATE OR REPLACE TRIGGER tr_per_id
BEFORE INSERT ON personal
FOR EACH ROW
BEGIN
         SELECT seq_per_id.nextval
         INTO :new.per_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы docs
CREATE OR REPLACE TRIGGER tr_docs_id
BEFORE INSERT ON docs
FOR EACH ROW
BEGIN
         SELECT seq_docs_id.nextval
         INTO :new.docs_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы acwoproduct
CREATE OR REPLACE TRIGGER tr_acwp_id
BEFORE INSERT ON acwoproduct
FOR EACH ROW
BEGIN
         SELECT seq_acwp_id.nextval
         INTO :new.acwp_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы acdefproduct
CREATE OR REPLACE TRIGGER tr_acdp_id
BEFORE INSERT ON acdefproduct
FOR EACH ROW
BEGIN
         SELECT seq_acdp_id.nextval
         INTO :new.acdp_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы defproduct
CREATE OR REPLACE TRIGGER tr_defp_id
BEFORE INSERT ON defproduct
FOR EACH ROW
BEGIN
         SELECT seq_defp_id.nextval
         INTO :new.defp_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы woproduct
CREATE OR REPLACE TRIGGER tr_wop_id
BEFORE INSERT ON woproduct
FOR EACH ROW
BEGIN
         SELECT seq_wop_id.nextval
         INTO :new.wop_id
         FROM dual;
END; 
/

PROMPT Создание триггера для таблицы personalization
CREATE OR REPLACE TRIGGER tr_pers_id
BEFORE INSERT ON personalization
FOR EACH ROW
BEGIN
         SELECT seq_pers_id.nextval
         INTO :new.pers_id
         FROM dual;
END; 
/

COMMIT;

SPOOL off;