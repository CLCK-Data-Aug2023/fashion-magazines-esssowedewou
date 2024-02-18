
-- Add your sql here
SELECT c.customer_name AS Customer_Name, SUM(s.subscription_amount) AS Total_Amount_Due
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
JOIN magazines m ON s.magazine_id = m.magazine_id
WHERE m.magazine_type = 'Fashion' AND s.subscription_status = 'Unpaid'
GROUP BY c.customer_name;