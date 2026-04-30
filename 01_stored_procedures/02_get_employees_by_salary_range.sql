--Code
CREATE PROCEDURE get_employees_by_salary_range
    @min_salary INT,
    @max_salary INT
AS
BEGIN
    SELECT id, name, salary, department_id
    FROM employees
    WHERE salary BETWEEN @min_salary AND @max_salary;
END;

--execution
EXEC get_employees_by_salary_range 30000, 60000;
