CREATE TABLE `project2`.`match` (
  `id_match` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifier of the match',
  `id_event` INT(11) NOT NULL COMMENT 'reference to the event of the match',
  `id_stadium` INT(11) NOT NULL COMMENT 'reference to the stadium of the match',
  `date` DATE NOT NULL COMMENT 'date of the match',
  PRIMARY KEY (`id_match`),
  INDEX `id_event_fk_idx` (`id_event` ASC) VISIBLE,
  INDEX `id_stadium_fk_idx` (`id_stadium` ASC) VISIBLE,
  CONSTRAINT `id_event_match_fk`
    FOREIGN KEY (`id_event`)
    REFERENCES `project2`.`event` (`id_event`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_stadium_fk`
    FOREIGN KEY (`id_stadium`)
    REFERENCES `project2`.`stadium` (`id_stadium`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'Table that storages all the matches.';
