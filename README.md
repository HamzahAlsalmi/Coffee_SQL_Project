# Coffee SQL Project

## Overview
This project is a PostgreSQL portfolio project focused on practicing
relational database design and SQL querying using a coffee shop dataset.

The database models employees, coffee shops, locations, and suppliers.
The project starts with basic queries and gradually moves into more
analytical SQL concepts.

## Database Structure
The database contains the following tables:
- employees
- shops
- locations
- suppliers

Relationships are enforced using primary and foreign keys.

## What This Project Demonstrates
- Table creation with constraints
- Data insertion using SQL
- Filtering and sorting data
- Aggregate functions (COUNT, AVG, SUM)
- GROUP BY and HAVING
- CASE statements
- JOINs across multiple tables
- Subqueries

## Files in This Repository
- `01_schema.sql` – Creates all tables and relationships
- `02_inserts.sql` – Inserts sample data into the tables
- `03_queries.sql` – Example queries used to explore and analyze the data

## Tools Used
- PostgreSQL
- pgAdmin
- SQL

## How to Run
1. Execute `01_schema.sql`
2. Execute `02_inserts.sql`
3. Run queries from `03_queries.sql`
