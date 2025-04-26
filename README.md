# E-commerce SQL Analysis Project

## Overview
This project focuses on building and analyzing an e-commerce database using SQL Server.  
It includes database schema creation, data loading from CSV files, exploratory data analysis (EDA), and solving key business problems through SQL queries.

The project is structured into several phases:
- Database and table creation
- Data loading with `BULK INSERT`
- Exploratory data analysis (EDA)
- Business problem-solving through analytical SQL queries
- Stored procedures for automated inventory updates

---

## Project Structure
- **Create Data Base.sql**  
  Script to create the database (if not already existing).

- **Create Table.sql**  
  Script to drop and recreate all necessary tables (`Category`, `Customers`, `Products`, `Orders`, `Payments`, `Shipping`, etc.)  
  Includes primary keys, foreign keys, and relationships between tables.

- **Bulk Insert Procedure.sql**  
  Stored procedure (`load_data`) that loads data into the base tables from local CSV files.  
  Tracks loading time per table and handles errors gracefully.

- **Analysis.sql**  
  Exploratory data analysis and solutions to business problems, including:
  - Top-selling products
  - Revenue analysis by category
  - Average order value (AOV) per customer
  - Monthly sales trends
  - Customer segmentation (new vs. returning)
  - Inventory stock alerts
  - Shipping performance analysis
  - Payment success rates
  - Top performing sellers
  - Product profitability
  - Return rates and most returned products
  - Customer lifetime value (CLTV)
  - And more...

---

## Key Features
- **Data loading automation** with error handling (`load_data` procedure).
- **Dynamic inventory management**:  
  `quantity_update` procedure ensures real-time stock adjustment after sales.
- **Advanced SQL techniques**:  
  CTEs, window functions, ranking, aggregations, and exception handling.
- **Comprehensive business insights** to support decision-making.

---

## Requirements
- SQL Server
- Local access to CSV data files
- Basic familiarity with SQL (for running procedures and scripts)

---

## Usage
1. Create the database and tables using `Create Data Base.sql` and `Create Table.sql`.
2. Load the data into tables by executing `load_data` procedure from `Bulk Insert Procedure.sql`.
3. Run analysis and business queries from `Analysis.sql`.
4. Use `quantity_update` procedure to automatically manage inventory stock when inserting new sales.

---
