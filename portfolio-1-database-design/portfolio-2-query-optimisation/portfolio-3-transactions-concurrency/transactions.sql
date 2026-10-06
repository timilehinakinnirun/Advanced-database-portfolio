USE swiftcart_db;

-- COMMIT example
START TRANSACTION;

UPDATE Inventory
SET quantity_available = quantity_available - 1
WHERE product_id = 4;

COMMIT;


-- ROLLBACK example
START TRANSACTION;

UPDATE Inventory
SET quantity_available = quantity_available - 5
WHERE product_id = 4;

ROLLBACK;


-- CONCURRENCY / LOCKING example
-- Session 1
START TRANSACTION;

UPDATE Inventory
SET quantity_available = quantity_available - 1
WHERE product_id = 4;

-- COMMIT is intentionally delayed here
-- so Session 2 attempts to update the same row


-- Session 2
START TRANSACTION;

UPDATE Inventory
SET quantity_available = quantity_available - 2
WHERE product_id = 4;

-- Session 2 waits because Session 1 holds a row lock.
-- In testing, this produced:
-- ERROR 1205 (HY000): Lock wait timeout exceeded


-- Release Session 1 lock
COMMIT;