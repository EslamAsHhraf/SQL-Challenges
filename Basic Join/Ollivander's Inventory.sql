/* 
Working platform:- Oracle
*/

SELECT w.id, p.age, w.coins_needed , w.power 
FROM Wands w
INNER JOIN Wands_Property p
ON p.code = w.code
where p.is_evil=0 AND W.COINS_NEEDED = (SELECT MIN(COINS_NEEDED) 
                                          FROM WANDS  X
                                          JOIN WANDS_PROPERTY  Y 
                                          ON (X.CODE = Y.CODE) 
                                          WHERE X.POWER = W.POWER AND Y.AGE = P.AGE) 
ORDER BY w.power DESC, p.age DESC;