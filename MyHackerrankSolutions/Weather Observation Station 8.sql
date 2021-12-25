SELECT DISTINCT s.CITY
FROM STATION s
WHERE LEFT(s.CITY,1) IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
AND RIGHT(s.CITY, 1) IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')