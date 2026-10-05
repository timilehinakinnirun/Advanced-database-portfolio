USE swiftcart_db;

INSERT INTO Customer (first_name, last_name, email, phone, address)
VALUES
('Amina', 'Bello', 'amina.bello@email.com', '08031234567', 'Lagos, Nigeria'),
('Daniel', 'Okafor', 'daniel.okafor@email.com', '08039876543', 'Abuja, Nigeria'),
('Grace', 'Adeyemi', 'grace.adeyemi@email.com', '08035551234', 'Ibadan, Nigeria');

INSERT INTO Category (category_name, description)
VALUES
('Laptops', 'Laptop computers and accessories'),
('Accessories', 'Computer accessories and peripherals'),
('Office Equipment', 'Equipment used for office productivity');

INSERT INTO Product (category_id, product_name, description, price)
VALUES
(1, 'Dell Inspiron Laptop', '15-inch laptop for everyday use', 750000.00),
(2, 'Wireless Mouse', 'Bluetooth wireless mouse', 25000.00),
(2, 'Mechanical Keyboard', 'USB mechanical keyboard', 45000.00);

INSERT INTO Inventory (product_id, quantity_available, reorder_level)
VALUES
(4, 10, 3),
(5, 50, 10),
(6, 30, 5);

INSERT INTO `Order` (customer_id, order_status, total_amount)
VALUES
(1, 'Processing', 800000.00);

INSERT INTO OrderItem (order_id, product_id, quantity, unit_price)
VALUES
(1, 4, 1, 750000.00),
(1, 5, 2, 25000.00);

INSERT INTO Payment (
    order_id,
    payment_method,
    payment_amount,
    payment_status
)
VALUES
(1, 'Card', 800000.00, 'Paid');

INSERT INTO Delivery (
    order_id,
    delivery_address,
    delivery_status
)
VALUES
(1, 'Lagos, Nigeria', 'Preparing for Dispatch');