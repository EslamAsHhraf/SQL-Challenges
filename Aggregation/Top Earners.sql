/* 
Working platform:- Oracle
*/

select salary * months,count(*)
FROM Employee 
group by (salary * months)
having (salary * months) =(select max(salary *months ) 
           from Employee
           );