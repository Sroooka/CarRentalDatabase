-- 4a
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE e.age > 25
ORDER BY e.age;

-- 4b
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE length(surname)>5
ORDER BY e.age;

 -- 4c
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, p.POSITION, l.CITY
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
SELECT e.ID, e.NAME, e.SURNAME, e.AGE, p.POSITION, l.CITY
FROM employee e
	JOIN CarRentalSroka.position p ON p.ID = e.POSITION_ID
    JOIN CarRentalSroka.location l ON l.ID = e.LOCATION_ID
WHERE p.POSITION = "manager"
ORDER BY e.age;

-- 4g1
SELECT showid as 'ID', showname AS 'Name', showsurname AS 'Surname', max(amount) AS 'Rents' from (
	SELECT c.ID AS showid, c.NAME AS showname, c.SURNAME AS showsurname, count(c.ID) AS amount
	FROM customer c
		JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
		GROUP BY c.ID
	ORDER BY amount DESC
)y;

-- 4g2
SELECT MONTHNAME(date1) AS Month, totalrents AS 'Total rents' 
FROM
(
	SELECT RENT_BEGIN AS date1, COUNT(ID) as totalrents
		FROM rental
		GROUP BY DATE_FORMAT(RENT_BEGIN, '%m')
)t;

-- 4g3
SELECT showid as 'ID', showname AS 'Name', showsurname AS 'Surname', amount AS 'Amount', month AS 'Month', year AS 'Year' from (
	SELECT c.ID AS showid, c.NAME AS showname, c.SURNAME AS showsurname, count(c.ID) AS amount, MONTHNAME(RENT_BEGIN) AS month, YEAR(RENT_BEGIN) AS year
	FROM customer c
		JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
        GROUP BY c.id, YEAR(RENT_BEGIN), MONTH(RENT_BEGIN)
		ORDER BY c.id, amount DESC
 )y
GROUP BY showid;

-- 4g4
SELECT MONTHNAME(date1) AS Month, totalrents/customer_amount AS 'Total rents per client' 
FROM
(
	SELECT RENT_BEGIN AS date1, COUNT(ID) as totalrents
		FROM rental
		GROUP BY DATE_FORMAT(RENT_BEGIN, '%m')
)t,
(
	SELECT COUNT(ID) as customer_amount
		FROM customer
)y;

-- 4h
SELECT showid as 'ID', showname AS 'Name', showsurname AS 'Surname', count(amount) AS 'Different Cars' FROM(
	SELECT c.ID AS showid, c.NAME AS showname, c.SURNAME AS showsurname, count(c.ID) AS amount
	FROM customer c
		JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
		GROUP BY c.id, r.car_id
		ORDER BY c.id
)y
GROUP BY showid;

-- 4i

-- MANUFACTURER WITH MODEL
SELECT showmanu AS 'Manufacturer', showmodel AS 'Model', amount AS 'Rents' FROM(
	SELECT c.MANUFACTURER AS showmanu, c.MODEL AS showmodel, count(c.ID) AS amount
	FROM car c
		JOIN CarRentalSroka.rental r ON r.CAR_ID = c.ID
		GROUP BY c.MODEL
		ORDER BY c.id
)y
ORDER BY amount DESC;

-- JUST MANUFACTURER
SELECT showmanu AS 'Manufacturer', amount AS 'Rents' FROM(
	SELECT c.MANUFACTURER AS showmanu, c.MODEL AS showmodel, count(c.ID) AS amount
	FROM car c
		JOIN CarRentalSroka.rental r ON r.CAR_ID = c.ID
		GROUP BY c.MANUFACTURER
		ORDER BY c.id
)y
ORDER BY amount DESC;

-- 4j
SELECT c.ID as 'ID', c.NAME AS 'Name', c.SURNAME AS 'Surname', sum(r.cost) AS Cost
FROM customer c
	JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
    WHERE YEAR(r.RENT_BEGIN) = '2017'
	GROUP BY r.customer_id
	HAVING Cost = 
		(
			SELECT max(Totalcost1) FROM
			(
				SELECT c.ID as 'ID', c.NAME AS 'Name', c.SURNAME AS 'Surname', sum(r.cost) AS Totalcost1
				FROM customer c
					JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
                    WHERE YEAR(r.RENT_BEGIN) = '2017'
					GROUP BY r.customer_id
					ORDER BY sum(r.cost) DESC
			)y
		);

-- 4k1
set @start_search_date = '2017-01-02';
set @end_search_date = '2017-01-16';
set @search_car_id = 1;
SELECT c.ID AS 'ID', c.NAME AS 'Name', c.SURNAME AS 'Surname'
	FROM customer c
		JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
		WHERE DATE(r.rent_begin) BETWEEN @start_search_date AND @end_search_date
        AND r.car_id = @search_car_id
		GROUP BY c.ID;

-- 4k2
set @start_search_date = '2017-01-02';
set @end_search_date = '2017-01-16';
set @search_car_id = 1;
SELECT c.ID AS 'ID', c.NAME AS 'Name', c.SURNAME AS 'Surname'
	FROM customer c
		JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
		WHERE 
        -- DATE(r.rent_begin) BETWEEN '2017-01-02' AND '2017-01-16'
        r.car_id = @search_car_id AND
        (
			(DATE(r.rent_begin) BETWEEN @start_search_date AND @end_search_date) OR
            (DATE(r.rent_end) 	BETWEEN @start_search_date AND @end_search_date)
        )
		GROUP BY c.ID;
        
-- 4l
set @update_car_id := 1;
SELECT @color_before_update := COLOR FROM CarRentalSroka.CAR WHERE ID = @update_car_id;
UPDATE CarRentalSroka.CAR
    SET COLOR = "deep blue"
    WHERE ID = @update_car_id;
SELECT @color_before_update AS 'Color before update', COLOR AS 'New Color' FROM CarRentalSroka.CAR WHERE ID=1;

-- 4m
SELECT c.ID AS 'ID', c.NAME AS 'Name', c.SURNAME AS 'Surname', count(c.ID) AS Rents
FROM customer c
	JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
	WHERE r.START_LOCATION_ID != r.END_LOCATION_ID
	GROUP BY c.id
	HAVING Rents = 
	(
	SELECT max(amount) FROM
		(
		SELECT c.ID AS showid, c.NAME AS showname, c.SURNAME AS showsurname, count(c.ID) AS amount
			FROM customer c
			JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
			WHERE r.START_LOCATION_ID != r.END_LOCATION_ID
			GROUP BY c.id
		)y
);

-- 4n
SELECT domain AS 'Domain', max(amount) AS 'Users' FROM(
	SELECT SUBSTRING_INDEX(c.email,'@', -1) as domain, count(c.ID) AS amount
	FROM customer c
		GROUP BY domain
		ORDER BY c.id
)y;

-- 4o
SELECT ca.ID as 'ID', ca.MANUFACTURER as 'Manfacturer', ca.MODEL as 'Model', ca.COLOR as 'Color', ca.PRODUCTION_YEAR as 'Year', CONCAT(lo.city, ": ", lo.address) as 'Current location', count(ca.id) as Carers
FROM car_carer c
	JOIN CarRentalSroka.EMPLOYEE e ON e.ID = c.EMPLOYEE_ID
    JOIN CarRentalSroka.CAR ca ON ca.ID = c.CAR_ID
    JOIN CarRentalSroka.LOCATION lo ON lo.ID = ca.CURRENT_LOCATION_ID
GROUP BY ca.ID
HAVING Carers > 1
ORDER BY Carers DESC, ID;

-- 4p
SELECT e.ID as 'ID', e.name as 'Name', e.surname as 'Surname'
FROM car_carer c
	JOIN CarRentalSroka.EMPLOYEE e ON e.ID = c.EMPLOYEE_ID
	WHERE e.ID NOT IN 
	(
		SELECT EMPLOYEE_ID FROM car_carer GROUP BY EMPLOYEE_ID
	)
-- GROUP BY e.ID

