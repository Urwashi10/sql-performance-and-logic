-- Trigger after deleting employee

CREATE TRIGGER trg_after_delete_employee
ON employees
AFTER DELETE
AS
BEGIN
    SELECT * FROM DELETED;
END;
