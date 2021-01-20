CREATE TABLE indexTBL(first_name VARCHAR(14),last_name VARCHAR(16),hire_date DATE);
INSERT INTO indexTBL SELECT first_name,last_name,hire_date FROM employees.employees LIMIT 500;
SELECT * FROM indexTBL WHERE first_name = 'mary';
EXPLAIN SELECT * FROM indexTBL WHERE first_name='mary'

CREATE INDEX idx_indexTBL_firstname ON indexTBL(first_name);

SELECT* FROM indexTBL