USE swiftcart_db;

-- Execution plan before optimisation
EXPLAIN
SELECT *
FROM `Order`
WHERE customer_id = 1;

-- Create index on customer_id
CREATE INDEX idx_order_customer
ON `Order`(customer_id);

-- Execution plan after optimisation
EXPLAIN
SELECT *
FROM `Order`
WHERE customer_id = 1;