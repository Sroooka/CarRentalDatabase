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

