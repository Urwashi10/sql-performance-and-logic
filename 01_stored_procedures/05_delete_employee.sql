-- Delete employee safely

CREATE PROCEDURE delete_employee
    @emp_id INT
AS
BEGIN
    -- Check if employee exists
    IF NOT EXISTS (SELECT 1 FROM employees WHERE id = @emp_id)
    BEGIN
        PRINT 'Employee not found';
        RETURN;
    END;

    DELETE FROM employees
    WHERE id = @emp_id;

    PRINT 'Employee deleted successfully';
END;

-- Example
EXEC delete_employee 5;
