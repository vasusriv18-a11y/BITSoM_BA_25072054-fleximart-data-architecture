# Database Schema Documentation – FlexiMart

## 1. Entity–Relationship Description

The FlexiMart database is designed to store customer, product, and sales information in a structured and organized manner. The database consists of four main entities: **customers**, **products**, **orders**, and **order_items**. Each entity represents a real-world business object, and relationships between entities ensure data integrity and consistency across the system.

---

## ENTITY: customers

### Purpose
Stores information about customers who register and place orders on the FlexiMart platform.

### Attributes
- **customer_id**: Unique identifier for each customer (Primary Key, auto-generated)
- **first_name**: Customer’s first name
- **last_name**: Customer’s last name
- **email**: Unique email address used for communication and login
- **phone**: Customer contact number in standardized format
- **city**: City where the customer resides
- **registration_date**: Date when the customer registered on the platform

### Relationships
- One customer can place **many orders**  
  *(One-to-Many relationship with the `orders` table)*

---

## ENTITY: products

### Purpose
Stores details of all products available for sale on the FlexiMart platform.

### Attributes
- **product_id**: Unique identifier for each product (Primary Key, auto-generated)
- **product_name**: Name of the product
- **category**: Product category (e.g., Electronics, Fashion, Groceries)
- **price**: Selling price of the product
- **stock_quantity**: Available inventory quantity

### Relationships
- One product can appear in **many order items**  
  *(One-to-Many relationship with the `order_items` table)*

---

## ENTITY: orders

### Purpose
Stores order-level information for each purchase made by customers.

### Attributes
- **order_id**: Unique identifier for each order (Primary Key, auto-generated)
- **customer_id**: References the customer who placed the order (Foreign Key)
- **order_date**: Date when the order was placed
- **total_amount**: Total monetary value of the order
- **status**: Current status of the order (Pending, Completed, Cancelled)

### Relationships
- Each order belongs to **one customer**
- One order can contain **many order items**

---

## ENTITY: order_items

### Purpose
Stores item-level details for each product included in an order.

### Attributes
- **order_item_id**: Unique identifier for each order item (Primary Key)
- **order_id**: References the associated order (Foreign Key)
- **product_id**: References the purchased product (Foreign Key)
- **quantity**: Number of units purchased
- **unit_price**: Price per unit at the time of purchase
- **subtotal**: Total price for the item (quantity × unit_price)

### Relationships
- Many order items belong to **one order**
- Many order items reference **one product**

---

## 2. Normalization Explanation (Third Normal Form – 3NF)

The FlexiMart database schema follows **Third Normal Form (3NF)**, which ensures minimal data redundancy and high data integrity. In this design, each table represents a single entity, and all non-key attributes depend only on the primary key of their respective tables.

The **customers** table stores only customer-related attributes, and customer details are not repeated in the **orders** table. Similarly, the **products** table stores product information such as price and category, which prevents duplication of product data across multiple orders. The **orders** table contains order-level information and references customers using a foreign key, while **order_items** stores item-level transaction details without duplicating product or customer information.

### Functional Dependencies
- `customer_id → customer attributes`
- `product_id → product attributes`
- `order_id → order attributes`

There are no transitive dependencies, as non-key attributes do not depend on other non-key attributes. This structure avoids:
- **Update anomalies** (product price changes need to be updated only once)
- **Insert anomalies** (new customers can be added without placing an order)
- **Delete anomalies** (deleting an order does not remove customer or product data)

Hence, the database schema satisfies all conditions of **Third Normal Form (3NF)**.

---

## 3. Sample Data Representation

### Sample Records – customers

| customer_id | first_name | last_name | email                   | city      |
|------------|------------|-----------|-------------------------|-----------|
| 1          | Rahul      | Sharma    | rahul.sharma@gmail.com  | Bangalore |
| 2          | Priya      | Patel     | priya.patel@yahoo.com   | Mumbai    |

---

### Sample Records – products

| product_id | product_name         | category     | price    | stock_quantity |
|------------|----------------------|--------------|----------|----------------|
| 1          | Samsung Galaxy S21   | Electronics  | 45999.00 | 150            |
| 2          | Nike Running Shoes   | Fashion      | 3499.00  | 80             |

---

### Sample Records – orders

| order_id | customer_id | order_date | total_amount | status    |
|---------|-------------|------------|--------------|-----------|
| 101     | 1           | 2024-01-15 | 45999.00     | Completed |
| 102     | 2           | 2024-01-16 | 5998.00      | Completed |

---

### Sample Records – order_items

| order_item_id | order_id | product_id | quantity | unit_price | subtotal |
|--------------|----------|------------|----------|------------|----------|
| 1            | 101      | 1          | 1        | 45999.00   | 45999.00 |
| 2            | 102      | 2          | 2        | 2999.00    | 5998.00  |
