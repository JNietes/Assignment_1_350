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

/* Problem 6 */
/* Author: Kent Palabon */

