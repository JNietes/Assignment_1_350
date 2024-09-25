
/* Problem 1 */
/* Author: Joaquin Nietes */
select country_name from countries
where country_name like '%in%' or country_name like '%In%'

/* Problem 4 */
/* Author: Joaquin Nietes */
select e1.first_name, e1.last_name 
from employees e1
join employees e2
	on e1.manager_id = e2.manager_id
where e2.first_name = 'Nancy'
and e2.last_name = 'Greenberg'

/* Problem 7 */
/* Author: Joaquin Nietes */
select department_id, count(*), avg(salary)
from employees
group by department_id having count(*) > 8
order by department_id asc


/* Problem 10 */
/* Author: Joaquin Nietes */
select count(*) from employees
inner join jobs
on employees.department_id = departments.department_id
where department_name = 'IT' and salary > 

(select max(salary) from employees inner join jobs
on employees.job_id = jobs.job_id 
inner join departments
on employees.department_id = departments.department_id
where department_name = 'Shipping' and job_title like '%Manager%')


/* Problem 13 */
/* Author: Joaquin Nietes */
select region_name from regions
where region_name like 'Z%'
intersect
select region_name from regions
where region_id = '4'