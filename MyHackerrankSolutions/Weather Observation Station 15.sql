SELECT TOP 1 CAST(LONG_W AS DECIMAL(12,4))
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC