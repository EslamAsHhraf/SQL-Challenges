/* 
Working platform:- Oracle
*/

select CASE 
           WHEN GRADES.GRADE >= 8 THEN STUDENTS.NAME
           ELSE NULL
            END
            ,Grades.grade, Students.marks
from Students
left join  Grades
on (Students.marks between Grades.Min_Mark AND Grades.Max_Mark) 
order by grade desc,Students.Name;
