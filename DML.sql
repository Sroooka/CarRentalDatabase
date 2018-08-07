-- insert Employee Positions
INSERT INTO position (id, position) VALUES (1, 'dealer');
INSERT INTO position (id, position) VALUES (2, 'manager');
INSERT INTO position (id, position) VALUES (3, 'accountant');

-- insert Car Types
INSERT INTO car_type (id, type) VALUES (1, 'sedan');
INSERT INTO car_type (id, type) VALUES (2, 'wagon');
INSERT INTO car_type (id, type) VALUES (3, 'suv');
INSERT INTO car_type (id, type) VALUES (4, 'hatchback');
INSERT INTO car_type (id, type) VALUES (5, 'cabriolet');
INSERT INTO car_type (id, type) VALUES (6, 'coupe');
INSERT INTO car_type (id, type) VALUES (7, 'pickup');
INSERT INTO car_type (id, type) VALUES (8, '4wd');

-- insert Location
INSERT 	INTO location (id, address, city, postal_code, phone, email) 
		VALUES (1, 'Bukowska 150', 'Poznan', '60123', '+(48)61-255-25-25', 'office.poznan@carrentalsroka.com');
INSERT 	INTO location (id, address, city, postal_code, phone, email) 
		VALUES (2, 'Niedzialkowskiego 1', 'Warszawa', '04112', '+(48)22-525-25-25', 'office.warszawa@carrentalsroka.com');
INSERT 	INTO location (id, address, city, postal_code, phone, email) 
		VALUES (3, 'Naramowiska 500', 'Gdansk', '12542', '+(48)14-143-25-25', 'office.gdansk@carrentalsroka.com');
INSERT 	INTO location (id, address, city, postal_code, phone, email) 
		VALUES (4, 'Przemyslowa 9', 'Krakow', '60123', '+(48)76-655-25-25', 'office.krakow@carrentalsroka.com');
INSERT 	INTO location (id, address, city, postal_code, phone, email) 
		VALUES (5, 'Dabrowskiego 13/9', 'Lodz', '87665', '+(48)17-654-25-25', 'office.lodz@carrentalsroka.com');
        
-- insert Employee
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(1, 'Antoni', 'kFowadis', 2, '99010254841', 1);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(2, 'Jakub', 'Kowalski', 3, '98050687458', 1);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(3, 'Jan', 'Wisniewski', 1, '97045245215', 1);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(4, 'Szymon', 'Wojcik', 1, '96145215985', 1);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(5, 'Franciszek', 'Kowalczyk', 1, '95632569852', 1);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(6, 'Filip', 'Kaminski', 2, '94154245875', 2);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(7, 'Aleksander', 'Lewandowski', 3, '93458745896', 2);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(8, 'Wojciech', 'Zielinski', 1, '92145854854', 2);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(9, 'Kacper', 'Szymanski', 1, '90121454124', 2);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(10, 'Mikolaj', 'Wozniak', 1, '89521458585', 2);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(11, 'Adam', 'Dabrowski', 2, '88454575865', 3);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(12, 'Michau', 'Kozlowski', 3, '87145252523', 3);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(13, 'Marcel', 'Jankowski', 1, '86147852545', 3);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(14, 'Wiktor', 'Mazur', 1, '85124587595', 3);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(15, 'Piotr', 'Wojciechowski', 1, '84754854854', 3);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(16, 'Stanislaw', 'Kwiatkowski', 2, '83111145211', 4);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(17, 'Igor', 'Krawczyk', 3, '82145748587', 4);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(18, 'Mateusz', 'Kaczmarek', 1, '81458585858', 4);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(19, 'Bartosz', 'Piotrowski', 1, '80121252421', 4);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(20, 'Nikodem', 'Grabowski', 1, '79369636965', 4);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(21, 'Leon', 'Zajac', 2, '78414141414', 5);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(22, 'Milosz', 'Pawlowski', 3, '77142515895', 5);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(23, 'Maksymilian', 'Michalski', 1, '76145854584', 5);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(24, 'Tymon', 'Krol', 1, '75142525252', 5);
INSERT INTO employee (id, name, surname, position_id, pesel, location_id)
		VALUES(25, 'Alan', 'Wieczorek', 1, '74256256940', 5);
        
-- insert Car
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(1, "Mercedes", "W204", 2012, 6, "white", 1796, 170, 120000, 1);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(2, "Mercedes", "W205", 2017, 6, "white", 1796, 170, 150000, 1);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(3, "Mercedes", "W204", 2014, 6, "red", 2200, 224, 200000, 1);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(4, "Mercedes", "W205", 2017, 6, "black", 2200, 224, 199999, 2);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(5, "Mercedes", "W204", 2012, 6, "black", 2200, 224, 300000, 2);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(6, "Mercedes", "W204", 2012, 6, "silver", 2200, 224, 300001, 2);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(7, "Mercedes", "W212", 2010, 1, "gray", 3196, 278, 299999, 3);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(8, "Mercedes", "W212", 2012, 1, "yellow", 3196, 278, 80000, 3);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(9, "Mercedes", "W212", 2011, 2, "red", 3196, 278, 123100, 3);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(10, "Mercedes", "W212", 2010, 2, "black", 3196, 278, 145900, 4);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(11, "Fiat", "Seicento", 1995, 4, "blue", 900, 80, 390000, 4);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(12, "Fiat", "Tico", 1996, 4, "blue", 800, 63, 480000, 4);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(13, "Fiat", "Tipo", 2005, 1, "orange", 1198, 98, 150220, 5);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(14, "BMW", "E46", 2004, 2, "black", 2500, 178, 300000, 5);
INSERT INTO car (id, manufacturer, model, production_year, type_id, color, engine_size, power, mileage, current_location_id)
		VALUES(15, "BMW", "E46", 2005, 2, "black", 2500, 178, 250000, 5);

-- insert Customer
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(1, "Julia", "Jablonska", "Nowakowskiego 5", "Poznan", "61-782", "1999-12-02", "+(48)985-659-651", "jjablonska@gmail.com", "9586589745848575485");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(2, "Zuzanna", "Wrobel", "Maleckiego 6", "Poznan", "61-732", "1998-02-12", "+(48)754-586-225", "zwrobel@gmail.com", "5485485623565895415");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(3, "Zofia", "Nowakowska", "Krakowska 50", "Poznan", "61-775", "1997-05-02", "+(48)741-585-317", "znowakowska@gmail.com", "8585854854859658426");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(4, "Lena", "Majewska", "Poznanska 90", "Poznan", "61-741", "1996-02-05", "+(48)555-856-621", "lmajewska@gmail.com", "9856565895215452154");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(5, "Maja", "Olszewska", "Bukowska 1", "Warszawa", "22-885", "1995-07-02", "+(48)745-658-558", "molszewska@gmail.com", "8585858582145698523");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(6, "Hanna", "Stepien", "Dabrowskiego 1/1", "Warszawa", "22-757", "1994-02-07", "+(48)854-545-852", "hstepien@gmail.com", "7854125635362569157");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(7, "Amelia", "Malinowska", "Kossakowskiego 1/12", "Warszawa", "22-457", "1993-11-02", "+(48)888-985-001", "amalinowska@gmail.com", "1425659586523564984");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(8, "Alicja", "Jaworska", "Unruga 9", "Warszawa", "22-664", "1992-02-11", "+(48)848-665-555", "ajaworska@gmail.com", "1478547585235698514");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(9, "Maria", "Adamczyk", "Wojska Polskiego 10", "Gdansk", "43-963", "1991-07-02", "+(48)885-654-259", "madamczyk@gmail.com", "5012548520145842195");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(10, "Aleksandra", "Dudek", "Westerplatte 9/14", "Gdansk", "43-475", "1990-02-07", "+(48)665-852-319", "adudek@gmail.com", "0124515487545485695");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(11, "Oliwia", "Nowiska", "Zwirki i Wigury 81", "Gdansk", "43-454", "1989-02-30", "+(48)858-852-010", "onowinska@gmail.com", "2525369851547895365");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(12, "Natalia", "Pawlak", "Przemyslowa 2", "Gdansk", "43-001", "1988-02-27", "+(48)805-100-102", "npawlak@gmail.com", "7458485748521023201");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(13, "Wiktoria", "Gorska", "Kosmonautow 10", "Krakow", "67-004", "1987-02-25", "+(48)884-859-000", "wgorska@o2.pl", "1024012502451052105");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(14, "Emilia", "Witkowska", "Jana III Sobieskiego 9", "Krakow", "67-754", "1986-05-08", "+(48)787-541-025", "ewitkowska@o2.pl", "1021023012506406708");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(15, "Antonina", "Walczak", "Piotrowo 90/45", "Krakow", "67-258", "1985-07-18", "+(48)852-525-191", "awalczak@o2.pl", "1254125845854823659");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(16, "Laura", "Sikora", "Berdychowo 1", "Krakow", "67-565", "1984-07-30", "+(48)159-263-487", "lsikora@o2.pl", "2524578451236598594");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(17, "Pola", "Baran", "Lotnicza 5", "Lodz", "38-757", "1983-09-24", "+(48)752-254-659", "pbaran@mail.com", "2541524251524251527");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(18, "Iga", "Rutkowska", "Mostowa 9", "Lodz", "38-785", "1982-04-05", "+(48)747-001-240", "irutkowska@mail.com", "9582105485034697410");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(19, "Anna", "Michalak", "Wrzesinska 9", "Lodz", "38-754", "1981-10-11", "+(48)777-855-000", "amichalak@mail.com", "9501245784215695210");
INSERT INTO customer (id, name, surname, address, city, postal_code, birth_date, phone, email, credit_card_number)
		VALUES(20, "Lilianna", "Szewczyk", "Plantaza 10/10", "Lodz", "38-754", "1980-10-26", "+(48)779-659-745", "lszewczyk@mail.com", "9546854858021312568");

-- insert Rental
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(1, 1, 1, "2017-01-01", "2017-01-02", 1, 1, 50);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(2, 2, 2, "2017-01-07", "2017-01-07", 2, 2, 200);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(3, 3, 3, "2017-01-10", "2017-01-11", 3, 3, 150);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(4, 4, 4, "2017-02-06", "2017-02-08", 4, 4, 200);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(5, 5, 5, "2017-02-10", "2017-02-10", 5, 5, 100);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(6, 6, 6, "2017-02-17", "2017-02-19", 1, 1, 50);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(7, 7, 7, "2017-03-20", "2017-03-21", 2, 2, 90);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(8, 8, 8, "2017-03-21", "2017-03-21", 3, 3, 70);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(9, 9, 9, "2017-03-28", "2017-03-29", 4, 4, 80);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(10, 10, 10, "2017-04-04", "2017-04-06", 5, 5, 70);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(11, 11, 11, "2017-04-06", "2017-04-07", 1, 2, 300);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(12, 12, 12, "2017-04-27", "2017-04-28", 1, 2, 350);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(13, 13, 13, "2017-05-20", "2017-05-20", 2, 3, 240);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(14, 14, 14, "2017-05-24", "2017-05-26", 2, 3, 240);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(15, 15, 15, "2017-05-26", "2017-05-26", 3, 2, 140);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(16, 16, 1, "2017-06-05", "2017-06-08", 3, 2, 250);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(17, 17, 2, "2017-06-14", "2017-06-17", 4, 5, 350);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(18, 18, 3, "2017-06-18", "2017-06-19", 4, 5, 180);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(19, 19, 4, "2017-07-04", "2017-07-06", 5, 4, 160);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(20, 20, 5, "2017-07-08", "2017-07-09", 4, 2, 170);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(21, 1, 6, "2017-07-09", "2017-07-09", 1, 4, 70);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(22, 1, 7, "2017-08-05", "2017-08-05", 2, 4, 80);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(23, 1, 8, "2017-08-17", "2017-08-17", 4, 5, 80);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(24, 2, 9, "2017-08-19", "2017-08-19", 2, 2, 90);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(25, 2, 10, "2017-09-08", "2017-09-09", 1, 1, 60);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(26, 2, 11, "2017-09-16", "2017-09-17", 1, 5, 80);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(27, 2, 12, "2017-09-19", "2017-09-10", 5, 1, 120);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(28, 2, 13, "2017-10-12", "2017-10-12", 2, 1, 130);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(29, 3, 14, "2017-10-17", "2017-10-18", 1, 5, 200);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(30, 4, 15, "2017-10-19", "2017-10-19", 2, 2, 300);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(31, 10, 1, "2017-10-27", "2017-10-27", 2, 2, 150);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(32, 11, 2, "2017-11-07", "2017-11-08", 3, 3, 500);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(33, 11, 1, "2017-11-09", "2017-11-09", 4, 4, 180);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(34, 12, 1, "2017-12-01", "2017-12-01", 5, 5, 450);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(35, 13, 1, "2017-12-15", "2017-12-17", 3, 2, 100);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(36, 14, 1, "2018-01-11", "2018-01-11", 1, 2, 140);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(37, 14, 3, "2018-04-17", "2018-04-18", 3, 3, 350);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(38, 20, 8, "2018-06-15", "2018-06-15", 1, 3, 340);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(39, 12, 12, "2018-08-30", "2018-08-30", 1, 2, 320);
INSERT INTO rental (id, customer_id, car_id, rent_begin, rent_end, start_location_id, end_location_id, cost)
		VALUES(40, 18, 10, "2018-10-27", "2018-10-28", 5, 4, 190);

-- insert Car_Carer
INSERT INTO car_carer (employee_id, car_id)
		VALUES(1, 1);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(2, 2);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(3, 3);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(4, 4);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(5, 5);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(6, 6);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(7, 7);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(8, 8);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(9, 9);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(10, 10);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(11, 11);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(12, 12);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(13, 13);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(14, 14);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(15, 15);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(1, 16);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(2, 17);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(3, 18);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(4, 19);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(5, 20);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(6, 21);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(7, 22);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(8, 23);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(9, 24);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(10, 25);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(11, 1);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(12, 2);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(13, 3);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(14, 4);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(15, 5);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(1, 6);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(2, 7);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(3, 8);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(4, 9);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(5, 10);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(6, 1);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(7, 2);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(8, 3);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(9, 4);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(10, 5);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(11, 6);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(12, 1);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(13, 2);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(14, 3);
INSERT INTO car_carer (employee_id, car_id)
		VALUES(15, 1);
car_carer