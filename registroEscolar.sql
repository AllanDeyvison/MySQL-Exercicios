-- MySQL Script generated by MySQL Workbench
-- Tue Apr 20 17:40:28 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema registroEscolar
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema registroEscolar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `registroEscolar` DEFAULT CHARACTER SET utf8 ;
USE `registroEscolar` ;

-- -----------------------------------------------------
-- Table `registroEscolar`.`Alunes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `registroEscolar`.`Alunes` (
  `idAlunes` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `idade` INT(2) NOT NULL,
  `serie` CHAR(2) NOT NULL,
  `nota` DOUBLE NOT NULL,
  `faltas` INT(3) NOT NULL,
  PRIMARY KEY (`idAlunes`),
  UNIQUE INDEX `idAlunes_UNIQUE` (`idAlunes` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('João', '12', '6', '7.6', '6');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Maria', '13', '7', '7.9', '4');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Jeferson', '11', '5', '6.4', '8');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Ana', '14', '8', '8.4', '5');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Pedro', '14', '7', '8.7', '2');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Alice', '12', '6', '9.8', '1');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Giovana', '13', '7', '10', '3');
INSERT INTO `registroescolar`.`alunes` (`nome`, `idade`, `serie`, `nota`, `faltas`) VALUES ('Kaique', '15', '8', '7.4', '8');

SELECT * FROM registroescolar.alunes;
SELECT * FROM registroescolar.alunes WHERE nota > 7;
SELECT * FROM registroescolar.alunes WHERE nota < 7;
UPDATE `registroescolar`.`alunes` SET `nota` = '6.5' WHERE (`idAlunes` = '2');

