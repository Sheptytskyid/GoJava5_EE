CREATE TEMPORARY TABLE companies_revenues_by_customers
  SELECT
    company_id  AS company,
    customer_id AS customer,
    sum(cost)   AS revenue
  FROM projects
  GROUP BY company_id, customer_id;

CREATE TEMPORARY TABLE min_companies_clients
  SELECT
    crbc.company,
    p.customer_id,
    min(crbc.revenue) as revenue
  FROM companies_revenues_by_customers crbc LEFT JOIN
    projects p on crbc.revenue = p.cost
  GROUP BY company;

select  companies.name, customers.name, min_companies_clients.revenue
from min_companies_clients
JOIN companies on min_companies_clients.company = companies.id
JOIN customers on min_companies_clients.customer_id = customers.id;
