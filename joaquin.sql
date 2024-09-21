
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


/* Problem 10 */
/* Author: Joaquin Nietes */

/* Problem 13 */
/* Author: Joaquin Nietes */