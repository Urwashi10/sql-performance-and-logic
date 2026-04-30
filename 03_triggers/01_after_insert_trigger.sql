-- Trigger after inserting employee

CREATE TRIGGER trg_after_insert_employee
ON employees
AFTER INSERT
AS
BEGIN
    SELECT * FROM INSERTED;
END;
