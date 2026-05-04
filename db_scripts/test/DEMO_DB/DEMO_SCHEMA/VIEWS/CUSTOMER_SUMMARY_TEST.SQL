WITH CUSTOMERS AS (
    SELECT * FROM VALUES
        (1, 'John Doe', 'john@example.com'),
        (2, 'Jane Smith', 'jane@example.com')
    AS T(customer_id, customer_name, email)
),
ORDERS AS (
    SELECT * FROM VALUES
        (101, 1, 250.00),
        (102, 1, 100.00),
        (103, 2, 300.00)
    AS T(order_id, customer_id, order_amount)
),
EXPECTED_DATA AS (
    SELECT 
        1 as customer_id, 
        'John Doe' as customer_name, 
        2 as total_orders, 
        350.00 as total_spent
    UNION ALL
    SELECT 
        2 as customer_id, 
        'Jane Smith' as customer_name, 
        1 as total_orders, 
        300.00 as total_spent
)
SELECT * FROM ${MY_DB}.${MY_SCHEMA}.CUSTOMER_SUMMARY;
