/* 
Working platform:- Oracle
*/
select y.N, case WHEN y.p IS NULL  THEN 'Root'
          WHEN y.n in (
                select x.p
              from BST x
              group by (x.p)
              having count(x.p)>=1
        )   THEN 'Inner' 
          ELSE 'Leaf' 
       END 
from BST y 
order by y.N;



