CREATE TABLE IF NOT EXISTS `std6102041510071`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(128) NOT NULL,
  `email` VARCHAR(160) NOT NULL,
  `password` VARCHAR(128) NOT NULL,
  `create_ad` DATETIME NULL DEFAULT NULL,
  `update_at` TIMESTAMP NULL DEFAULT NULL,
  `is_active` ENUM('Active', 'Inactive') NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `table1col_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;