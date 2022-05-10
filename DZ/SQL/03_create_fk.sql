SPOOL 03_create_fk.lst

PROMPT Создание внешних ключей таблиц информационной системы
PROMPT Автор: Серова Е.М.
PROMPT Дата создания 20.04.20

PROMPT Удаление внешних ключей

ALTER TABLE equipment
          DROP CONSTRAINT c_equip_docs_id;
		  
ALTER TABLE equipment	  
          DROP CONSTRAINT c_equip_ddoc_id;

ALTER TABLE dedocs
          DROP CONSTRAINT c_ddoc_per_id;

ALTER TABLE operations
          DROP CONSTRAINT c_oper_ddoc_id;
		  
ALTER TABLE operations
          DROP CONSTRAINT c_oper_per_id;

ALTER TABLE docs
          DROP CONSTRAINT c_docs_per_id;

ALTER TABLE acwoproduct
          DROP CONSTRAINT c_acwp_per_id;

ALTER TABLE acdefproduct
          DROP CONSTRAINT c_acdp_per_id;

ALTER TABLE defproduct
          DROP CONSTRAINT c_defp_per_id;

ALTER TABLE woproduct
          DROP CONSTRAINT c_wop_per_id;

ALTER TABLE personalization
          DROP CONSTRAINT c_pers_per_id;

COMMIT;


PROMPT Добавление внешнего ключа в таблицу equipment
ALTER TABLE equipment
	ADD CONSTRAINT c_equip_docs_id
	FOREIGN KEY (equip_docs_id)
REFERENCES docs (docs_id);
ALTER TABLE equipment
	ADD CONSTRAINT c_equip_ddoc_id
	FOREIGN KEY (equip_ddoc_id)
REFERENCES dedocs (ddoc_id);

PROMPT Добавление внешнего ключа в таблицу dedocs
ALTER TABLE dedocs
	ADD CONSTRAINT c_ddoc_per_id
	FOREIGN KEY (ddoc_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу operations
ALTER TABLE operations
	ADD CONSTRAINT c_oper_docs_id
	FOREIGN KEY (oper_docs_id)
	REFERENCES docs (docs_id);
ALTER TABLE operations
	ADD CONSTRAINT c_oper_per_id
	FOREIGN KEY (oper_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу docs
ALTER TABLE docs
	ADD CONSTRAINT c_docs_per_id
	FOREIGN KEY (docs_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу acwoproduct
ALTER TABLE acwoproduct
	ADD CONSTRAINT c_acwp_per_id
	FOREIGN KEY (acwp_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу acdefproduct
ALTER TABLE acdefproduct
	ADD CONSTRAINT c_acdp_per_id
	FOREIGN KEY (acdp_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу defproduct
ALTER TABLE defproduct
	ADD CONSTRAINT c_defp_per_id
	FOREIGN KEY (defp_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу woproduct
ALTER TABLE woproduct
	ADD CONSTRAINT c_wop_per_id
	FOREIGN KEY (wop_per_id)
	REFERENCES personal (per_id);

PROMPT Добавление внешнего ключа в таблицу personalization
ALTER TABLE personalization
	ADD CONSTRAINT c_pers_per_id
	FOREIGN KEY (pers_per_id)
	REFERENCES personal (per_id);

COMMIT;

SPOOL off;