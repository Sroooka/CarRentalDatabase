-- 4a
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, e.NAME, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE e.age > 25
ORDER BY e.age;

-- 4b
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, e.NAME, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE length(surname)>5
ORDER BY e.age;

 -- 4c
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, e.NAME, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE e.SURNAME LIKE "_F%";

-- 4d
SELECT ca.ID, ca.MANUFACTURER, ca.MODEL, ca.PRODUCTION_YEAR, t.TYPE, ca.COLOR, ca.ENGINE_SIZE, ca.POWER, ca.MILEAGE, l.CITY, MAX(MILEAGE) AS MAX_MILEAGE
FROM CAR ca
	JOIN CarRentalSroka.car_type t ON t.ID = ca.TYPE_ID
    JOIN CarRentalSroka.location l ON l.ID = ca.CURRENT_LOCATION_ID;
 
 -- 4e
SELECT ca.ID, ca.MANUFACTURER, ca.MODEL, ca.PRODUCTION_YEAR, t.TYPE, ca.COLOR, ca.ENGINE_SIZE, ca.POWER, ca.MILEAGE, l.CITY
FROM CAR ca
	JOIN CarRentalSroka.car_type t ON t.ID = ca.TYPE_ID
    JOIN CarRentalSroka.location l ON l.ID = ca.CURRENT_LOCATION_ID
-- WHERE ca.mileage>200000 and ca.mileage<300000
WHERE ca.mileage between 200000 and 300000
ORDER BY ca.mileage;

-- 4f
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, e.NAME, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE p.POSITION = "manager"
ORDER BY e.age;