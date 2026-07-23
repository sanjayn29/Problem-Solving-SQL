SELECT user_id,
CONCAT(UPPER(LEFT(name,1)),
LOWER(SUBSTRING(name,2))) AS name FROM Users
ORDER BY User_id;