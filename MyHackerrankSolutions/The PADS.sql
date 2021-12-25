SELECT o.Name + '(' + LEFT(o.Occupation,1) +')'
FROM OCCUPATIONS o
ORDER BY o.Name

SELECT 'There are a total of ' + STR(COUNT(o.Occupation)) + ' ' + LOWER(o.Occupation) + 's.'
FROM OCCUPATIONS o
GROUP BY o.Occupation
ORDER BY COUNT(o.Occupation), o.Occupation ASC