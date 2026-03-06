SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT num,
        LEAD(num,1) OVER (ORDER BY id) AS n1,
        LEAD(num,2) OVER (ORDER BY id) AS n2
    FROM Logs
) t
WHERE num = n1
    AND num = n2;