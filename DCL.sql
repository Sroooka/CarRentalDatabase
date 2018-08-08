DROP USER IF EXISTS 'user_ro'@'localhost';
DROP USER IF EXISTS 'user_rw_customers'@'localhost';
DROP USER IF EXISTS 'user_admin'@'localhost';

CREATE USER 'user_ro'@'localhost';
CREATE USER 'user_rw_customers'@'localhost';
CREATE USER 'user_admin'@'localhost';

GRANT SELECT ON CarRentalSroka.* TO 'user_ro'@'localhost';

GRANT SELECT ON CarRentalSroka.* TO 'user_rw_customers'@'localhost';
GRANT INSERT ON CarRentalSroka.CUSTOMER TO 'user_rw_customers'@'localhost';
GRANT UPDATE ON CarRentalSroka.CUSTOMER TO 'user_rw_customers'@'localhost';
GRANT DELETE ON CarRentalSroka.CUSTOMER TO 'user_rw_customers'@'localhost';

GRANT ALL PRIVILEGES ON CarRentalSroka.* TO 'user_admin'@'localhost';