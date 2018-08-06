SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `CarRentalSroka` DEFAULT CHARACTER SET utf8 ;
USE `CarRentalSroka`;

-- -----------------------------------------------------
-- Clear tables before creating
-- -----------------------------------------------------
DROP TABLE 	CarRentalSroka.CAR, 
			CarRentalSroka.CAR_CARER, 
            CarRentalSroka.CAR_TYPE, 
            CarRentalSroka.CUSTOMER, 
            CarRentalSroka.EMPLOYEE, 
            CarRentalSroka.LOCATION, 
            CarRentalSroka.POSITION;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.EMPLOYEE (
  ID INT NOT NULL,
  NAME VARCHAR(20) DEFAULT '',
  SURNAME VARCHAR(20) DEFAULT '',
  POSITION_ID INT DEFAULT 1,
  PESEL INTEGER(11) DEFAULT 00000000000,
  PHONE VARCHAR(20) DEFAULT '+(48)000-000-000',
  EMAIL VARCHAR(30) DEFAULT 'user@domain.com',
  LOCATION_ID INT DEFAULT 1,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.CAR (
  ID INT NOT NULL,
  MANUFACTURER VARCHAR(20) DEFAULT '',
  MODEL VARCHAR(20) DEFAULT '',
  PRODUCTION_YEAR INT(4) DEFAULT 0000,
  TYPE_ID INT DEFAULT 1,
  COLOR VARCHAR(12) DEFAULT 'white',
  ENGINE_SIZE INT(5) DEFAULT 0,
  POWER INT(4) DEFAULT 0,
  MILEAGE INT(7) DEFAULT 0,
  SEATS INT(2) DEFAULT 5,
  FUEL ENUM("petrol", "diesel", "lpg", "electric") DEFAULT 'petrol',
  CURRENT_LOCATION_ID INT DEFAULT 1,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.CUSTOMER (
  ID INT NOT NULL,
  NAME VARCHAR(20) DEFAULT '',
  SURNAME VARCHAR(20) DEFAULT '',
  ADDRESS VARCHAR(30) DEFAULT '',
  CITY VARCHAR(30) DEFAULT '',
  POSTAL_CODE INT(5) DEFAULT 00000,
  BIRTH_DATE DATE DEFAULT '2000-1-1',
  PHONE VARCHAR(20) DEFAULT '+(48)000-000-000',
  EMAIL VARCHAR(30) DEFAULT 'user@domain.com',
  CREDIT_CARD_NUMBER INT(19) DEFAULT 0000000000000000000,
  IDENTITY_CARD_NUMBER VARCHAR(15) DEFAULT '',
  DRIVING_LICENSE_NUMBER VARCHAR(15) DEFAULT '',
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`RENTAL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.RENTAL (
  ID INT NOT NULL,
  CUSTOMER_ID INT NULL,
  SURNAME VARCHAR(20) NULL,
  RENT_STATUS ENUM( "order", 
					"customer accepted", 
                    "rent", 
                    "car returned", 
                    "car not returned", 
                    "paid") 
                    DEFAULT 'order',
  RENT_BEGIN DATE DEFAULT '2000-1-1',
  RENT_END DATE DEFAULT '2000-1-1',
  CAR_ID INT,
  START_LOCATION_ID INT DEFAULT 1,
  END_LOCATION_ID INT DEFAULT 1,
  COST INT DEFAULT 0,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`LOCATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.LOCATION (
  ID INT NOT NULL,
  ADDRESS VARCHAR(30) DEFAULT '',
  CITY VARCHAR(30) DEFAULT '',
  POSTAL_CODE INT(5) 00000,
  PHONE VARCHAR(20) DEFAULT '+(48)000-000-000',
  EMAIL VARCHAR(30) DEFAULT 'user@domain.com',
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CAR_CARER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.CAR_CARER (
  EMPLOYEE_ID INT NOT NULL,
  CAR_ID INT NOT NULL)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`CAR_TYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.CAR_TYPE (
  ID INT NOT NULL,
  TYPE VARCHAR(30),
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRentalSroka`.`POSITION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRentalSroka.POSITION (
  ID INT NOT NULL,
  POSITION VARCHAR(30),
  PRIMARY KEY (ID))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;