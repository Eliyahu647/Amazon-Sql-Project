/*
This stored procedure 'load_data' loads data into base tables from CSV files
using BULK INSERT operations. It first deletes existing data from each table,
then loads fresh data from specified file paths for Category, Customers, Sellers,
Products, Orders, Order_items, Payments, Shipping, and Inventory tables.
It also tracks and prints the loading time for each table and the total loading duration.
Error handling is implemented to catch and print any loading errors.
*/


CREATE OR ALTER PROCEDURE load_data AS 
BEGIN
    DECLARE @start_time DATETIME, @end_time DATETIME, @Total_start_time DATETIME, @Total_End_Time DATETIME;

    BEGIN TRY
        SET @Total_start_time = GETDATE();

        PRINT '========================================================';
        PRINT 'Loading Data into Base Tables';
        PRINT '========================================================';

        ------------------------------
        -- category
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'category';
        DELETE FROM Category;

        BULK INSERT Category
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\category.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- customers
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'customers';
        DELETE FROM Customers;

        BULK INSERT Customers
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\customers.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- sellers
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'sellers';
        DELETE FROM Sellers;

        BULK INSERT Sellers
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\sellers.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- products
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'products';
        DELETE FROM Products;

        BULK INSERT Products
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\products.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- orders
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'orders';
        DELETE FROM Orders;

        BULK INSERT Orders
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\orders.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- order_items
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'order_items';
        DELETE FROM Order_items;

        BULK INSERT Order_items
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\order_items.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- payments
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'payments';
        DELETE FROM Payments;

        BULK INSERT Payments
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\payments.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- shipping
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'shipping';
        DELETE FROM Shipping;

        BULK INSERT Shipping
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\shipping.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        ------------------------------
        -- inventory
        ------------------------------
        SET @start_time = GETDATE();
        PRINT 'inventory';
        DELETE FROM Inventory;

        BULK INSERT Inventory
        FROM 'C:\Users\User\Desktop\Amazon Project\Data sets\inventory.csv'
        WITH (
            FIRSTROW = 2,
            FIELDTERMINATOR = ',',
            ROWTERMINATOR = '\n',
            TABLOCK
        );
        SET @end_time = GETDATE();
        PRINT '>> Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';

        PRINT '--------------------------------------------------------';

    END TRY
    BEGIN CATCH
        PRINT '========================================================';
        PRINT 'ERROR OCCURRED DURING LOADING';
        PRINT 'Error Message: ' + ERROR_MESSAGE();
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS NVARCHAR);
        PRINT 'Error State: ' + CAST(ERROR_STATE() AS NVARCHAR);
    END CATCH;

    SET @Total_End_Time = GETDATE();
    PRINT 'Loading Data Completed';
    PRINT '>> Total Duration: ' + CAST(DATEDIFF(SECOND, @Total_start_time, @Total_End_Time) AS NVARCHAR) + ' seconds';
END;


EXECUTE load_data;

