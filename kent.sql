/* Problem 2 */
/* Author: Kent Palabon */
/* Show how many countries there are in each region (show the region id and the count) */

select region_id, count(*) as country_count
from countries
group by region_id;

/* Problem 3 */
/* Author: Kent Palabon */
/* Show the first and last names of each employee who is a manager (that is whose job title contains the word ‘Manager’) */

select e.first_name, e.last_name
from employees e
join jobs j 
  on e.job_id = j.job_id
where j.job_title like '%Manager%';

/* Problem 5 */
/* Author: Kent Palabon */
/* Show the first and last name of each employee who is paid more than Luis Popp but less than Alexander Hunold */

select e.first_name, e.last_name
from employees e
where salary > (
    select salary from employees e 
  where e.first_name = 'Luis' and e.last_name = 'Popp'
)
and salary < (
    select salary from employees e 
  where e.first_name = 'Alexander' and e.last_name = 'Hunold'
);

/* Problem 6 */
/* Author: Kent Palabon */
/* Show the average salary of the employees working in Germany */

select avg(e.salary) as average_salary
from employees e

join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id

where c.country_name = 'Germany';

