CREATE TABLE IF NOT EXISTS `std6102041510071`.`viewing` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `client_id` INT(11) NULL DEFAULT NULL,
  `property_for_rent_id` INT(11) NULL DEFAULT NULL,
  `view_date` DATE NULL DEFAULT NULL,
  `comment` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `client_id` (`client_id` ASC) VISIBLE,
  INDEX `property_for_rent_id` (`property_for_rent_id` ASC) VISIBLE,
  CONSTRAINT `client_id`
    FOREIGN KEY (`client_id`)
    REFERENCES `std6102041510071`.`client` (`id`),
  CONSTRAINT `viewing_ibfk_2`
    FOREIGN KEY (`property_for_rent_id`)
    REFERENCES `std6102041510071`.`property_for_rent` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;