-- Trigger after updating employee

CREATE TRIGGER trg_after_update_employee
ON employees
AFTER UPDATE
AS
BEGIN
    SELECT * FROM INSERTED; -- new data
    SELECT * FROM DELETED;  -- old data
END;
