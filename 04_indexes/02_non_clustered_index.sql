-- Create non-clustered index on name

CREATE NONCLUSTERED INDEX idx_employee_name
ON employees(name);
