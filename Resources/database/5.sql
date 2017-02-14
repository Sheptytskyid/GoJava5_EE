SELECT
  companies.name     AS company,
  customers.name     AS smallest_customer,
  min(projects.cost) AS revenue
FROM projects, companies, customers
WHERE projects.company_id = companies.id AND projects.customer_id = customers.id
GROUP BY company_id;