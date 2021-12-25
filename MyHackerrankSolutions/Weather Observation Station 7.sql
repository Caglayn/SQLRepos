SELECT DISTINCT s.CITY
FROM STATION s
WHERE RIGHT(s.CITY, 1) IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')