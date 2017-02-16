#option 1
SELECT avg(salary)
FROM developers, developers_projects, projects
WHERE developers.id = developers_projects.developer_id
      AND developers_projects.project_id IN (SELECT id
                                             FROM projects
                                             HAVING min(cost));

#option 2
SELECT avg(salary)
FROM developers
WHERE id IN (SELECT developer_id
             FROM developers_projects
             WHERE project_id IN (SELECT id
                                  FROM projects
                                  HAVING min(cost)));