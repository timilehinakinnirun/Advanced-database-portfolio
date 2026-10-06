USE swiftcart_db;

-- Before optimisation
EXPLAIN
SELECT *
FROM Product
WHERE product_name = 'Wireless Mouse';

-- Create index
CREATE INDEX idx_product_name
ON Product(product_name);

-- After optimisation
EXPLAIN
SELECT *
FROM Product
WHERE product_name = 'Wireless Mouse';