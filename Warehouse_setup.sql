/*
~~~ Roy Phelps ~~~
 MySQL database creation
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Warehouse
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Warehouse` ;

-- -----------------------------------------------------
-- Schema Warehouse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Warehouse` DEFAULT CHARACTER SET utf8 ;
USE `Warehouse` ;

-- -----------------------------------------------------
-- Table `Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Customer` ;

CREATE TABLE IF NOT EXISTS `Customer` (
  `idCustomer` INT NOT NULL AUTO_INCREMENT,
  `CompanyName` VARCHAR(45) NULL,
  `StreetAddress` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  `Balance` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idCustomer`))
ENGINE = InnoDB
AUTO_INCREMENT = 500;


-- -----------------------------------------------------
-- Table `Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Product` ;

CREATE TABLE IF NOT EXISTS `Product` (
  `idProduct` INT NOT NULL AUTO_INCREMENT,
  `ProductName` VARCHAR(45) NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `PricePerUnit` DECIMAL(10,2) NULL,
  `Status` VARCHAR(45) NULL,
  PRIMARY KEY (`idProduct`))
ENGINE = InnoDB
AUTO_INCREMENT = 94596;


-- -----------------------------------------------------
-- Table `Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Employee` ;

CREATE TABLE IF NOT EXISTS `Employee` (
  `idEmployee` INT NOT NULL AUTO_INCREMENT,
  `EmpFirstName` VARCHAR(45) NULL,
  `EmpLastName` VARCHAR(45) NULL,
  `EmpLocation` VARCHAR(45) NULL,
  `Commission` DECIMAL(10,2) NULL,
  PRIMARY KEY (`idEmployee`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Shipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Shipment` ;

CREATE TABLE IF NOT EXISTS `Shipment` (
  `idShipment` INT NOT NULL AUTO_INCREMENT,
  `Quantity` INT NULL,
  `Scantag` VARCHAR(45) NULL,
  `ReferenceNum` INT NULL,
  `Customer_idCustomer` INT NOT NULL,
  `Product_idProduct` INT NOT NULL,
  `Employee_idEmployee` INT NOT NULL,
  PRIMARY KEY (`idShipment`, `Customer_idCustomer`, `Product_idProduct`),
  INDEX `fk_Shipment_Customer_idx` (`Customer_idCustomer` ASC),
  INDEX `fk_Shipment_Product1_idx` (`Product_idProduct` ASC),
  INDEX `fk_Shipment_Employee1_idx` (`Employee_idEmployee` ASC),
  CONSTRAINT `fk_Shipment_Customer`
    FOREIGN KEY (`Customer_idCustomer`)
    REFERENCES `Customer` (`idCustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Shipment_Product1`
    FOREIGN KEY (`Product_idProduct`)
    REFERENCES `Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Shipment_Employee1`
    FOREIGN KEY (`Employee_idEmployee`)
    REFERENCES `Employee` (`idEmployee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1200;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
