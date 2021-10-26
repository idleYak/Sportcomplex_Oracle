
CREATE TABLE kspo_trainer (
    trainer_id NUMBER(9) NOT NULL,
    last_name VARCHAR2(100) NOT NULL,
    first_name VARCHAR2(100) NOT NULL,
    middle_name VARCHAR2(100),    
    phone INTEGER NOT NULL,
    birth_date DATE NOT NULL,
    age_experience SMALLINT NOT NULL,
    descriptions CLOB
);

CREATE TABLE kspo_group (
    group_id                 NUMBER(9) NOT NULL,
    group_contacts           VARCHAR2(150 CHAR) NOT NULL,
    difficulty_level         VARCHAR2(100 CHAR) NOT NULL,
    kspo_trainer_id          NUMBER(9) NOT NULL,
    kdct_training_shedule_id NUMBER(9)
);

CREATE TABLE kmtm_human (
    human_id           INTEGER NOT NULL,
    training_direction VARCHAR2(100 CHAR) NOT NULL,
    kspo_group_id      NUMBER(9) NOT NULL,
    kspo_client_id     NUMBER(9) NOT NULL
);

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

CREATE TABLE kord_service_cost (
    service_cost_id NUMBER(9) NOT NULL,
    cost            INTEGER NOT NULL,
    season_sales    CLOB NOT NULL,
    kspo_client_id  NUMBER(9) NOT NULL
);

CREATE TABLE kspo_client (
    client_id       NUMBER(9) NOT NULL,
    last_name       VARCHAR2(100 CHAR) NOT NULL,
    first_name      VARCHAR2(100 CHAR) NOT NULL,
    phone           INTEGER NOT NULL,
    email           VARCHAR2(100 CHAR),
    birth_date      DATE NOT NULL,
    passport_number INTEGER NOT NULL
);

CREATE TABLE kdct_equipment_accounting (
    equipment_accounting_id NUMBER(9) NOT NULL,
    equipment_name          VARCHAR2(150 CHAR) NOT NULL,
    equipment_cost          INTEGER NOT NULL,
    equipment_quantity      INTEGER NOT NULL,
    delivery_date           DATE NOT NULL,
    service_life            DATE NOT NULL,
    kdct_room_accounting_id NUMBER(9) NOT NULL
);

CREATE TABLE kdct_room_accounting (
    room_accounting_id       NUMBER(9) NOT NULL,
    room_name                VARCHAR2(100 CHAR) NOT NULL,
    footage                  INTEGER NOT NULL,
    possible_occupation      VARCHAR2(150 CHAR) NOT NULL,
    kdct_training_shedule_id NUMBER(9) NOT NULL
);

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


--добавление тестового объекта к имеющимся

CREATE TABLE testing (
    testing_id              NUMBER(9) NOT NULL,
    testing_place           VARCHAR2(100 CHAR) NOT NULL,
    week_day                VARCHAR2(100 CHAR) NOT NULL,
    start_time              TIMESTAMP NOT NULL,
    end_time                TIMESTAMP NOT NULL,
    location                VARCHAR2(150 CHAR) NOT NULL,
    kspo_group_id           NUMBER(9),
    kdct_room_accounting_id NUMBER(9) NOT NULL
);

--создание последовательностей для id у таблиц (пункт 7)
CREATE SEQUENCE kspo_trainer_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

CREATE SEQUENCE kspo_group_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE kmtm_human_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE kord_subscription_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE kord_service_cost_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE kspo_client_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE kdct_equipment_accounting_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE kdct_room_accounting_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 
 CREATE SEQUENCE kdct_shedule_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

