SELECT DISTINCT N1.num AS ConsecutiveNums
FROM Logs N1 JOIN Logs N2
ON N2.id = N1.id+1
JOIN Logs N3
ON N3.id = N2.id+1
WHERE N1.num = N2.num
AND N2.num = N3.num;