-- SELECT region_name FROM regions r
SELECT r.region_name, COUNT(*) FROM countries c
JOIN regions r
ON r.region_id=c.region_id
 
GROUP BY r.region_id


SELECT r.region_name, c.country_name, COUNT(*) AS 'number of datawarehouses'   FROM countries c
JOIN regions r
ON r.region_id = c.region_id
JOIN locations l
ON c.country_id = l.country_id 
JOIN warehouses w
ON l.location_id = w.location_id
GROUP BY r.region_name,c.country_name


SELECT c.customer_id, c.name, o.order_id FROM  employees e
JOIN orders o
ON e.employee_id = o.salesman_id
JOIN customers c
ON o.customer_id = c.customer_id
order BY c.customer_id DESC, c.name DESC, o.order_id descsolar