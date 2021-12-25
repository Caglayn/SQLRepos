SELECT DISTINCT s.CITY
FROM STATION s
WHERE (RIGHT(s.CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'))
AND (LEFT(s.CITY, 1) NOT IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'))