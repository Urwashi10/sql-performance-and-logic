-- Add 10% bonus to salary

CREATE FUNCTION add_bonus (@salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @salary * 1.10;
END;

-- Usage
SELECT dbo.add_bonus(50000);
