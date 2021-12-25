SELECT TOP 1 earnings, COUNT(earnings)
FROM (SELECT months*salary earnings FROM Employee) earn
GROUP BY earnings
ORDER BY earnings DESC