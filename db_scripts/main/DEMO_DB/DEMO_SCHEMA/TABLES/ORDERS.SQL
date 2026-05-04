---version: 0, author: apmsingh
CREATE OR REPLACE TABLE ${MY_DB}.${MY_SCHEMA}.ORDERS(
    order_id NUMBER,
    customer_id NUMBER,
    order_amount NUMBER(10,2),
    order_date DATE DEFAULT CURRENT_DATE
);
---rollback: DROP TABLE IF EXISTS ${MY_DB}.${MY_SCHEMA}.ORDERS;
---verify: SELECT * FROM ${MY_DB}.${MY_SCHEMA}.ORDERS LIMIT 1;
