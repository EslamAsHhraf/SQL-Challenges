/* 
Working platform:- Oracle
*/

select Name||'('|| SUBSTR(OCCUPATION, 1,1) || ')'
from OCCUPATIONS
order by Name;


select 'There are a total of ' || count(occupation) ||' ' ||LOWER(occupation)||'s.'
from OCCUPATIONS
group by occupation
order by count(occupation) ,occupation;