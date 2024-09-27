/* Problem 8 */
/* Author: Brendan Grenoble */

SELECT job_title, min_salary, max_salary
FROM jobs
WHERE job_title LIKE '%Programmer%'
ORDER BY max_salary desc

/* Problem 9 */
/* Author: Brendan Grenoble */
SELECT SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance'

/* Problem 11 */
/* Author: Brendan Grenoble */
SELECT e.first_name, e.last_name, e.employee_id
FROM employees e
MINUS
SELECT e.first_name, e.last_name, e.employee_id
FROM employees e
JOIN managers m ON e.manager_id = m.manager_id
WHERE m.manager_id != 'Nancy Greenburg'

/* Promblem 12 */
/* Author: Brendan Grenoble*/
SELECT e.employee_id, e.last_name 
FROM employees e
WHERE e.salary > 9000
UNION
SELECT e.employee_id, e.last_name
FROM employees e
JOIN countries c ON e.country_id = c.country_id
WHERE c.country_id = 'Germany'
