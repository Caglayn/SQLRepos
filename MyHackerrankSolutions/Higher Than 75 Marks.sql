SELECT s.Name
FROM STUDENTS s
WHERE s.Marks > 75
ORDER BY RIGHT(s.Name, 3) ASC, s.ID ASC