SELECT 
    YEAR(t.purchase_date) AS year,
    SUM(t.price) AS Total,
    SUM(CASE WHEN t.pay_method = 'Credit' THEN t.price ELSE 0 END) AS Credit,
    SUM(CASE WHEN t.pay_method = 'Debit' THEN t.price ELSE 0 END) AS Debit,
    SUM(CASE WHEN t.pay_method = 'Cash' THEN t.price ELSE 0 END) AS Cash,
    SUM(CASE WHEN t.pay_method = 'PayPal' THEN t.price ELSE 0 END) AS PayPal
FROM 
    Ticket t
GROUP BY 
    YEAR(t.purchase_date)
ORDER BY 
    YEAR(t.purchase_date);
