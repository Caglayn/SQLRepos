SELECT u.CONTINENT, FLOOR(AVG(c.POPULATION))
FROM CITY c
INNER JOIN COUNTRY u ON c.COUNTRYCODE = u.CODE
GROUP BY u.CONTINENT