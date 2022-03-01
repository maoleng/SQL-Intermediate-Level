SELECT customer.customer_name, ROUND(invoice.total_price, 6)
FROM customer
LEFT JOIN invoice ON invoice.customer_id = customer.id
WHERE invoice.total_price <= 0.25 * (
    SELECT SUM(invoice.total_price) / (SELECT COUNT(*) FROM invoice )
    FROM customer
    LEFT JOIN invoice ON invoice.customer_id = customer.id
)
ORDER BY invoice.total_price DESC