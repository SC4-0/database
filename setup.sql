IF EXISTS(SELECT name FROM sys.databases WHERE name = 'order_planning')
    DROP DATABASE order_planning;
GO

CREATE DATABASE order_planning;
GO
USE order_planning;
GO
    
ALTER DATABASE order_planning ADD FILEGROUP order_planning_mod CONTAINS MEMORY_OPTIMIZED_DATA;
GO
ALTER DATABASE order_planning ADD FILE (name='order_planning_mod1', filename='/usr/data/order_planning_mod1') TO FILEGROUP order_planning_mod;
PRINT N'In memory database created.'
GO

BEGIN
    CREATE TABLE customers
    (
        customer_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        customer_name NVARCHAR(50),
        customer_site_group_id INT
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Customers table created.';
GO

BEGIN
    CREATE TABLE orders
    (
        order_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        customer_id INT,
        order_date DATE,
        manufacturing_date DATE,
        shipment_date DATE,
        delivery_date DATE,
        assigned_factory_id INT
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Orders table created.';
GO

BEGIN
    CREATE TABLE order_items
    (
        order_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        item_id INT,
        quantity INT
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Order items table created.';
GO


BEGIN
    CREATE TABLE products
    (
        product_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        product_name NVARCHAR(50),
        product_desc NVARCHAR(200),
        price DECIMAL(6,2)
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Products table created.';
GO

BEGIN
    CREATE TABLE customer_site_groups
    (
        customer_site_group_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        cusotmer_site_group_name NVARCHAR(50),
        latitude DECIMAL(8,6),
        longitude DECIMAL(8,6),
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Customer site groups table created.';
GO

BEGIN
    CREATE TABLE distances
    (
        factory_id INT,
        customer_site_group_id INT,
        distance INT,
        CONSTRAINT pk_distances PRIMARY KEY NONCLUSTERED (factory_id, customer_site_group_id)
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Distances table created.';
GO

BEGIN
    CREATE TABLE factories
    (
        factory_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        factory_name NVARCHAR(50),
        latitude DECIMAL(8,6),
        longitude DECIMAL(8,6),
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Factories table created.';
GO

BEGIN
    CREATE TABLE factory_metrics
    (
        factory_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        daily_order_fulfilment_time INT,
        unutilized_capacity iNT,
        max_available_prod_hr DECIMAL(6,3)
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Factory metrics table created.';
GO

BEGIN
    CREATE TABLE factory_production
    (
        factory_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        product_id INT,
        production_rate DECIMAL(5,3)
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Factory production table created.';
GO

BEGIN
    CREATE TABLE planned_allocations
    (
        allocation_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        plan_id INT,
        factory_id INT,
        customer_site_group_id INT,
        allocation_ratio DECIMAL(5,2),
        min_prod_hours INT
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Planned allocations table created.';
GO

BEGIN
    CREATE TABLE plans
    (
        plan_id INT IDENTITY PRIMARY KEY NONCLUSTERED,
        planned_fulfilment_time INT,
        planned_unutilized_capacity INT,
        plan_generation_date DATE,
        selected BIT,
        autoselected BIT,
        selection_date DATE
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Plans table created.';
GO

BEGIN
    CREATE TABLE planned_factory_targets
    (
        factory_id INT,
        plan_id INT,
        planned_fulfilment_time INT,
        planned_unutilized_capacity INT,
        planned_date DATE,
        CONSTRAINT pk_planned_factory_targets PRIMARY KEY NONCLUSTERED (factory_id, plan_id)
    )
    WITH (MEMORY_OPTIMIZED=ON);
END;
PRINT N'Planned factory targets table created.';
GO

/*
update and delete cascades are not supported for in memory tables
use FK for insertion integrity only 
*/
ALTER TABLE customers ADD CONSTRAINT fk_customers_customer_site_groups FOREIGN KEY (customer_site_group_id) REFERENCES customer_site_groups (customer_site_group_id);
ALTER TABLE orders ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers (customer_id);
ALTER TABLE orders ADD CONSTRAINT fk_orders_factories FOREIGN KEY (assigned_factory_id) REFERENCES factories (factory_id);
ALTER TABLE order_items ADD CONSTRAINT fk_order_items_orders FOREIGN KEY (order_id) REFERENCES orders (order_id);
ALTER TABLE order_items ADD CONSTRAINT fk_order_items_products FOREIGN KEY (item_id) REFERENCES products (product_id);
ALTER TABLE distances ADD CONSTRAINT fk_distances_factories FOREIGN KEY (factory_id) REFERENCES factories (factory_id);
ALTER TABLE distances ADD CONSTRAINT fk_distances_customer_site_groups FOREIGN KEY (customer_site_group_id) REFERENCES customer_site_groups (customer_site_group_id);
ALTER TABLE factory_metrics ADD CONSTRAINT fk_factory_metrics_factories FOREIGN KEY (factory_id) REFERENCES factories (factory_id);
ALTER TABLE factory_production ADD CONSTRAINT fk_factory_production_factories FOREIGN KEY (factory_id) REFERENCES factories (factory_id);
ALTER TABLE planned_factory_targets ADD CONSTRAINT fk_planned_factory_targets_factories FOREIGN KEY (factory_id) REFERENCES factories (factory_id);
ALTER TABLE planned_factory_targets ADD CONSTRAINT fk_planned_factory_targets_plans FOREIGN KEY (plan_id) REFERENCES plans (plan_id);
ALTER TABLE planned_allocations ADD CONSTRAINT fk_planned_allocations_plans FOREIGN KEY (plan_id) REFERENCES plans (plan_id);
ALTER TABLE planned_allocations ADD CONSTRAINT fk_planned_allocations_factories FOREIGN KEY (factory_id) REFERENCES factories (factory_id);
ALTER TABLE planned_allocations ADD CONSTRAINT fk_planned_allocations_customer_site_groups FOREIGN KEY (customer_site_group_id) REFERENCES customer_site_groups (customer_site_group_id);