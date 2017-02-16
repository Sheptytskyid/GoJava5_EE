SELECT
  a.name,
  sum(b.salary) AS cost
FROM projects a, developers b
WHERE a.company_id = b.company_id
GROUP BY b.company_id
ORDER BY cost DESC
LIMIT 1;