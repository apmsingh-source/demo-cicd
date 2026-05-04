---version: 0, author: admin
create or replace role ANALYST;
---rollback: drop role if exists ANALYST;

---version: 1, author: admin
grant role ANALYST to role ACCOUNTADMIN;
---rollback: revoke role ANALYST from role ACCOUNTADMIN;

---version: 2, author: admin
grant create database on account to role ANALYST;
---rollback: revoke create database on account from role ANALYST;