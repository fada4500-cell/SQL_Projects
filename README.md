🗄️ KxP Store SQL Database Project

📘 Objective

Practice SQL database design and querying by building a sample retail database (KxP_store) with multiple related tables (products, customers, orders, shippers, statuses). The goal is to apply database normalization, relationships, and queries to simulate a real-world store management system.

📊 Key Features & Queries

🔑 Database Design: Implemented primary keys, foreign keys, and composite keys.

📦 Products & Inventory: Track product names, stock levels, and unit prices.

🧑‍🤝‍🧑 Customers: Store customer details, addresses, and loyalty points.

🛒 Orders & Order Items: Capture customer orders with product details and quantities.

🚚 Shippers & Order Status: Monitor shipment details and delivery progress.

📈 Queries Practiced:

Customers by age or address (using WHERE + filters).

Orders that haven’t been shipped (shipped_date IS NULL).

Total order value with SUM + GROUP BY.

Joining multiple tables (JOIN) for order + product insights.

Ranking top customers by points using ORDER BY + OFFSET-FETCH.

⚙️ Tools & Techniques Used

🗄️ SQL Server / SQL Syntax

DDL (Data Definition Language): CREATE TABLE, constraints, keys

DML (Data Manipulation Language): INSERT INTO, updates

Queries: SELECT, JOIN, WHERE, GROUP BY, ORDER BY, aggregations

Constraints: PRIMARY KEY, FOREIGN KEY, IDENTITY, DEFAULT

🧠 Learnings

Improved understanding of relational database design (PK, FK, Composite PK).

Practiced writing SQL queries for real-world use cases.

Learned how to apply filtering, sorting, aggregations, and joins effectively.

Enhanced ability to document and share database projects via GitHub.

🔗 Project Overview

This project demonstrates how to design a retail store database and use SQL to extract meaningful insights.

It can be used to:

Identify top customers and their purchase history.

Analyze product performance and stock availability.

Track unshipped or pending orders.

Build a foundation for future dashboards and reporting tools.

