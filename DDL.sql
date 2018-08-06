SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `CarRental` DEFAULT CHARACTER SET utf8 ;
USE `CarRental`;

-- -----------------------------------------------------
-- Table `CarRental`.`EMPLOYEE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRental.EMPLOYEE (
  ID INT NOT NULL,
  NAME VARCHAR(20) NULL,
  SURNAME VARCHAR(20) NULL,
  POSITION ENUM('dealer', 'manager', 'accountant') NULL,
  PESEL INTEGER(11) NULL,
  PHONE VARCHAR(20) NULL,
  EMAIL VARCHAR(30) NULL,
  LOCATION_ID INT NULL,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRental`.`CAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRental.CAR (
  ID INT NOT NULL,
  MANUFACTURER VARCHAR(20),
  MODEL VARCHAR(20),
  PRODUCTION_YEAR INT(4),
  TYPE ENUM("sedan", 
			"wagon", 
            "suv", 
            "hatchback", 
            "cabriolet", 
            "coupe",
            "pickup",
            "4wd") NULL,
  COLOR VARCHAR(12) NULL,
  ENGINE_SIZE INT(5) NULL,
  POWER INT(4) NULL,
  MILEAGE INT(7) NULL,
  SEATS INT(2) NULL,
  FUEL ENUM("petrol", "diesel", "lpg", "electric") NULL,
  CURRENT_LOCATION_ID INT NULL,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRental`.`CUSTOMER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRental.CUSTOMER (
  ID INT NOT NULL,
  NAME VARCHAR(20) NULL,
  SURNAME VARCHAR(20) NULL,
  ADDRESS VARCHAR(30) NULL,
  CITY VARCHAR(30) NULL,
  POSTAL_CODE INT(5) NULL,
  BIRTH_DATE DATE NULL,
  PHONE VARCHAR(20) NULL,
  EMAIL VARCHAR(30) NULL,
  CREDIT_CARD_NUMBER INT(19) NULL,
  IDENTITY_CARD_NUMBER VARCHAR(15),
  DRIVING_LICENSE_NUMBER VARCHAR(15),
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRental`.`RENTAL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRental.RENTAL (
  ID INT NOT NULL,
  CUSTOMER_ID INT NULL,
  SURNAME VARCHAR(20) NULL,
  RENT_STATUS ENUM("order", 
					"customer accepted", 
                    "rent", 
                    "car returned", 
                    "car not returned", 
                    "paid") NULL,
  RENT_BEGIN DATE NULL,
  RENT_END DATE NULL,
  CAR_ID INT NULL,
  START_LOCATION_ID INT NULL,
  END_LOCATION_ID INT NULL,
  COST INT,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRental`.`LOCATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRental.LOCATION (
  ID INT NOT NULL,
  ADDRESS VARCHAR(30) NULL,
  CITY VARCHAR(30) NULL,
  POSTAL_CODE INT(5) NULL,
  PHONE VARCHAR(20) NULL,
  EMAIL VARCHAR(30) NULL,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `CarRental`.`CAR_CARER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS CarRental.CAR_CARER (
  EMPLOYEE_ID INT NOT NULL,
  CAR_ID INT NOT NULL)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;