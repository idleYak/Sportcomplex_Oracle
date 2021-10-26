
-- данные для таблицы тренер
INSERT INTO kspo_trainer VALUES(1,'Иванов','Иван', 'Иванович', 89023617345, '04/05/2002', 1, 'молодой тренер');
INSERT INTO kspo_trainer VALUES(2,'Петров', 'Филимон', '', 89023611223, '04/05/1967', 22, 'старый тренер');
INSERT INTO kspo_trainer VALUES(3,'Сидоров', 'Михаил', 'Юрьевич', 89063517399, '12/12/1997', 4, 'тоже молодой тренер');
INSERT INTO kspo_trainer VALUES(4,'Иванова', 'Иоанна', 'Ивановна', 89040000090, '01/01/2000', 2, 'молодая тренерка');
INSERT INTO kspo_trainer VALUES(5,'Смирнов', 'Алексей', '', 89023617341, '03/02/1986', 13, '');
INSERT INTO kspo_trainer VALUES(6,'Филатов', 'Дмитрий', 'Александрович', 89023610930, '04/05/1998', 3, 'третий молодой тренер');
INSERT INTO kspo_trainer VALUES(7,'Угарев', 'Александр', 'Александрович', 79203980000, '11/11/1989', 10, 'просто тренер');
INSERT INTO kspo_trainer VALUES(8,'Кошкин', 'Сергей', 'Алексеевич', 89143617345, '06/07/1994', 7, 'тренер Кошкин');
INSERT INTO kspo_trainer VALUES(9,'Собакин', 'Иван', 'Янович', 89163617345, '12/10/2003', 0.5, 'тренер Собакин');
INSERT INTO kspo_trainer VALUES(10,'Птицын', 'Михаил', 'Рахметович', 892577777777, '01/05/1992', 9, 'тренер Птицын');


-- данные для таблицы группа
INSERT INTO kspo_group VALUES(1, 'example.gmail@com', '3', 2, 4);
INSERT INTO kspo_group VALUES(2, '+86 582 682 1067', 3, 2, 2);
INSERT INTO kspo_group VALUES(3, '+20 103 274 9231', 4, 3, 3);
INSERT INTO kspo_group VALUES(4, '+235 574 956 3253', 4, 4, 4);
INSERT INTO kspo_group VALUES(5, '+54 441 813 2855', 4, 5, 5);
INSERT INTO kspo_group VALUES(6, '+48 809 878 0440', 4, 8, 8);
INSERT INTO kspo_group VALUES(7, '+62 522 664 2584', 2, 11, 11);
INSERT INTO kspo_group VALUES(8, '+506 677 276 7283', 4, 14, 14);
INSERT INTO kspo_group VALUES(9, '+52 154 841 3969', 3, 17, 17);
INSERT INTO kspo_group VALUES(10, 'example.yandex@ru', '2', 1, 8);

-- данные для связующей таблицы человек
INSERT INTO kmtm_human VALUES(1, 'kardio', 3, 2);
INSERT INTO kmtm_human VALUES(2, 'running', 1, 4);
INSERT INTO kmtm_human VALUES(3, 'yoga', 8, 11);
INSERT INTO kmtm_human VALUES(4, 'football game', 5, 20);
INSERT INTO kmtm_human VALUES(5, 'work with weight', 6, 7);
INSERT INTO kmtm_human VALUES(6, 'kardio', 7, 6);
INSERT INTO kmtm_human VALUES(7, 'swimming', 4, 4);
INSERT INTO kmtm_human VALUES(8, 'boxing', 3, 1);
INSERT INTO kmtm_human VALUES(9, 'swimming', 1, 1);
INSERT INTO kmtm_human VALUES(10, 'kardio', 11, 8);

-- данные для таблицы подписка
INSERT INTO kord_subscription VALUES(1, 4, 1609, 'Philadelphia University', 22060, '21/04/2020', '22/11/2021', 3);
INSERT INTO kord_subscription VALUES(2, 16, 2570, null, 19763, '07/04/2020', '20/01/2021', 26);
INSERT INTO kord_subscription VALUES(3, 6, 2426, null, 11231, '06/03/2020', '05/09/2021', 47);
INSERT INTO kord_subscription VALUES(4, 16, 2016, null, 24246, '12/02/2020', '15/07/2020', 35);
INSERT INTO kord_subscription VALUES(5, 6, 1724, 'University of Notre Dame Australia', 5715, '06/01/2020', '21/10/2021', 62);
INSERT INTO kord_subscription VALUES(6, 7, 1250, null, 22415, '23/03/2020', '18/10/2020', 8);
INSERT INTO kord_subscription VALUES(7, 20, 826, null, 10368, '23/09/2020', '04/02/2021', 32);
INSERT INTO kord_subscription VALUES(8, 11, 803, 'Technological University (Pathein)', 28280, '08/03/2020', '16/11/2020', 15);
INSERT INTO kord_subscription VALUES(9, 12, 1366, null, 17787, '07/05/2020', '18/10/2020', 64);
INSERT INTO kord_subscription VALUES(10, 6, 1930, 'Dalhousie University', 8624, '11/03/2021', '25/07/2021', 16);

-- данные для таблицы стоимость услуг
INSERT INTO kord_service_cost VALUES (1, 3601, '9%', 46);
INSERT INTO kord_service_cost VALUES (2, 4483, '15%', 10);
INSERT INTO kord_service_cost VALUES (3, 4446, '5%', 30);
INSERT INTO kord_service_cost VALUES (4, 3934, '14%', 42);
INSERT INTO kord_service_cost VALUES (5, 4654, '7%', 37);
INSERT INTO kord_service_cost VALUES (6, 4596, '6%', 9);
INSERT INTO kord_service_cost VALUES (7, 4784, '13%', 36);
INSERT INTO kord_service_cost VALUES (8, 3729, '6%', 95);
INSERT INTO kord_service_cost VALUES (9, 3053, '16%', 60);
INSERT INTO kord_service_cost VALUES (10, 3469, '0%', 29);

-- данные для таблицы клиент
INSERT INTO kspo_client VALUES (1, 'Tuckie', 'Reece', 268-443-9136, null, '05/04/2001', 1901737163, 'Brown');
INSERT INTO kspo_client VALUES (2, 'Scamaden', 'Fannie', 845-233-3539, null, '5/2/1983', 1924321623, 'Green');
INSERT INTO kspo_client VALUES (3, 'Calcott', 'Tommy', 914-416-1585, null, '30/9/1984', 2073659598, 'Lock'); 
INSERT INTO kspo_client VALUES (4, 'Gookes', 'Gabbie', 986-235-6750, null, '29/6/1981', 2159450428, 'Gregory'); 
INSERT INTO kspo_client VALUES (5, 'Reffe', 'Chanda', 132-190-3041, 'creffe5@seattletimes.com', '5/12/1991', 2160027610, 'Robert');
INSERT INTO kspo_client VALUES (6, 'Norwood', 'Asa', 811-310-0042, null, '16/11/1995', 1826691393, 'Vin');  
INSERT INTO kspo_client VALUES (7, 'Fenech', 'Antonetta', 723-340-2067, 'afenech9@amazon.co.uk', '31/12/1995', 2173287162, 'Samuel'); 
INSERT INTO kspo_client VALUES (8, 'Oganian', 'Merl', 760-545-7737, 'moganiana@yellowpages.com', '29/3/1991', 2265145874, 'Gi'); 
INSERT INTO kspo_client VALUES (9, 'Cariss', 'Lynnelle', 303-676-5855, null, '11/10/1981', 1900638212, 'Michael');
INSERT INTO kspo_client VALUES (10, 'Tanswill', 'Davine', 718-216-0030, null, '29/9/1998', 2459341568, 'Lee'); 

-- данные для таблицы учет оборудования
INSERT INTO kdct_equipment_accounting VALUES (1, 'treadmill', 56626, 3, '7/8/2013', '19/2/2030', 15);
INSERT INTO kdct_equipment_accounting VALUES (2, 'dumbbells', 24378, 1, '12/4/2018', '17/2/2029', 14);
INSERT INTO kdct_equipment_accounting VALUES (3, 'strength trainer', 83486, 1, '16/2/2019', '22/1/2020', 12);
INSERT INTO kdct_equipment_accounting VALUES (4, 'treadmill', 45889, 6, '17/7/2019', '4/12/2017', 11);
INSERT INTO kdct_equipment_accounting VALUES (5, 'strength trainer', 95315, 10, '26/3/2020', '28/8/2025', 5);
INSERT INTO kdct_equipment_accounting VALUES (6, 'yoga mat', 15126, 2, '14/4/2018', '6/7/2027', 4);
INSERT INTO kdct_equipment_accounting VALUES (7, 'strength trainer', 55553, 3, '7/4/2019', '31/12/2019', 5);
INSERT INTO kdct_equipment_accounting VALUES (8, 'weight', 63624, 6, '20/3/2014', '1/8/2016', 14);
INSERT INTO kdct_equipment_accounting VALUES (9, 'weight', 26903, 6, '1/5/2014', '5/10/2024', 6);
INSERT INTO kdct_equipment_accounting VALUES (10, 'treadmill', 54423, 3, '16/1/2015', '13/1/2018', 10);

-- данные для таблицы учёт залов
INSERT INTO kdct_room_accounting VALUES (1, 'swimming pool', 68, 'recovery training', 29);
INSERT INTO kdct_room_accounting VALUES (2, 'massage room', 15, 'strength training', 47);
INSERT INTO kdct_room_accounting VALUES (3, 'football field', 102, 'two-sided training', 7);
INSERT INTO kdct_room_accounting VALUES (4, 'workout room', 62, 'muscle training', 45);
INSERT INTO kdct_room_accounting VALUES (5, 'massage room', 22, 'recovery training', 25);
INSERT INTO kdct_room_accounting VALUES (6, 'workout room', 66, 'muscle training', 30);
INSERT INTO kdct_room_accounting VALUES (7, 'swimming pool', 130, 'muscle training', 6);
INSERT INTO kdct_room_accounting VALUES (8, 'gym', 158, 'muscle training', 37);
INSERT INTO kdct_room_accounting VALUES (9, 'workout room', 81, 'strength training', 20);
INSERT INTO kdct_room_accounting VALUES (10, 'fitness room', 195, 'strength training', 23);

-- данные для таблицы расписание
INSERT INTO kdct_shedule VALUES (1, 'swimming', 'Sunday', '20-11-05 13:11:15', '2011-05-13 13:15', 'massage room', 2, 9);
--тут разоббрался с правильным вводом TIMESTAMP
INSERT INTO kdct_shedule VALUES (2, 'two-sided training', 'Wednesday','20-11-15 15:15:00', '20-11-15 16:30:00', 'fitness room', 9, 16);
INSERT INTO kdct_shedule VALUES (3, 'swimming', 'Monday', '12-01-12 14:30', '12-01-21 16:15', 'workout room', 40, 8);

INSERT INTO kdct_shedule VALUES (4, 'swimming', 'Tuesday', '21-09-20 16:00', '21-09-20 17:45', 'swimming pool', 3, 18);
INSERT INTO kdct_shedule VALUES (5, 'running training', 'Sunday', '03-03-21 19:00', '03-03-21 21:00', 'fitness room', 21, 3);
INSERT INTO kdct_shedule VALUES (6, 'strength training', 'Sunday', '04-04-21 16:00', '04-04-21 18:00', 'massage room', 41, 1);
INSERT INTO kdct_shedule VALUES (7, 'running training', 'Saturday', '05-05-21 17:15', '05-05-21 18:15', 'workout room', 20, 12);
INSERT INTO kdct_shedule VALUES (8, 'running training', 'Tuesday', '06-06-21 19:00', '06-06-21 20:00', 'gym', 16, 7);
INSERT INTO kdct_shedule VALUES (9, 'muscle training', 'Saturday', '07-07-21 19:00', '07-07-21 21:00', 'workout room', 13, 19);
INSERT INTO kdct_shedule VALUES (10, 'running training', 'Thursday', '08-08-21 19:00', '08-08-21 22:00', 'football field', 43, 6);