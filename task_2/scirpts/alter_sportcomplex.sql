
-- Формируем первичные ключи для созданных таблиц (пункт 1)
ALTER TABLE kdct_equipment_accounting ADD CONSTRAINT pk_kdct_equipment_accounting PRIMARY KEY ( equipment_accounting_id );
ALTER TABLE kdct_room_accounting ADD CONSTRAINT pk_kdct_room_accounting PRIMARY KEY ( room_accounting_id );
ALTER TABLE kdct_training_shedule ADD CONSTRAINT pk_kdct_training_shedule PRIMARY KEY ( training_shedule_id );
ALTER TABLE kmtm_human ADD CONSTRAINT pk_kmtm_human PRIMARY KEY ( human_id );
ALTER TABLE kord_service_cost ADD CONSTRAINT pk_kord_service_cost PRIMARY KEY ( service_cost_id );
ALTER TABLE kord_subscription ADD CONSTRAINT pk_kord_subscription PRIMARY KEY ( subscription_id );
ALTER TABLE kspo_client ADD CONSTRAINT pk_kspo_client PRIMARY KEY ( client_id );
ALTER TABLE kspo_group ADD CONSTRAINT pk_kspo_group PRIMARY KEY ( group_id );
ALTER TABLE kspo_trainer ADD CONSTRAINT pk_kspo_trainer PRIMARY KEY ( trainer_id );


-- переименование некоторых объектов для более удобного вида (пункт 2)
ALTER TABLE kdct_training_shedule RENAME TO kdct_shedule;

-- переименование колонки в таблице (пункт 3)
ALTER TABLE kspo_trainer RENAME COLUMN middle_name TO otchestvo;


-- добавление тестовой колонки для следующих манипуляций
ALTER TABLE kspo_client ADD middle_name VARCHAR2(100 CHAR) NOT NULL;

-- блок колонки в неиспользуемую (пункт 4)
ALTER TABLE kspo_client SET UNUSED COLUMN middle_name;

-- удаление колонки (пункт 5)
ALTER TABLE kspo_client DROP COLUMN middle_name;
-- Данные действия вызвали системную ошибку из-за юезра, поэтому пропишем иначе

/*
CREATE TABLE SYS.kspo_client2 as select * from kspo_client;
alter table SYS.kspo_client2 SET UNUSED (middle_name);
*/
--используем вспомогательного пользователя
CREATE TABLE anonymous.kspo_client2 as select * from kspo_client;
ALTER TABLE anonymous.kspo_client2 SET UNUSED (middle_name);
--удаление столбца из новой таблицы
ALTER TABLE anonymous.kspo_client2 DROP (first_name);

drop TABLE kspo_client2;


--конечный вариант (пункт 4-5)
CREATE TABLE anonymous.kspo_client3 as select * from kspo_client;
ALTER TABLE anonymous.kspo_client3 SET UNUSED (middle_name);
ALTER TABLE anonymous.kspo_client3 DROP UNUSED COLUMNS;

--вариант для (пункт 6), удаление данных по условию стажа
DELETE FROM kspo_trainer 
WHERE age_experience < 2;




