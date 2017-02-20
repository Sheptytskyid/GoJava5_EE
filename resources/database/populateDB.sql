INSERT INTO companies (name) VALUES
  ('Epam'),
  ('Ciclum'),
  ('Luxoft');

INSERT INTO skills (skill) VALUES
  ('C++'),
  ('C#'),
  ('Java'),
  ('Javascript'),
  ('HTML'),
  ('PHP'),
  ('SQL');

INSERT INTO developers (name, company_id) VALUES
  ('Roman Boyko', 1),
  ('Oleg Moroz', 1),
  ('Katia Liakh', 1),
  ('Olena Bilan', 2),
  ('Roman Chalyi', 2),
  ('Petro Kish', 2),
  ('Vasyl Chornyi', 3),
  ('Ivan Brom', 3),
  ('Cristina Boyko', 3);

INSERT INTO developers_skills (developer_id, skill_id) VALUES
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

INSERT INTO customers (name) VALUES
  ('Ministry of Culture'),
  ('Daewoo'),
  ('Central Bank');

INSERT INTO projects (name, company_id, customer_id) VALUES
  ('Electronic library', 1, 1),
  ('Museum web-site', 2, 1),
  ('Art gallery', 1, 1),
  ('FX exchange', 2, 3),
  ('Online payment system', 3, 3),
  ('Interbank trading platform', 1, 3),
  ('Cars navigation system', 2, 2),
  ('Smart car system', 3, 2),
  ('Smart driving', 3, 2);

INSERT INTO developers_projects (developer_id, project_id) VALUES
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