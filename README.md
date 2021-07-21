### Hi there 👋
# proyecto 
[proyecto modelo identidad relacion MYSQL](https://user-images.githubusercontent.com/87336816/126179185-90ca1c47-7f18-46d5-b372-a2dc352e8a31.png)
[dibujos de interfaz grafica proyecto final Mysql](Export_D6845cf7621f5b4bcd80f2e68ec9e207e (1).zip](https://github.com/anderson755/anderson755/files/6859047/Export_D6845cf7621f5b4bcd80f2e68ec9e207e.1.zip)

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema zoologicoo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema zoologicoo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zoologicoo` DEFAULT CHARACTER SET utf8 ;
USE `zoologicoo` ;

-- -----------------------------------------------------
-- Table `zoologicoo`.`Cuidadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`Cuidadores` (
  `idCuidadores` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `dirección` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `fecha_ingreso_parque` VARCHAR(45) NOT NULL,
  `fecha_ en_ la _que _un _cuidador _se_ hace_ cargo _de_ una _especie.` VARCHAR(45) NOT NULL,
  `un _cuidador_ puede_ estar_ a _cargo_ de_ varias_ especies` VARCHAR(45) NOT NULL,
  `sexo_cuidador` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCuidadores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`especies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`especies` (
  `idespecies` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `nombre_cientifico` VARCHAR(45) NOT NULL,
  `descripcion_general` VARCHAR(45) NOT NULL,
  `habitat_natural` VARCHAR(45) NOT NULL,
  `Cuidadores_idCuidadores` INT NOT NULL,
  `sexo_especie` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idespecies`),
  INDEX `fk_especies_Cuidadores1_idx` (`Cuidadores_idCuidadores` ASC) VISIBLE,
  CONSTRAINT `fk_especies_Cuidadores1`
    FOREIGN KEY (`Cuidadores_idCuidadores`)
    REFERENCES `zoologicoo`.`Cuidadores` (`idCuidadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`Hábitats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`Hábitats` (
  `idHábitats` INT NOT NULL,
  `nombre_habitat` VARCHAR(45) NOT NULL,
  `clima` VARCHAR(45) NOT NULL,
  `vegetacion` VARCHAR(45) NOT NULL,
  `predominantes` VARCHAR(45) NOT NULL,
  `continentes` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idHábitats`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`zona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`zona` (
  `idzona` INT NOT NULL,
  `nombre_zona` VARCHAR(45) NOT NULL,
  `extencion_ocupa` VARCHAR(45) NOT NULL,
  `el_zoologico` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idzona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`Itinerarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`Itinerarios` (
  `idItinerarios` INT NOT NULL,
  `codigode_Itinerario` VARCHAR(45) NOT NULL,
  `duración _recorrido` VARCHAR(45) NOT NULL,
  `longitud_itinerario` VARCHAR(45) NOT NULL,
  `máximo_ número_ de_ visitantes_ autorizado` VARCHAR(45) NOT NULL,
  `número_ de_ distintas _especies_ que _visita` VARCHAR(45) NOT NULL,
  `recorrido_de_zonas_del_parque` VARCHAR(45) NOT NULL,
  `una_ zona_ puede_ ser_ recorrida _por _diferentes _itinerarios` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idItinerarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`Guías`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`Guías` (
  `idGuías` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `dirrecion` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `fecha_inicio_trabajo` DATE NOT NULL,
  `guias_itinerarios` DATE NOT NULL,
  `guia_hora_asignado_itinerario` DATE NOT NULL,
  `sexo_guia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGuías`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`especies_has_zona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`especies_has_zona` (
  `especies_idespecies` INT NOT NULL,
  `zona_idzona` INT NOT NULL,
  PRIMARY KEY (`especies_idespecies`, `zona_idzona`),
  INDEX `fk_especies_has_zona_zona1_idx` (`zona_idzona` ASC) VISIBLE,
  INDEX `fk_especies_has_zona_especies_idx` (`especies_idespecies` ASC) VISIBLE,
  CONSTRAINT `fk_especies_has_zona_especies`
    FOREIGN KEY (`especies_idespecies`)
    REFERENCES `zoologicoo`.`especies` (`idespecies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_especies_has_zona_zona1`
    FOREIGN KEY (`zona_idzona`)
    REFERENCES `zoologicoo`.`zona` (`idzona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`Guías_has_Itinerarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`Guías_has_Itinerarios` (
  `Guías_idGuías` INT NOT NULL,
  `Itinerarios_idItinerarios` INT NOT NULL,
  PRIMARY KEY (`Guías_idGuías`, `Itinerarios_idItinerarios`),
  INDEX `fk_Guías_has_Itinerarios_Itinerarios1_idx` (`Itinerarios_idItinerarios` ASC) VISIBLE,
  INDEX `fk_Guías_has_Itinerarios_Guías1_idx` (`Guías_idGuías` ASC) VISIBLE,
  CONSTRAINT `fk_Guías_has_Itinerarios_Guías1`
    FOREIGN KEY (`Guías_idGuías`)
    REFERENCES `zoologicoo`.`Guías` (`idGuías`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Guías_has_Itinerarios_Itinerarios1`
    FOREIGN KEY (`Itinerarios_idItinerarios`)
    REFERENCES `zoologicoo`.`Itinerarios` (`idItinerarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`especies_has_Hábitats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`especies_has_Hábitats` (
  `especies_idespecies` INT NOT NULL,
  `Hábitats_idHábitats` INT NOT NULL,
  PRIMARY KEY (`especies_idespecies`, `Hábitats_idHábitats`),
  INDEX `fk_especies_has_Hábitats_Hábitats1_idx` (`Hábitats_idHábitats` ASC) VISIBLE,
  INDEX `fk_especies_has_Hábitats_especies1_idx` (`especies_idespecies` ASC) VISIBLE,
  CONSTRAINT `fk_especies_has_Hábitats_especies1`
    FOREIGN KEY (`especies_idespecies`)
    REFERENCES `zoologicoo`.`especies` (`idespecies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_especies_has_Hábitats_Hábitats1`
    FOREIGN KEY (`Hábitats_idHábitats`)
    REFERENCES `zoologicoo`.`Hábitats` (`idHábitats`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`Hábitats_has_especies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`Hábitats_has_especies` (
  `Hábitats_idHábitats` INT NOT NULL,
  `especies_idespecies` INT NOT NULL,
  PRIMARY KEY (`Hábitats_idHábitats`, `especies_idespecies`),
  INDEX `fk_Hábitats_has_especies_especies1_idx` (`especies_idespecies` ASC) VISIBLE,
  INDEX `fk_Hábitats_has_especies_Hábitats1_idx` (`Hábitats_idHábitats` ASC) VISIBLE,
  CONSTRAINT `fk_Hábitats_has_especies_Hábitats1`
    FOREIGN KEY (`Hábitats_idHábitats`)
    REFERENCES `zoologicoo`.`Hábitats` (`idHábitats`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hábitats_has_especies_especies1`
    FOREIGN KEY (`especies_idespecies`)
    REFERENCES `zoologicoo`.`especies` (`idespecies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zoologicoo`.`zona_has_Itinerarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zoologicoo`.`zona_has_Itinerarios` (
  `zona_idzona` INT NOT NULL,
  `Itinerarios_idItinerarios` INT NOT NULL,
  PRIMARY KEY (`zona_idzona`, `Itinerarios_idItinerarios`),
  INDEX `fk_zona_has_Itinerarios_Itinerarios1_idx` (`Itinerarios_idItinerarios` ASC) VISIBLE,
  INDEX `fk_zona_has_Itinerarios_zona1_idx` (`zona_idzona` ASC) VISIBLE,
  CONSTRAINT `fk_zona_has_Itinerarios_zona1`
    FOREIGN KEY (`zona_idzona`)
    REFERENCES `zoologicoo`.`zona` (`idzona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zona_has_Itinerarios_Itinerarios1`
    FOREIGN KEY (`Itinerarios_idItinerarios`)
    REFERENCES `zoologicoo`.`Itinerarios` (`idItinerarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
