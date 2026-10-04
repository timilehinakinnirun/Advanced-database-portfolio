# SwiftCart Entities and Attributes

## 1. Customer

Stores information about customers who use the SwiftCart platform.

Attributes:

- customer_id
- first_name
- last_name
- email
- phone
- address
- created_at

Primary Key:

- customer_id

---

## 2. Category

Stores the categories used to group products.

Attributes:

- category_id
- category_name
- description

Primary Key:

- category_id

---

## 3. Product

Stores information about products available for sale.

Attributes:

- product_id
- category_id
- product_name
- description
- price
- stock_quantity
- created_at

Primary Key:

- product_id

Foreign Key:

- category_id references Category

---

## 4. Order

Stores information about customer orders.

Attributes:

- order_id
- customer_id
- order_date
- order_status
- total_amount

Primary Key:

- order_id

Foreign Key:

- customer_id references Customer

---

## 5. Order Item

Stores the individual products included in each order.

Attributes:

- order_item_id
- order_id
- product_id
- quantity
- unit_price

Primary Key:

- order_item_id

Foreign Keys:

- order_id references Order
- product_id references Product

---

## 6. Payment

Stores payment information for customer orders.

Attributes:

- payment_id
- order_id
- payment_method
- payment_amount
- payment_status
- payment_date

Primary Key:

- payment_id

Foreign Key:

- order_id references Order

---

## 7. Inventory

Stores information about the available quantity of each product.

Attributes:

- inventory_id
- product_id
- quantity_available
- reorder_level
- last_updated

Primary Key:

- inventory_id

Foreign Key:

- product_id references Product

---

## 8. Delivery

Stores information about order deliveries.

Attributes:

- delivery_id
- order_id
- delivery_address
- delivery_status
- dispatch_date
- delivery_date

Primary Key:

- delivery_id

Foreign Key:

- order_id references Order
