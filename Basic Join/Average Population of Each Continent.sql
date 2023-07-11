select  COUNTRY.Continent, FLOOR(avg(CITY.Population))
from COUNTRY
Inner join  CITY 
on CITY.CountryCode = COUNTRY.Code
group by COUNTRY.Continent
;