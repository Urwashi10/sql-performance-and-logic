-- Audit trigger for updates

CREATE TRIGGER trg_employee_update_audit
ON employees
AFTER UPDATE
AS
BEGIN
    INSERT INTO employee_audit (employee_id, old_salary, new_salary, action_type)
    SELECT 
        d.id,
        d.salary,
        i.salary,
        'UPDATE'
    FROM DELETED d
    JOIN INSERTED i ON d.id = i.id;
END;
