INSERT INTO companies VALUES
  (NULL, 'Epam'),
  (NULL, 'Ciclum'),
  (NULL, 'Luxoft');

INSERT INTO skills VALUES
  (NULL, 'C++'),
  (NULL, 'C#'),
  (NULL, 'Java'),
  (NULL, 'Javascript'),
  (NULL, 'HTML'),
  (NULL, 'PHP'),
  (NULL, 'SQL');

INSERT INTO developers VALUES
  (NULL, 'Roman Boyko', 1),
  (NULL, 'Oleg Moroz', 1),
  (NULL, 'Katia Liakh', 1),
  (NULL, 'Olena Bilan', 2),
  (NULL, 'Roman Chalyi', 2),
  (NULL, 'Petro Kish', 2),
  (NULL, 'Vasyl Chornyi', 3),
  (NULL, 'Ivan Brom', 3),
  (NULL, 'Cristina Boyko', 3);

INSERT INTO developers_skills VALUES
  (1, 1),
  (1, 3),
  (2, 2),
  (2, 4),
  (3, 5),
  (3, 7),
  (4, 3),
  (4, 6),
  (5, 1),
  (5, 2),
  (6, 4),
  (6, 3),
  (7, 7),
  (7, 2),
  (8, 2),
  (8, 1),
  (9, 4),
  (9, 6);

INSERT INTO customers VALUES
  (NULL, 'Ministry of Culture'),
  (NULL, 'Daewoo'),
  (NULL, 'NBU');

INSERT INTO projects VALUES
  (NULL, 'Electronic library', 1, 1),
  (NULL, 'Museum web-site', 1, 1),
  (NULL, 'Online payment system', 2, 3),
  (NULL, 'Interbank trading platform', 2, 3),
  (NULL, 'Cars navigation system', 3, 2),
  (NULL, 'Smart car system', 3, 2);

INSERT INTO developers_projects VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (4, 4),
  (4, 5),
  (4, 6),
  (5, 1),
  (5, 2),
  (5, 6),
  (6, 5),
  (7, 1),
  (7, 3),
  (8, 2),
  (8, 5),
  (8, 6),
  (9, 3),
  (9, 4);