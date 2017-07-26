#Найти самый дорогой проект (исходя из ЗП разработчиков).
SELECT
  projects.name,
  sum(developers.salary)
FROM developers
  LEFT JOIN projects ON developers.project_id = projects.id
GROUP BY developers.project_id;

#Вычислить общую ЗП всех Java разработчиков.
SELECT sum(salary)
FROM developers
  LEFT JOIN developers_skills ON developers.id = developers_skills.developer_id
  LEFT JOIN skills ON developers_skills.skill_id = skills.id
WHERE skills.name LIKE 'java';

#Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
create view crbc as
    SELECT
  sum(cost) as cost,
  companies.name as company,
  customers.name as customer
FROM projects join customers ON projects.customer_id = customers.id
  JOIN companies ON projects.company_id = companies.id
GROUP BY company_id, customer_id;

select
  min(crbc.cost) as cost,
  crbc.company,
  crbc2.customer
from crbc JOIN crbc crbc2 on crbc.cost = crbc2.cost
GROUP BY crbc.company;