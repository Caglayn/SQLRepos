SELECT TOP 1 s.CITY, LEN(s.CITY) len_
FROM STATION s
ORDER BY len_ ASC, s.CITY ASC

SELECT TOP 1 s.CITY, LEN(s.CITY) len_
FROM STATION s
ORDER BY len_ DESC, s.CITY ASC