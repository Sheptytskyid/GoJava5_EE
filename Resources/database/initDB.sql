CREATE TABLE skills (
  id    INT AUTO_INCREMENT,
  skill VARCHAR(50) UNIQUE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE companies (
  id   INT AUTO_INCREMENT,
  name VARCHAR(100) UNIQUE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE developers (
  id         INT AUTO_INCREMENT,
  name       VARCHAR(50) UNIQUE NOT NULL,
  company_id INT                NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (company_id) REFERENCES companies (id)
);

CREATE TABLE developers_skills (
  developer_id INT NOT NULL,
  skill_id     INT NOT NULL,
  FOREIGN KEY (developer_id) REFERENCES developers (id),
  FOREIGN KEY (skill_id) REFERENCES skills (id)
);

CREATE TABLE customers (
  id         INT AUTO_INCREMENT NOT NULL,
  name       VARCHAR(100)       NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE projects (
id         INT AUTO_INCREMENT,
project    VARCHAR(100) NOT NULL,
price      INT          NOT NULL,
company_id INT          NOT NULL,
customer_id INT          NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (company_id) REFERENCES companies (id),
FOREIGN KEY (customer_id) REFERENCES customers (id)
);

CREATE TABLE developers_projects (
developer_id INT NOT NULL,
project_id   INT NOT NULL,
FOREIGN KEY (developer_id) REFERENCES developers (id),
FOREIGN KEY (project_id) REFERENCES projects (id)
);
