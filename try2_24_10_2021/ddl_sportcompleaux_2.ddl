--Язык в комментариях RDBMS поправить--

-- Generated by Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   at:        2021-10-24 23:49:40 GMT+03:00
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE kdct_equipment_accounting (
    equipment_accounting_id NUMBER(9) NOT NULL,
    equipment_name          VARCHAR2(150 CHAR) NOT NULL,
    equipment_cost          INTEGER NOT NULL,
    equipment_quantity      INTEGER NOT NULL,
    delivery_date           DATE NOT NULL,
    service_life            DATE NOT NULL,
    kdct_room_accounting_id NUMBER(9) NOT NULL
);

COMMENT ON TABLE kdct_equipment_accounting IS
    'Equipment_Accounting_ID - id ó÷èòûâàåìîãî îáîðóäîâàíèÿ;
Equipment_Name - íàçâàíèå åäèíèöû îáîðóäîâàíèÿ;
Equipment_Cost - ñòîèìîñòü åäèíèöû îáîðóäîâàíèÿ;
Equipment_Quantity - êîëè÷åñòâî èìåþùåãîñÿ îáîðóäîâàíèÿ;
Delivery_Date - äàòà ïîñòóïëåíèÿ
Service_Life - ñðîê ýêñïëóàòàöèè äàííîãî îáîðóäîâàíèÿ;
kspo_room_accounting_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Ó÷åò ïîìåùåíèé'';';

CREATE INDEX idx_accounting_equ_id ON
    kdct_equipment_accounting (
        kdct_room_accounting_id
    ASC );

ALTER TABLE kdct_equipment_accounting ADD CONSTRAINT pk_kdct_equipment_accounting PRIMARY KEY ( equipment_accounting_id );

CREATE TABLE kdct_room_accounting (
    room_accounting_id       NUMBER(9) NOT NULL,
    room_name                VARCHAR2(100 CHAR) NOT NULL,
    footage                  INTEGER NOT NULL,
    possible_occupation      VARCHAR2(150 CHAR) NOT NULL,
    kdct_training_shedule_id NUMBER(9) NOT NULL
);

COMMENT ON TABLE kdct_room_accounting IS
    'Room_accounting_ID - id êîíêðåòíîãî ïîìåùåíèÿ (çàëà);
Room_Name - íàèìåíîâàíèå çàëà;
Footage - ìåòðàæ çàëà;
Possible_Occupation - Âîçìîæíûå çàíÿòèÿ äëÿ ïðîâåäåíèÿ â ýòîì çàëå; 
kspo_training_shedule_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Òðåíèðîâî÷íûé êàëåíäàðü'';';

CREATE UNIQUE INDEX idx_shedule_room_id ON
    kdct_room_accounting (
        kdct_training_shedule_id
    ASC );

ALTER TABLE kdct_room_accounting ADD CONSTRAINT pk_kdct_room_accounting PRIMARY KEY ( room_accounting_id );

CREATE TABLE kdct_training_shedule (
    training_shedule_id     NUMBER(9) NOT NULL,
    training_type           VARCHAR2(100 CHAR) NOT NULL,
    week_day                VARCHAR2(100 CHAR) NOT NULL,
    start_time              TIMESTAMP NOT NULL,
    end_time                TIMESTAMP NOT NULL,
    location                VARCHAR2(150 CHAR) NOT NULL,
    kspo_group_id           NUMBER(9),
    kdct_room_accounting_id NUMBER(9) NOT NULL
);

COMMENT ON TABLE kdct_training_shedule IS
    'Training_shedule_ID - id êàëåíäàðÿ òðåíèðîâîê;
Training_Type - òèï òðåíèðîâêè;
Week_Day - äåíü òðåíèðîâêè â íåäåëå;
Start_Time - âðåìÿ íà÷àëà òðåíèðîâêè;
End_Time - âðåìÿ êîíöà òðåíèðîâêè;
Location - ìåñòî ïðîâåäåíèÿ êîíêðåòíîé òðåíèðîâêè;
kspo_group_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Ãðóïïà'';
kdct_room_accounting_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Ó÷åò ïîìåùåíèé'';';

CREATE UNIQUE INDEX idx_group_tra_id ON
    kdct_training_shedule (
        kspo_group_id
    ASC );

CREATE INDEX idx_accounting_tra_id ON
    kdct_training_shedule (
        kdct_room_accounting_id
    ASC );

ALTER TABLE kdct_training_shedule ADD CONSTRAINT pk_kdct_training_shedule PRIMARY KEY ( training_shedule_id );

CREATE TABLE kmtm_human (
    human_id           INTEGER NOT NULL,
    training_direction VARCHAR2(100 CHAR) NOT NULL,
    kspo_group_id      NUMBER(9) NOT NULL,
    kspo_client_id     NUMBER(9) NOT NULL
);

COMMENT ON TABLE kmtm_human IS
    'Human_ID - id ÷åëîâåêà  (òàáëèöà, ñâÿçóþùàÿ îáúåêòû  ''group'' è ''client'';
Training_Direction -  Íàïðàâëåíèå òðåíèðîâêè ãðãóïïû;
kspo_group_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Ãðóïïà'';
kspo_client_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Êëèåíò'';';

CREATE INDEX idx_client_hum_id ON
    kmtm_human (
        kspo_client_id
    ASC );

CREATE INDEX idx_group_hum_id ON
    kmtm_human (
        kspo_group_id
    ASC );

ALTER TABLE kmtm_human ADD CONSTRAINT pk_kmtm_human PRIMARY KEY ( human_id );

CREATE TABLE kord_service_cost (
    service_cost_id NUMBER(9) NOT NULL,
    cost            INTEGER NOT NULL,
    season_sales    CLOB NOT NULL,
    kspo_client_id  NUMBER(9) NOT NULL
);

COMMENT ON TABLE kord_service_cost IS
    'Service_Cost_ID - id öåíû óñëóã â ñïîðòêîìïëåêñå;
Cost - ñòîèìîñòü óñëóã;
Season_Sales - ñåçîííûå ñêèäêè íà óêàçûâàåìûå óñëóãè;
kspo_client_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Êëèåíò'';';

CREATE INDEX idx_client_serv_id ON
    kord_service_cost (
        kspo_client_id
    ASC );

ALTER TABLE kord_service_cost ADD CONSTRAINT pk_kord_service_cost PRIMARY KEY ( service_cost_id );

CREATE TABLE kord_subscription (
    subscription_id     NUMBER(9) NOT NULL,
    training_quantity   SMALLINT NOT NULL,
    discount            INTEGER NOT NULL,
    "Privileges"        VARCHAR2(150 CHAR),
    discounted_price    INTEGER NOT NULL,
    registration_date   DATE NOT NULL,
    subscription_period DATE NOT NULL,
    kspo_client_id      NUMBER(9) NOT NULL
);

COMMENT ON TABLE kord_subscription IS
    'Subsription_ID -id ïîäïèñêè;
Training_quantity - êîëè÷åñòâî òðåíèðîâîê;
Discount - ñêèäêà;
Priveleges - ïðèâåëåãèè (ëüãîòû);
Discounted_Price - öåíà ñî ñêèäêîé;
Registration_Date - äàòà îôîðìëåíèÿ àáîíåìåíòà;
Subscription_Period - ïåðèîä äåéñòâèÿ àáîíåìåíòà;
kspo_client_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Êëèåíò'';';

CREATE INDEX idx_client_sub_id ON
    kord_subscription (
        kspo_client_id
    ASC );

ALTER TABLE kord_subscription ADD CONSTRAINT pk_kord_subscription PRIMARY KEY ( subscription_id );

CREATE TABLE kspo_client (
    client_id       NUMBER(9) NOT NULL,
    last_name       VARCHAR2(100 CHAR) NOT NULL,
    first_name      VARCHAR2(100 CHAR) NOT NULL,
    phone           INTEGER NOT NULL,
    email           VARCHAR2(100 CHAR),
    birth_date      DATE NOT NULL,
    passport_number INTEGER NOT NULL
);

COMMENT ON TABLE kspo_client IS
    'Client_ID - id êëèåíòà;
Last_Name - Ôàìèëèÿ êëèåíòà;
First_Name - Èìÿ êëèåíòà;
Phone - Ìîáèëüíûé òåëåôîí êëèåíòà;
Email - ýëåêòðîííûé àäðåñ êëèåíòà;
Birth_Date - Äàòà ðîæäåíèÿ êëèåíòà;
Passport_Number - ïàñïîðòíûå äàííûå êëèåíòà ñïîðòêîìïëåêñà;';

ALTER TABLE kspo_client ADD CONSTRAINT pk_kspo_client PRIMARY KEY ( client_id );

CREATE TABLE kspo_group (
    group_id                 NUMBER(9) NOT NULL,
    group_contacts           VARCHAR2(150 CHAR) NOT NULL,
    difficulty_level         VARCHAR2(100 CHAR) NOT NULL,
    kspo_trainer_id          NUMBER(9) NOT NULL,
    kdct_training_shedule_id NUMBER(9)
);

COMMENT ON TABLE kspo_group IS
    'Group_ID - id ãðóïïû;
Group_Contacts - Êîíòàêòíûé íîìåð ãðóïïû;
Difficulty_Level - Óðîâåíü ñëîæíîñòè òðåíèðîâêè;
kspo_trainer_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Òðåíåð'';
kdct_training_shedule_ID - âíåøíèé êëþ÷, ñâÿçü ñ îáúåêòîì ''Òðåíèðîâî÷íûé êàëåíäàðü'';';

CREATE UNIQUE INDEX idx_trainer_id ON
    kspo_group (
        kspo_trainer_id
    ASC );

CREATE INDEX idx_shedule_gro_id ON
    kspo_group (
        kdct_training_shedule_id
    ASC );

ALTER TABLE kspo_group ADD CONSTRAINT pk_kspo_group PRIMARY KEY ( group_id );

CREATE TABLE kspo_trainer (
    trainer_id     NUMBER(9) NOT NULL,
    last_name      VARCHAR2(100 CHAR) NOT NULL,
    first_name     VARCHAR2(100 CHAR) NOT NULL,
    middle_name    VARCHAR2(100 CHAR),
    phone          INTEGER NOT NULL,
    birth_date     DATE NOT NULL,
    age_experience SMALLINT NOT NULL,
    description    CLOB
);

COMMENT ON TABLE kspo_trainer IS
    'Trainer_ID - id òðåíåðà;
Last_Name - Ôàìèëèÿ òðåíåðà;
First_Name - Èìÿ òðåíåðà;
Middle_Name - Îò÷åñòâî òðåíåðà;
Phone - Ìîáèëüíûé òåëåôîí;
Birth_Date - Äàòà ðîæäåíèÿ òðåíåðà;
Age_Experience - Ñòàæ òðåíåðà;
Description - Îïèñàíèå;';

ALTER TABLE kspo_trainer ADD CONSTRAINT pk_kspo_trainer PRIMARY KEY ( trainer_id );

ALTER TABLE kmtm_human
    ADD CONSTRAINT fk_client_hum FOREIGN KEY ( kspo_client_id )
        REFERENCES kspo_client ( client_id );

ALTER TABLE kord_service_cost
    ADD CONSTRAINT fk_client_serv FOREIGN KEY ( kspo_client_id )
        REFERENCES kspo_client ( client_id );

ALTER TABLE kord_subscription
    ADD CONSTRAINT fk_client_sub FOREIGN KEY ( kspo_client_id )
        REFERENCES kspo_client ( client_id );

ALTER TABLE kmtm_human
    ADD CONSTRAINT fk_group_hum FOREIGN KEY ( kspo_group_id )
        REFERENCES kspo_group ( group_id );

ALTER TABLE kdct_training_shedule
    ADD CONSTRAINT fk_group_tra FOREIGN KEY ( kspo_group_id )
        REFERENCES kspo_group ( group_id );

ALTER TABLE kdct_equipment_accounting
    ADD CONSTRAINT fk_room_accounting_equ FOREIGN KEY ( kdct_room_accounting_id )
        REFERENCES kdct_room_accounting ( room_accounting_id );

ALTER TABLE kdct_training_shedule
    ADD CONSTRAINT fk_room_accounting_tra FOREIGN KEY ( kdct_room_accounting_id )
        REFERENCES kdct_room_accounting ( room_accounting_id );

ALTER TABLE kspo_group
    ADD CONSTRAINT fk_trainer FOREIGN KEY ( kspo_trainer_id )
        REFERENCES kspo_trainer ( trainer_id );

ALTER TABLE kspo_group
    ADD CONSTRAINT fk_training_shedule_gro FOREIGN KEY ( kdct_training_shedule_id )
        REFERENCES kdct_training_shedule ( training_shedule_id );

ALTER TABLE kdct_room_accounting
    ADD CONSTRAINT fk_training_shedule_room FOREIGN KEY ( kdct_training_shedule_id )
        REFERENCES kdct_training_shedule ( training_shedule_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                            10
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
