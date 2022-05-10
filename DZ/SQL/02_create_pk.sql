SPOOL 02_create_pk.lst

PROMPT Создание первичных ключей таблиц информационной системы
PROMPT Автор: Серова Е.М.
PROMPT Дата создания 20.04.2020

PROMPT Удаление первичных ключей
ALTER TABLE equipment 
          DROP CONSTRAINT pr_equipment;

ALTER TABLE dedocs
          DROP CONSTRAINT pr_dedocs;

ALTER TABLE operations
          DROP CONSTRAINT pr_operations;

ALTER TABLE personal
          DROP CONSTRAINT pr_personal;

ALTER TABLE docs
          DROP CONSTRAINT pr_docs;

ALTER TABLE acwoproduct
          DROP CONSTRAINT pr_acwoprodut;

ALTER TABLE acdefproduct
          DROP CONSTRAINT pr_acdefprodut;

ALTER TABLE defproduct
          DROP CONSTRAINT pr_defprodut;

ALTER TABLE woproduct
          DROP CONSTRAINT pr_woprodut;

ALTER TABLE personalization
          DROP CONSTRAINT pr_personalization;

PROMPT Удаление индексов

DROP INDEX i_equip_id;

DROP INDEX i_ddoc_id;

DROP INDEX i_oper_id;

DROP INDEX i_per_id;

DROP INDEX i_docs_id;

DROP INDEX i_acwp_id;

DROP INDEX i_acdp_id;

DROP INDEX i_pers_id;

COMMIT;

PROMPT Добавление первичного ключа в таблицу equipment
CREATE UNIQUE INDEX i_equip_id
	ON equipment (equip_id);
ALTER TABLE equipment
	ADD CONSTRAINT pr_equipment
	PRIMARY KEY (equip_id);

PROMPT Добавление первичного ключа в таблицу dedocs
CREATE UNIQUE INDEX i_ddoc_id
	ON dedocs (ddoc_id);
ALTER TABLE dedocs 
	ADD CONSTRAINT pr_dedocs
	PRIMARY KEY (ddoc_id);

PROMPT Добавление первичного ключа в таблицу operations
CREATE UNIQUE INDEX i_oper_id
	ON operations (oper_id);
ALTER TABLE operations
	ADD CONSTRAINT pr_operations
	PRIMARY KEY (oper_id);

PROMPT Добавление первичного ключа в таблицу personal
CREATE UNIQUE INDEX i_per_id
	ON personal (per_id);
ALTER TABLE personal
	ADD CONSTRAINT pr_personal
	PRIMARY KEY (per_id);

PROMPT Добавление первичного ключа в таблицу docs
CREATE UNIQUE INDEX i_docs_id
	ON docs (docs_id);
ALTER TABLE docs
	ADD CONSTRAINT pr_docs
	PRIMARY KEY (docs_id);

PROMPT Добавление первичного ключа в таблицу acwoproduct
CREATE UNIQUE INDEX i_acwp_id
	ON acwoproduct (acwp_id);
ALTER TABLE acwoproduct
	ADD CONSTRAINT pr_acwoproduct
	PRIMARY KEY (acwp_id);
PROMPT Добавление первичного ключа в таблицу acdefproduct
CREATE UNIQUE INDEX i_acdp_id
	ON acdefproduct (acdp_id);
ALTER TABLE acdefproduct
	ADD CONSTRAINT pr_acdefproduct
	PRIMARY KEY (acdp_id);

PROMPT Добавление первичного ключа в таблицу defproduct
CREATE UNIQUE INDEX i_defp_id
	ON defproduct (defp_id);
ALTER TABLE defproduct
	ADD CONSTRAINT pr_defproduct
	PRIMARY KEY (defp_id);

PROMPT Добавление первичного ключа в таблицу woproduct
CREATE UNIQUE INDEX i_wop_id
	ON woproduct (wop_id);
ALTER TABLE woproduct
	ADD CONSTRAINT pr_woproduct
	PRIMARY KEY (wop_id);

PROMPT Добавление первичного ключа в таблицу personalization
CREATE UNIQUE INDEX i_pers_id
	ON personalization (pers_id);
ALTER TABLE personalization
	ADD CONSTRAINT pr_personalization
	PRIMARY KEY (pers_id);

COMMIT;

SPOOL off;
