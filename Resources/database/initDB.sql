CREATE TABLE skills (
  id    INT UNSIGNED AUTO_INCREMENT,
  skill VARCHAR(50) UNIQUE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE companies (
  id   INT UNSIGNED AUTO_INCREMENT,
  name VARCHAR(100) UNIQUE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE developers (
  id         INT UNSIGNED AUTO_INCREMENT,
  name       VARCHAR(50) UNIQUE NOT NULL,
  company_id INT UNSIGNED       NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (company_id) REFERENCES companies (id)
);

CREATE TABLE developers_skills (
  developer_id INT UNSIGNED NOT NULL,
  skill_id     INT UNSIGNED NOT NULL,
  FOREIGN KEY (developer_id) REFERENCES developers (id),
  FOREIGN KEY (skill_id) REFERENCES skills (id)
);

CREATE TABLE customers (
  id   INT UNSIGNED AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE projects (
  id          INT UNSIGNED AUTO_INCREMENT,
  name        VARCHAR(100) NOT NULL,
  company_id  INT UNSIGNED NOT NULL,
  customer_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (company_id) REFERENCES companies (id),
  FOREIGN KEY (customer_id) REFERENCES customers (id)
);

CREATE TABLE developers_projects (
  developer_id INT UNSIGNED NOT NULL,
  project_id   INT UNSIGNED NOT NULL,
  FOREIGN KEY (developer_id) REFERENCES developers (id),
  FOREIGN KEY (project_id) REFERENCES projects (id)
);
