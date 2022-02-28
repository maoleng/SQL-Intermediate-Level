SELECT user_account.id, user_account.first_name, user_account.last_name, customer.id, customer.customer_name, count(*) 
FROM user_account 
LEFT JOIN contact ON contact.user_account_id = user_account.id 
LEFT JOIN customer ON customer.id = contact.customer_id 
GROUP BY user_account.id, customer.id 
HAVING COUNT(*) = (
    SELECT count(*) 
    FROM user_account 
    LEFT JOIN contact ON contact.user_account_id = user_account.id 
    LEFT JOIN customer ON customer.id = contact.customer_id 
    GROUP BY user_account.id, customer.id 
    ORDER BY count(*) DESC
    LIMIT 1 
) 
ORDER BY customer.id DESC