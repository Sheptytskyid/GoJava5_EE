SELECT
  c.company,
  a.name as customer,
  c.revenue
FROM customers a
  JOIN projects b
  JOIN (
         SELECT
           companies.name     AS company,
           min(projects.cost) AS revenue
         FROM projects, companies
         WHERE projects.company_id = companies.id
         GROUP BY company_id) c
    ON (c.revenue = b.cost AND b.customer_id = a.id);

#solution with temporary table

#CREATE TEMPORARY TABLE max_companies_projects
#SELECT
#companies.name     AS company,
#min(projects.cost) AS revenue
#FROM projects, companies
#WHERE projects.company_id = companies.id
#GROUP BY company_id;

#SELECT
#a.company,
#a.revenue,
#c.name
#FROM max_companies_projects a
#JOIN (projects b, customers c) ON (a.revenue = b.cost AND b.customer_id = c.id);

#DROP TABLE max_companies_projects;


#this solution is intended to do the same work as the upper one but it incorrectly matches customers to projects
#  and I haven't yet found a way to fix it

#SELECT
#companies.name     AS company,
#customers.name     AS customer,
#min(projects.cost) AS revenue
#FROM projects, companies, customers
#WHERE projects.company_id = companies.id AND projects.customer_id = customers.id
#GROUP BY company_id;

