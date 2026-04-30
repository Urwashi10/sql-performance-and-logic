-- Money transfer with rollback safety

CREATE PROCEDURE transfer_money
    @from_account INT,
    @to_account INT,
    @amount INT
AS
BEGIN
    BEGIN TRANSACTION;

    -- Deduct from sender
    UPDATE accounts
    SET balance = balance - @amount
    WHERE id = @from_account;

    -- Check if balance is negative
    IF (SELECT balance FROM accounts WHERE id = @from_account) < 0
    BEGIN
        PRINT 'Insufficient balance';
        ROLLBACK;
        RETURN;
    END;

    -- Add to receiver
    UPDATE accounts
    SET balance = balance + @amount
    WHERE id = @to_account;

    COMMIT;

    PRINT 'Transfer successful';
END;
