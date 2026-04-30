-- Return salary grade

CREATE FUNCTION get_salary_grade (@salary INT)
RETURNS VARCHAR(2)
AS
BEGIN
    RETURN 
    CASE 
        WHEN @salary >= 100000 THEN 'A'
        WHEN @salary >= 70000 THEN 'B'
        WHEN @salary >= 40000 THEN 'C'
        ELSE 'D'
    END;
END;

-- Usage
SELECT dbo.get_salary_grade(75000);
