CREATE TEMPORARY TABLE companies_revenues_by_customers
  SELECT
    companies.name AS company,
    customers.name AS customer,
    sum(cost)      AS revenue
  FROM projects
    JOIN companies ON projects.company_id = companies.id
    JOIN customers ON projects.customer_id = customers.id
  GROUP BY company, customer;

SELECT
  crbc.company,
  cust.name,
  min(crbc.revenue) AS revenue
FROM companies_revenues_by_customers crbc
  JOIN projects p ON crbc.revenue = p.cost
  JOIN customers cust ON p.customer_id = cust.id
GROUP BY company;