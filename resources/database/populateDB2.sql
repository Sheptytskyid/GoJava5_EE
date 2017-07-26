INSERT INTO skills (name) VALUES
  ('C++'),
  ('C#'),
  ('Java'),
  ('Javascript'),
  ('HTML'),
  ('PHP'),
  ('SQL');

INSERT INTO companies (name) VALUES
  ('Epam'),
  ('Ciclum'),
  ('Luxoft');

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

INSERT INTO developers (name, project_id) VALUES
  ('Roman Boyko', 1),
  ('Oleg Moroz', 1),
  ('Katia Liakh', 2),
  ('Olena Bilan', 2),
  ('Roman Chalyi', 3),
  ('Petro Kish', 3),
  ('Vasyl Chornyi', 4),
  ('Ivan Brom', 4),
  ('Cristina Soto', 5),
  ('Maria DB', 5),
  ('Oleg Figo', 6),
  ('Kiss FM', 6),
  ('Vandit Bandit', 7),
  ('Alex Pindos', 7),
  ('Olga Volga', 8),
  ('Ira Kvartira', 8),
  ('Richard Alpert', 9),
  ('Cristina Boyko', 9);

INSERT INTO developers_skills (developer_id, skill_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 6),
  (4, 7),
  (4, 1),
  (5, 2),
  (5, 3),
  (6, 4),
  (6, 5),
  (7, 6),
  (7, 7),
  (8, 1),
  (8, 2),
  (9, 3),
  (9, 4),
  (10, 5),
  (10, 6),
  (11, 7),
  (11, 1),
  (12, 2),
  (12, 3),
  (13, 4),
  (13, 5),
  (14, 6),
  (14, 7),
  (15, 1),
  (15, 2),
  (16, 3),
  (16, 4),
  (17, 5),
  (17, 6),
  (18, 7),
  (18, 1);