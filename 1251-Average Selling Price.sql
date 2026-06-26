SELECT PRO.product_id, 
ROUND(IFNULL(SUM(PRO.price * UNI.units)/SUM(UNI.units),0),2) AS average_price
FROM Prices PRO LEFT JOIN UnitsSold UNI
ON PRO.product_id = UNI.product_id AND
UNI.purchase_date BETWEEN PRO.start_date AND PRO.end_date
GROUP BY PRO.product_id;