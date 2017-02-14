ALTER TABLE developers
  ADD salary INT UNSIGNED NOT NULL;

UPDATE developers
SET salary = cast(rand() * 500 * id AS UNSIGNED);
