SELECT YEAR(purchase_date) AS purchase_year, SUM(price) AS total_revenue, pay_method
FROM TICKETS
GROUP BY purchase_year, pay_method
ORDER BY purchase_year,pay_method;
