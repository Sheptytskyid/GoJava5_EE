ALTER TABLE projects
ADD cost INT UNSIGNED NOT NULL after name;

UPDATE projects
SET cost = cast(rand() * 1000 * id AS UNSIGNED);