CREATE PROCEDURE insert_employee
    @id INT,
    @name VARCHAR(100),
    @salary INT,
    @department_id INT
AS
BEGIN
    -- Check if employee already exists
    IF EXISTS (SELECT 1 FROM employees WHERE id = @id)
    BEGIN
        PRINT 'Employee already exists';
        RETURN;
    END;

    -- Validate salary
    IF @salary < 0
    BEGIN
        PRINT 'Invalid salary';
        RETURN;
    END;

    INSERT INTO employees (id, name, salary, department_id)
    VALUES (@id, @name, @salary, @department_id);

    PRINT 'Employee inserted successfully';
END;

-- Example
EXEC insert_employee 5, 'Rahul', 50000, 2;
