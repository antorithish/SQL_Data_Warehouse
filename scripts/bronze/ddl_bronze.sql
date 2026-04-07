----this script is used for whether the table was exist 
--syntax
/*
BEGIN 
    if object_id('table name','U') is not null
    BEGIN
        PRINT('Table already exists')
    END
    ELSE
    BEGIN
        CREATE TABLE Table_name
        (
            coulmn1 datatype constraint
            column2 datatype constraint
            .
            .
            .
            .
        );
        PRINT('Table created successfully')
    END
END
*/

---eg:
BEGIN
    IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    BEGIN
        PRINT('Table already exists')
    END
    ELSE
    BEGIN
        CREATE TABLE bronze.erp_loc_a101
        (
            cid NVARCHAR(50),
            cntry NVARCHAR(50)
        );
        PRINT('Table created successfully')
    END
END
====================================================================

BEGIN
    IF OBJECT_ID('bronze.erp_cust_az12','U') IS NOT NULL
    BEGIN
        PRINT('Table already exists')
    END
    ELSE
    BEGIN
         CREATE TABLE bronze.erp_cust_az12
           (
           cid NVARCHAR(50),
           bdate DATE,
           gen NVARCHAR(50)
           );
        PRINT('Table created successfully')
    END
END
===================================================================

BEGIN
    IF OBJECT_ID('bronze.erp_px_cat_g1v2','U') IS NOT NULL
    BEGIN
        PRINT('Table already exists')
    END
    ELSE
    BEGIN
         CREATE TABLE bronze.erp_px_cat_g1v2 (
           id NVARCHAR(50),
           cat NVARCHAR(50),
           subcat NVARCHAR(50),
           maintenance NVARCHAR(50)
           );
        PRINT('Table created successfully')
    END
END
===============================================================
