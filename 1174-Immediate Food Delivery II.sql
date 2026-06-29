SELECT ROUND(100*COUNT(IF(order_date = customer_pref_delivery_date,1,NULL))/COUNT(*),2)
AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) in 
(SELECT customer_id, MIN(order_date) FROM Delivery GROUP BY customer_id);