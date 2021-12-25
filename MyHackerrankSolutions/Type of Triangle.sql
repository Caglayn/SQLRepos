BEGIN
    SELECT
    CASE
        WHEN t.A=t.B AND t.B=t.C THEN 'Equilateral'
        WHEN t.A>=(t.B+t.C) OR t.B>=(t.A+t.C) OR t.C>=(t.B+t.A) THEN 'Not A Triangle'
        WHEN t.A=t.B OR t.B=t.C OR t.A=t.C THEN 'Isosceles'
        WHEN t.A!=t.B AND t.B!=t.C AND t.A!=t.C THEN 'Scalene'
    END

    FROM TRIANGLES t
END;