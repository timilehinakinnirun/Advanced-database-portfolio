# SwiftCart NoSQL and Advanced Data Model Analysis

## NoSQL Model Used

MongoDB was used to implement a document-based NoSQL model for the SwiftCart E-commerce Platform.

The `swiftcart_nosql` database contains an `Orders` collection.

Each order is stored as a single document containing related customer, product, payment, and delivery information.

## Document Structure

Each order document includes:

- order_id
- customer information
- items array
- total_amount
- payment information
- delivery information

The customer, payment, and delivery data are stored as embedded objects, while ordered products are stored in an array.

## Why a Document Model Is Suitable

A document database is suitable for SwiftCart because an order naturally contains several related pieces of information that can be stored together in one document.

For example, an order can contain:

- customer details
- multiple products
- payment information
- delivery information

This reduces the need for multiple joins when retrieving a complete order.

## Queries Implemented

The MongoDB implementation demonstrated queries such as:

- retrieving an order by customer name
- retrieving all paid orders
- retrieving orders containing a specific product

Example filters included:

```json
{ "customer.name": "Daniel Okafor" }

{ "payment.status": "Paid" }

{ "items.product_name": "Wireless Mouse" }

Comparison with the Relational Model
The MySQL implementation stores customer, order, product, payment, inventory, and delivery data in separate related tables.
The MongoDB implementation stores related order information together in a document.
The relational model provides strong structured relationships and normalization, while the document model provides flexibility and allows related order data to be retrieved together.
Conclusion
MongoDB provides a suitable NoSQL model for SwiftCart order data because it supports nested objects, arrays, and flexible document structures.
The implementation demonstrates how the same SwiftCart case study can be represented using both relational and NoSQL database approaches.
