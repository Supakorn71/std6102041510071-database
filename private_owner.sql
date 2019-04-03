CREATE TABLE IF NOT EXISTS `std6102041510071`.`private_owner` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `owner_no` VARCHAR(5) NOT NULL,
  `first_name` VARCHAR(300) NOT NULL,
  `last_name` VARCHAR(300) NOT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `telephone` INT(11) NULL DEFAULT NULL,
  `user_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `std6102041510071`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;