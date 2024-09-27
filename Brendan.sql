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
EXCEPT
SELECT e1.first_name, e1.last_name, e1.employee_id
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.manager_id
WHERE e2.first_name = 'Nancy' AND e2.last_name = 'Greenberg'

/* Promblem 12 */
/* Author: Brendan Grenoble*/
SELECT e.employee_id, e.last_name 
FROM employees e
WHERE e.salary > 9000
UNION
SELECT e.employee_id, e.last_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_id = 'US'
