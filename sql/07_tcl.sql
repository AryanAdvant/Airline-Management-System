-- TCL: Transaction Control Language
-- Run interactively after loading sample data.
-- DML changes are shown as examples; inspect before COMMIT.

UPDATE Payment_Info
SET pay_amount = 4600
WHERE pay_id = 301;

-- Inspect the uncommitted change:
SELECT * FROM Payment_Info WHERE pay_id = 301;

-- Choose ONE:
-- COMMIT;   -- permanently saves the update
-- ROLLBACK; -- cancels the update since the last commit
ROLLBACK;

-- Verify rollback:
SELECT * FROM Payment_Info WHERE pay_id = 301;
