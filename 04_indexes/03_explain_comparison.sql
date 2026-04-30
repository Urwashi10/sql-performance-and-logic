-- Query before index

EXPLAIN
SELECT * FROM employees WHERE name = 'John';

-- Create index
CREATE NONCLUSTERED INDEX idx_name ON employees(name);

-- Query after index
EXPLAIN
SELECT * FROM employees WHERE name = 'John';
