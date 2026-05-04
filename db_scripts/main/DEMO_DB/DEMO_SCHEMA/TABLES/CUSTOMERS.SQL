---version: 0, author: apmsingh
CREATE OR REPLACE TABLE ${MY_DB}.${MY_SCHEMA}.CUSTOMERS(
    customer_id NUMBER,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);
---rollback: DROP TABLE IF EXISTS ${MY_DB}.${MY_SCHEMA}.CUSTOMERS;
---verify: SELECT * FROM ${MY_DB}.${MY_SCHEMA}.CUSTOMERS LIMIT 1;

---version: 1, author: apmsingh
ALTER TABLE ${MY_DB}.${MY_SCHEMA}.CUSTOMERS ADD COLUMN created_date DATE;
---rollback: ALTER TABLE ${MY_DB}.${MY_SCHEMA}.CUSTOMERS DROP COLUMN created_date;
---verify: SELECT created_date FROM ${MY_DB}.${MY_SCHEMA}.CUSTOMERS LIMIT 1;
