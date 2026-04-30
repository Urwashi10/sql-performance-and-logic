CREATE PROCEDURE get_employee_by_id
    @emp_id INT
AS
BEGIN
    SELECT id, name, salary, department_id
    FROM employees
    WHERE id = @emp_id;
END;

EXEC get_employee_by_id 1;
