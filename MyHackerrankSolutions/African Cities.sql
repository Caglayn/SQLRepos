SELECT c.NAME
FROM CITY c
LEFT JOIN COUNTRY u ON c.COUNTRYCODE = u.CODE
WHERE u.CONTINENT = 'Africa'