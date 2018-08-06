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
  POSITION ENUM('dealer', 'manager', 'accountant'),
  PESEL INTEGER(11),
  PHONE VARCHAR(20),
  EMAIL VARCHAR(30),
  LOCATION_ID INT,
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
            "4wd"),
  COLOR VARCHAR(12),
  ENGINE_SIZE INT(5),
  POWER INT(4),
  MILEAGE INT(7),
  SEATS INT(2),
  FUEL ENUM("petrol", "diesel", "lpg", "electric"),
  CURRENT_LOCATION_ID INT,
  PRIMARY KEY (ID))
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;