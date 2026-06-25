SELECT SIG.user_id,
ROUND(IFNULL(SUM(CON.action = "confirmed")/COUNT(CON.action),0),2) AS confirmation_rate
FROM Signups SIG LEFT JOIN Confirmations CON ON SIG.user_id = CON.user_id
GROUP BY SIG.user_id;