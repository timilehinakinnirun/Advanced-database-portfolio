# SwiftCart Relational Schema

## Customer

Customer(
    customer_id PK,
    first_name,
    last_name,
    email,
    phone,
    address,
    created_at
)

## Category

Category(
    category_id PK,
    category_name,
    description
)

## Product

Product(
    product_id PK,
    category_id FK,
    product_name,
    description,
    price,
    created_at
)

## Order

Order(
    order_id PK,
    customer_id FK,
    order_date,
    order_status,
    total_amount
)

## OrderItem

OrderItem(
    order_item_id PK,
    order_id FK,
    product_id FK,
    quantity,
    unit_price
)

## Payment

Payment(
    payment_id PK,
    order_id FK,
    payment_method,
    payment_amount,
    payment_status,
    payment_date
)

## Inventory

Inventory(
    inventory_id PK,
    product_id FK,
    quantity_available,
    reorder_level,
    last_updated
)

## Delivery

Delivery(
    delivery_id PK,
    order_id FK,
    delivery_address,
    delivery_status,
    dispatch_date,
    delivery_date
)

## Foreign Key Relationships

- Product.category_id references Category.category_id
- Order.customer_id references Customer.customer_id
- OrderItem.order_id references Order.order_id
- OrderItem.product_id references Product.product_id
- Payment.order_id references Order.order_id
- Inventory.product_id references Product.product_id
- Delivery.order_id references Order.order_id
