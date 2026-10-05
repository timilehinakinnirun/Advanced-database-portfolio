USE swiftcart_db;

-- Query 1: View all customers
SELECT *
FROM Customer;

-- Query 2: View products ordered by price
SELECT product_name, price
FROM Product
ORDER BY price DESC;

-- Query 3: View customer orders
SELECT
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_status,
    o.total_amount
FROM Customer c
JOIN `Order` o
    ON c.customer_id = o.customer_id;

-- Query 4: View order item details
SELECT
    p.product_name,
    oi.quantity,
    oi.unit_price,
    (oi.quantity * oi.unit_price) AS line_total
FROM OrderItem oi
JOIN Product p
    ON oi.product_id = p.product_id;