# SwiftCart Database Normalization

## Introduction

The SwiftCart relational database was designed using normalization principles to reduce data redundancy, improve data integrity, and avoid update, insertion, and deletion anomalies.

The database was normalized up to Third Normal Form (3NF).

## First Normal Form (1NF)

A table is in First Normal Form when:

- Each column contains atomic values.
- There are no repeating groups.
- Each row can be uniquely identified using a primary key.

The SwiftCart database satisfies 1NF because each table contains individual values in each column and every table has a primary key.

For example, customer information is stored in the Customer table using separate fields such as first_name, last_name, email, phone, and address.

Order products are not stored as repeating columns within the Order table. Instead, they are stored separately in the OrderItem table.

## Second Normal Form (2NF)

A table is in Second Normal Form when:

- It is already in 1NF.
- All non-key attributes depend on the entire primary key.

The SwiftCart tables satisfy 2NF because the non-key attributes in each table depend on the table's primary key.

For example, in the Product table, product_name, description, price, and category_id depend on product_id.

In the OrderItem table, quantity and unit_price describe a specific order item identified by order_item_id.

## Third Normal Form (3NF)

A table is in Third Normal Form when:

- It is already in 2NF.
- Non-key attributes do not depend on other non-key attributes.

The SwiftCart database satisfies 3NF because related information has been separated into appropriate tables.

For example:

- Customer details are stored only in the Customer table.
- Category information is stored separately in the Category table.
- Product information is stored in the Product table.
- Inventory information is stored separately in the Inventory table.
- Payment information is stored separately in the Payment table.
- Delivery information is stored separately in the Delivery table.

This reduces duplication and prevents the same information from being stored unnecessarily in multiple locations.

## Example of Normalization in SwiftCart

Instead of storing customer information repeatedly for every order, the Order table stores only customer_id as a foreign key.

Similarly, instead of storing product information directly in every order, the OrderItem table stores product_id as a foreign key.

This allows SwiftCart to maintain customer and product information in one location while still linking that information to orders.

## Benefits of Normalization

Normalizing the SwiftCart database provides several benefits:

- Reduces duplicate data.
- Improves data consistency.
- Simplifies updates.
- Reduces insertion, update, and deletion anomalies.
- Improves database maintainability.
- Supports accurate relationships between tables.

## Conclusion

The SwiftCart database has been normalized to Third Normal Form (3NF). The structure separates major business entities into individual tables and uses primary and foreign keys to maintain relationships between them.
