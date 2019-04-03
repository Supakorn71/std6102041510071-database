CREATE TABLE IF NOT EXISTS `std6102041510071`.`staff` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `staff_no` VARCHAR(5) NULL DEFAULT NULL,
  `f_name` VARCHAR(100) NULL DEFAULT NULL,
  `l_name` VARCHAR(100) NULL DEFAULT NULL,
  `position` VARCHAR(50) NULL DEFAULT NULL,
  `sex` VARCHAR(2) NULL DEFAULT NULL,
  `d_o_b` DATE NULL DEFAULT NULL,
  `salary` FLOAT(7,2) NULL DEFAULT NULL,
  `branch_id` INT(11) NULL DEFAULT NULL,
  `user_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  INDEX `branch_id` (`branch_id` ASC) VISIBLE,
  CONSTRAINT `staff_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `std6102041510071`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `staff_ibfk_2`
    FOREIGN KEY (`branch_id`)
    REFERENCES `std6102041510071`.`branch` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;