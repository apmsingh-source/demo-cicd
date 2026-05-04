---version: 0, author: admin
CREATE OR REPLACE ROLE ANALYST;
---rollback: DROP ROLE IF EXISTS ANALYST;
---verify: SHOW ROLES LIKE 'ANALYST';
