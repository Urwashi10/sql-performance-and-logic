-- ACID Properties

-- Atomicity: All or nothing
-- Consistency: Data remains valid
-- Isolation: Transactions don’t interfere
-- Durability: Changes are permanent after commit

-- Example structure

BEGIN TRANSACTION;

-- SQL operations here

COMMIT;

-- or

ROLLBACK;
