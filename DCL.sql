CREATE USER 'user_ro';
CREATE USER 'user_rw_customers';
CREATE USER 'user_admin';

GRANT SELECT ON CarRentalSroka.* TO 'user_ro';

GRANT SELECT ON CarRentalSroka.* TO 'user_rw_customers';
GRANT INSERT ON CarRentalSroka.CUSTOMERS TO 'user_rw_customers';
GRANT UPDATE ON CarRentalSroka.CUSTOMERS TO 'user_rw_customers';
GRANT DELETE ON CarRentalSroka.CUSTOMERS TO 'user_rw_customers';

GRANT ALL PRIVILEGES ON CarRentalSroka.* TO 'user_admin';