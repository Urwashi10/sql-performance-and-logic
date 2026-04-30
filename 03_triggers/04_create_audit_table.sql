-- Audit table for employee changes

CREATE TABLE employee_audit (
    audit_id INT IDENTITY(1,1),
    employee_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    action_type VARCHAR(10),
    action_time DATETIME DEFAULT GETDATE()
);
