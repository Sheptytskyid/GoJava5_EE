#option 1
SELECT sum(salary)
FROM developers
WHERE id IN (SELECT developer_id
             FROM developers_skills
             WHERE skill_id = (SELECT id
                               FROM skills
                               WHERE skill LIKE 'java'));
#option 2
SELECT
  sum(a.salary),
  b.skill
FROM developers a, skills b, developers_skills c
WHERE b.skill LIKE 'java' AND c.skill_id = b.id AND a.id = c.developer_id;