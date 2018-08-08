SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Clear tables before creating
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `CarRentalSroka`;

-- -----------------------------------------------------
-- Create schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CarRentalSroka` DEFAULT CHARACTER SET utf8 ;
USE `CarRentalSroka`;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`POSITION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`POSITION` (
  ID INT NOT NULL,
  POSITION VARCHAR(30),
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CAR_TYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`CAR_TYPE` (
  ID INT NOT NULL,
  TYPE VARCHAR(30),
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`LOCATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`LOCATION` (
  ID INT NOT NULL,
  ADDRESS VARCHAR(30) DEFAULT '',
  CITY VARCHAR(30) DEFAULT '',
  POSTAL_CODE VARCHAR(6) DEFAULT '00-000',
  PHONE VARCHAR(20) DEFAULT '+(48)000-000-000',
  EMAIL VARCHAR(50) DEFAULT 'user@domain.com',
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`EMPLOYEE` (
  ID INT NOT NULL,
  NAME VARCHAR(20) DEFAULT '',
  SURNAME VARCHAR(20) DEFAULT '',
  POSITION_ID INT DEFAULT 1,
  AGE INT,
  LOCATION_ID INT DEFAULT 1,
  PRIMARY KEY (ID),
  INDEX `employee_location_key_idx` (`LOCATION_ID` ASC),
  INDEX `employee_position_key_idx` (`POSITION_ID` ASC),
  CONSTRAINT `employee_location_key`
    FOREIGN KEY (`LOCATION_ID`)
    REFERENCES `CarRentalSroka`.`Location` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `employee_position_key`
    FOREIGN KEY (`POSITION_ID`)
    REFERENCES `CarRentalSroka`.`POSITION` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`CAR` (
  ID INT NOT NULL,
  MANUFACTURER VARCHAR(20) DEFAULT '',
  MODEL VARCHAR(20) DEFAULT '',
  PRODUCTION_YEAR INT(4) DEFAULT 0000,
  TYPE_ID INT DEFAULT 1,
  COLOR VARCHAR(12) DEFAULT 'white',
  ENGINE_SIZE INT(5) DEFAULT 0,
  POWER INT(4) DEFAULT 0,
  MILEAGE INT(7) DEFAULT 0,
  CURRENT_LOCATION_ID INT DEFAULT 1,
  PRIMARY KEY (ID),
  INDEX `current_location_key_idx` (`CURRENT_LOCATION_ID` ASC),
  INDEX `type_key_idx` (`TYPE_ID` ASC),
  CONSTRAINT `current_location_key`
    FOREIGN KEY (`CURRENT_LOCATION_ID`)
    REFERENCES `CarRentalSroka`.`Location` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `car_type_key`
    FOREIGN KEY (`TYPE_ID`)
    REFERENCES `CarRentalSroka`.`CAR_TYPE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`CUSTOMER` (
  ID INT NOT NULL,
  NAME VARCHAR(20) DEFAULT '',
  SURNAME VARCHAR(20) DEFAULT '',
  ADDRESS VARCHAR(30) DEFAULT '',
  CITY VARCHAR(30) DEFAULT '',
  POSTAL_CODE VARCHAR(6) DEFAULT '00-000',
  BIRTH_DATE DATE DEFAULT '2000-1-1',
  PHONE VARCHAR(20) DEFAULT '+(48)000-000-000',
  EMAIL VARCHAR(50) DEFAULT 'user@domain.com',
  CREDIT_CARD_NUMBER VARCHAR(19) DEFAULT '0000000000000000000',
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`RENTAL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`RENTAL` (
  ID INT NOT NULL,
  CUSTOMER_ID INT,
  CAR_ID INT,
  RENT_BEGIN DATE DEFAULT '2000-1-1',
  RENT_END DATE DEFAULT '2000-1-1',
  START_LOCATION_ID INT DEFAULT 1,
  END_LOCATION_ID INT DEFAULT 1,
  COST INT DEFAULT 0,
  PRIMARY KEY (ID),
  INDEX `rental_customer_key_idx` (`CUSTOMER_ID` ASC),
  INDEX `rental_car_key_idx` (`CAR_ID` ASC),
  INDEX `start_location_key_idx` (`START_LOCATION_ID` ASC),
  INDEX `end_location_key_idx` (`END_LOCATION_ID` ASC),
  CONSTRAINT `rental_customer_key`
    FOREIGN KEY (`CUSTOMER_ID`)
    REFERENCES `CarRentalSroka`.`CUSTOMER` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `rental_car_key`
    FOREIGN KEY (`CAR_ID`)
    REFERENCES `CarRentalSroka`.`CAR` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `start_location_key`
    FOREIGN KEY (`START_LOCATION_ID`)
    REFERENCES `CarRentalSroka`.`LOCATION` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `end_location_key`
    FOREIGN KEY (`END_LOCATION_ID`)
    REFERENCES `CarRentalSroka`.`LOCATION` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CAR_CARER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CarRentalSroka`.`CAR_CARER` (
  EMPLOYEE_ID INT NOT NULL,
  CAR_ID INT NOT NULL,
  INDEX `car_key_map_idx` (`CAR_ID` ASC),
  INDEX `employee_key_map_idx` (`EMPLOYEE_ID` ASC),
  CONSTRAINT `car_key_map`
    FOREIGN KEY (`CAR_ID`)
    REFERENCES `CarRentalSroka`.`CAR` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `employee_key_map`
    FOREIGN KEY (`EMPLOYEE_ID`)
    REFERENCES `CarRentalSroka`.`EMPLOYEE` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- View with clients and cars
-- -----------------------------------------------------
CREATE VIEW clients_with_rents_and_cars AS
SELECT r.rent_begin as 'Rent date', CONCAT(cu.name, " ", cu.surname) as 'Customer', CONCAT(ca.manufacturer, " ", ca.model) as 'Car'
FROM rental r
	JOIN CarRentalSroka.customer cu ON cu.ID = r.CUSTOMER_ID
    JOIN CarRentalSroka.car ca ON ca.ID = r.CAR_ID
ORDER BY r.rent_begin;
        
-- -----------------------------------------------------
-- View with rents by each user on each month
-- -----------------------------------------------------
CREATE VIEW rents_by_month_for_customer AS
SELECT c.ID AS showid, c.NAME AS showname, c.SURNAME AS showsurname,  count(c.ID) AS count, MONTHNAME(RENT_BEGIN) AS month, YEAR(RENT_BEGIN) AS year
	FROM customer c
	JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
	GROUP BY c.id, YEAR(RENT_BEGIN), MONTH(RENT_BEGIN)
	ORDER BY c.id, count DESC;

-- -----------------------------------------------------
-- View with different cars per user
-- -----------------------------------------------------
CREATE VIEW different_cars AS
SELECT c.ID AS showid, c.NAME AS showname, c.SURNAME AS showsurname, count(c.ID) AS amount
	FROM customer c
		JOIN CarRentalSroka.rental r ON r.CUSTOMER_ID = c.ID
		GROUP BY c.id, r.car_id
		ORDER BY c.id;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;