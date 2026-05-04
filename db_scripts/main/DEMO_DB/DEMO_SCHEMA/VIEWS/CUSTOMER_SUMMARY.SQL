CREATE OR REPLACE VIEW ${MY_DB}.${MY_SCHEMA}.CUSTOMER_SUMMARY AS
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) as total_orders,
    SUM(o.order_amount) as total_spent
FROM ${MY_DB}.${MY_SCHEMA}.CUSTOMERS c
LEFT JOIN ${MY_DB}.${MY_SCHEMA}.ORDERS o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;
