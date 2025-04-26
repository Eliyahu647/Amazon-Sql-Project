/*
Script to drop and recreate all necessary tables for an e-commerce database,
including categories, customers, sellers, products, orders, order items, payments,
 shipping, and inventory, with relevant foreign key constraints.
*/


-- Category table
IF OBJECT_ID('Category', 'U') IS NOT NULL
    DROP TABLE Category
GO
CREATE TABLE Category (
    category_id INT PRIMARY KEY NOT NULL,
    category_name VARCHAR(50)
);

-- Customers table
IF OBJECT_ID('Customers', 'U') IS NOT NULL
    DROP TABLE Customers
GO
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    state VARCHAR(50)
);

-- Sellers table
IF OBJECT_ID('Sellers', 'U') IS NOT NULL
    DROP TABLE Sellers
GO
CREATE TABLE Sellers (
    seller_id INT PRIMARY KEY NOT NULL,
    seller_name VARCHAR(50),
    origin VARCHAR(20)
);

-- Products table
IF OBJECT_ID('Products', 'U') IS NOT NULL
    DROP TABLE Products
GO
CREATE TABLE Products (
    product_id INT PRIMARY KEY NOT NULL,
    product_name VARCHAR(100),
    price FLOAT,
    cogs FLOAT,
    category_id INT,
    CONSTRAINT product_fk_category
        FOREIGN KEY (category_id)
        REFERENCES Category(category_id)
);

-- Orders table
IF OBJECT_ID('Orders', 'U') IS NOT NULL
    DROP TABLE Orders
GO
CREATE TABLE Orders (
    order_id INT PRIMARY KEY NOT NULL,
    order_date DATE,
    customer_id INT,
    seller_id INT,
    order_status VARCHAR(30),
    CONSTRAINT orders_fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),
    CONSTRAINT orders_fk_seller
        FOREIGN KEY (seller_id)
        REFERENCES Sellers(seller_id)
);

-- Order_items table
IF OBJECT_ID('Order_items', 'U') IS NOT NULL
    DROP TABLE Order_items
GO
CREATE TABLE Order_items (
    order_items_id INT PRIMARY KEY NOT NULL,
    order_id INT,
    product_id INT,
    quantity INT,
    price_per_unit FLOAT,
    CONSTRAINT items_fk_orders
        FOREIGN KEY (order_id)
        REFERENCES Orders(order_id),
    CONSTRAINT items_fk_product
        FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);

-- Payments table
IF OBJECT_ID('Payments', 'U') IS NOT NULL
    DROP TABLE Payments
GO
CREATE TABLE Payments (
    payments_id INT PRIMARY KEY NOT NULL,
    order_id INT,
    payments_date DATE,
    payment_status VARCHAR(50),
    CONSTRAINT fk_orders_payment
        FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
);

-- Shipping table
IF OBJECT_ID('Shipping', 'U') IS NOT NULL
    DROP TABLE Shipping
GO
CREATE TABLE Shipping (
    shipping_id INT PRIMARY KEY NOT NULL,
    order_id INT,
    shipping_date DATE,
    return_date DATE,
    shipping_providers VARCHAR(50),
    delivery_status VARCHAR(50),
    CONSTRAINT fk_orders_shipping
        FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
);

-- Inventory table
IF OBJECT_ID('Inventory', 'U') IS NOT NULL
    DROP TABLE Inventory
GO
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY NOT NULL,
    product_id INT NOT NULL,
    stock_remaining INT,
    ware_hourse_id INT,
    restock_date DATE,
    CONSTRAINT fk_product_inventory
        FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);
