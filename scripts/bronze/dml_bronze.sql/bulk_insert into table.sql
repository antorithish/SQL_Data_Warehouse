/*
 this script is used for insert the value in table in bulk
*/

truncate table bronze.crm_cust_info;
go
bulk insert bronze.crm_cust_info
from 'C:\Users\antor\OneDrive\Desktop\data warehouse project\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with(
      firstrow = 2,
      fieldterminator = ',',
      tablock
     );
--======================================================

TRUNCATE TABLE bronze.cust_prod_info;
go
BULK INSERT bronze.cust_prod_info
FROM 'C:\Users\antor\OneDrive\Desktop\data warehouse project\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

--=======================================================
TRUNCATE TABLE bronze.cust_sales_details;
go
BULK INSERT bronze.cust_sales_details
FROM 'C:\Users\antor\OneDrive\Desktop\data warehouse project\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

--======================================================

truncate table bronze.erp_cust_az12;
go
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\antor\OneDrive\Desktop\data warehouse project\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

--=========================================================

TRUNCATE TABLE bronze.erp_loc_a101;
go
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\antor\OneDrive\Desktop\data warehouse project\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);

--========================================================

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
go
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\antor\OneDrive\Desktop\data warehouse project\dbc9660c89a3480fa5eb9bae464d6c07\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
