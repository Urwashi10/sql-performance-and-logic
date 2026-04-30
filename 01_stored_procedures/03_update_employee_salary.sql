CREATE PROCEDURE update_employee_salary
    @emp_id INT,
    @new_salary INT
AS
BEGIN
    -- Validation: 
    IF @new_salary < 0
    BEGIN
        PRINT 'Salary cannot be negative';
        RETURN;
    END;

    UPDATE employees
    SET salary = @new_salary
    WHERE id = @emp_id;

    PRINT 'Salary updated successfully';
END;

-- Example
EXEC update_employee_salary 1, 70000;
