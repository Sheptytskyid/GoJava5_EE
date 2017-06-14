SELECT
  p.name,
  sum(d.salary) AS cost
FROM projects p, developers d
WHERE p.company_id = d.company_id
GROUP BY d.company_id
ORDER BY cost DESC
LIMIT 1;