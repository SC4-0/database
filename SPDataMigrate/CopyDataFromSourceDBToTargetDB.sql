-- ================================================
-- Create StoreProcedure for CopyDataFromSourceDBToTargetDB
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Nang
-- Create date: 15 Sep 22092023
-- Description:	Copy Data From Source Memory DB To Target Disk DB
-- =============================================
CREATE PROCEDURE CopyDataFromSourceDBToTargetDB
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	---1. customer_site_groups Table---
	Create Table #TempTable1 (customer_site_group_id int, customer_site_group_name nvarchar(50),latitude decimal(12,9),longitude decimal(12,9))
	INSERT INTO #TempTable1
	SELECT s.customer_site_group_id,s.customer_site_group_name,s.latitude,s.longitude
	FROM order_planning.dbo.customer_site_groups s

	PRINT N'1. Customer_site_groups Source Table copied into TempTable.';
	SET Identity_Insert order_planning_Target.dbo.customer_site_groups ON

	INSERT INTO order_planning_Target.dbo.customer_site_groups (customer_site_group_id,customer_site_group_name,latitude,longitude)
	SELECT s.customer_site_group_id,s.customer_site_group_name,s.latitude,s.longitude
	FROM #TempTable1 s
	LEFT JOIN order_planning_Target.dbo.customer_site_groups t
	ON t.customer_site_group_id = s.customer_site_group_id
	WHERE
	t.customer_site_group_id IS NULL

	set Identity_Insert order_planning_Target.dbo.customer_site_groups OFF
	PRINT N'1. Customer_site_groups Table copied into Target DB Table.';

	DROP TABLE #TempTable1;
	PRINT N'1. DELETE Customer_site_groups TempTable.';
	
	---2. Customers Table---
	Create Table #TempTable2 (customer_id int, customer_name nvarchar(50),customer_site_group_id int)
	INSERT INTO #TempTable2
	SELECT s.customer_id,s.customer_name,s.customer_site_group_id
	FROM order_planning.dbo.customers s

	PRINT N'2. Customer Source Table copied into TempTable.';
	SET Identity_Insert order_planning_Target.dbo.customers ON

	INSERT INTO order_planning_Target.dbo.customers (customer_id,customer_name,customer_site_group_id)
	SELECT s.customer_id,s.customer_name,s.customer_site_group_id
	FROM #TempTable2 s
	LEFT JOIN order_planning_Target.dbo.customers t
	ON t.customer_id = s.customer_id
	WHERE
	t.customer_id IS NULL

	set Identity_Insert order_planning_Target.dbo.customers OFF
	PRINT N'2. Customer Table copied into Target DB Table.';

	DROP TABLE #TempTable2;
	PRINT N'2. DELETE customers TempTable.';

	---3. Factories Table---
	Create Table #TempTable3 (factory_id int, factory_name NVARCHAR(50),latitude DECIMAL(12,9),longitude DECIMAL(12,9),production_hours int)
	INSERT INTO #TempTable3
	SELECT s.factory_id,s.factory_name,s.latitude,s.longitude,s.production_hours
	FROM order_planning.dbo.factories s

	PRINT N'3. Factories Source Table copied into TempTable.';
	SET Identity_Insert order_planning_Target.dbo.factories ON

	INSERT INTO order_planning_Target.dbo.factories (factory_id,factory_name,latitude,longitude,production_hours)
	SELECT s.factory_id,s.factory_name,s.latitude,s.longitude,s.production_hours
	FROM #TempTable3 s
	LEFT JOIN order_planning_Target.dbo.factories t
	ON t.factory_id = s.factory_id
	WHERE
	t.factory_id IS NULL

	set Identity_Insert order_planning_Target.dbo.factories OFF
	PRINT N'3. Factories Table copied into Target DB Table.';

	DROP TABLE #TempTable3;
	PRINT N'3. DELETE Factories TempTable.';

	---4. Distances Table---
	Create Table #TempTable4 (factory_id int, customer_site_group_id int,distance int)
	INSERT INTO #TempTable4
	SELECT s.factory_id,s.customer_site_group_id,s.distance
	FROM order_planning.dbo.distances s

	PRINT N'4. Distances Source Table copied into TempTable.';

	INSERT INTO order_planning_Target.dbo.distances (factory_id,customer_site_group_id,distance)
	SELECT s.factory_id,s.customer_site_group_id,s.distance
	FROM #TempTable4 s
	LEFT JOIN order_planning_Target.dbo.distances t
	ON t.factory_id = s.factory_id AND t.customer_site_group_id = s.customer_site_group_id
	WHERE
	t.factory_id IS NULL
	AND
	t.customer_site_group_id IS NULL

	PRINT N'4. Distances Table copied into Target DB Table.';

	DROP TABLE #TempTable4;
	PRINT N'4. DELETE Distances TempTable.';

	---5. Factory_metrics Table---
	Create Table #TempTable5 (factory_id int, record_date DATE, daily_order_fulfilment_time DECIMAL(6,3), unutilized_capacity DECIMAL(6,3))
	INSERT INTO #TempTable5
	SELECT s.factory_id, s.record_date, s.daily_order_fulfilment_time, s.unutilized_capacity
	FROM order_planning.dbo.factory_metrics s

	PRINT N'5. factory_metrics Source Table copied into TempTable.';	

--Create Table #TempTableRecord (factory_id int, record_date DATE)
--INSERT INTO #TempTableRecord (factory_id,record_date)
--SELECT s.factory_id, MAX(s.record_date)
--FROM #TempTable s
--GROUP BY s.factory_id
--GO

	INSERT INTO order_planning_Target.dbo.factory_metrics (factory_id,record_date,daily_order_fulfilment_time,unutilized_capacity)
	SELECT s.factory_id, s.record_date, s.daily_order_fulfilment_time, s.unutilized_capacity
	FROM #TempTable5 s
	LEFT JOIN order_planning_Target.dbo.factory_metrics t
	ON t.factory_id = s.factory_id AND t.record_date = s.record_date
	WHERE
	t.factory_id IS NULL
	AND
	t.record_date IS NULL

	PRINT N'5. factory_metrics Table copied into Target DB Table.';

	DROP TABLE #TempTable5;
	PRINT N'5. DELETE factory_metrics TempTable.';

	---6. Products Table---
	Create Table #TempTable6 (product_id int, product_name NVARCHAR(50), product_desc NVARCHAR(200), price DECIMAL(6,2))
	INSERT INTO #TempTable6
	SELECT s.product_id, s.product_name, s.product_desc, s.price
	FROM order_planning.dbo.products s

	PRINT N'6. Products Source Table copied into TempTable.';	
	SET Identity_Insert order_planning_Target.dbo.products ON

	INSERT INTO order_planning_Target.dbo.products (product_id, product_name, product_desc, price)
	SELECT s.product_id, s.product_name, s.product_desc, s.price
	FROM #TempTable6 s
	LEFT JOIN order_planning_Target.dbo.products t
	ON t.product_id = s.product_id
	WHERE
	t.product_id IS NULL

	SET Identity_Insert order_planning_Target.dbo.products OFF
	PRINT N'6. Products Table copied into Target DB Table.';

	DROP TABLE #TempTable6;
	PRINT N'6. DELETE Products TempTable.';

	---7. Factory_production Table---
	Create Table #TempTable7 (factory_id int, product_id int, production_rate DECIMAL(5,3))
	INSERT INTO #TempTable7
	SELECT s.factory_id, s.product_id, s.production_rate
	FROM order_planning.dbo.factory_production s

	PRINT N'7. factory_production Source Table copied into TempTable.';	

	INSERT INTO order_planning_Target.dbo.factory_production (factory_id, product_id, production_rate)
	SELECT s.factory_id, s.product_id, s.production_rate
	FROM #TempTable7 s
	LEFT JOIN order_planning_Target.dbo.factory_production t
	ON t.factory_id = s.factory_id AND t.product_id = s.product_id
	WHERE
	t.factory_id IS NULL
	AND
	t.product_id IS NULL

	PRINT N'7. factory_production Table copied into Target DB Table.';

	DROP TABLE #TempTable7;
	PRINT N'7. DELETE factory_production TempTable.';

	---8. Orders Table---	
	Create Table #TempTable8 (order_id int, customer_id int, order_date DATETIME, manufacturing_date DATETIME, shipment_date DATETIME, delivery_date DATETIME, assigned_factory_id int )
	INSERT INTO #TempTable8
	SELECT s.order_id, s.customer_id, s.order_date, s.manufacturing_date, s.shipment_date, s.delivery_date, s.assigned_factory_id
	FROM order_planning.dbo.orders s

	SET Identity_Insert order_planning_Target.dbo.orders ON
	PRINT N'8. orders Source Table copied into TempTable.';	

	INSERT INTO order_planning_Target.dbo.orders (order_id, customer_id, order_date, manufacturing_date, shipment_date, delivery_date, assigned_factory_id)
	SELECT s.order_id, s.customer_id, s.order_date, s.manufacturing_date, s.shipment_date, s.delivery_date, s.assigned_factory_id
	FROM #TempTable8 s
	LEFT JOIN order_planning_Target.dbo.orders t
	ON t.order_id = s.order_id AND t.customer_id = s.customer_id AND t.order_date = s.order_date
	WHERE
	t.order_id IS NULL
	AND
	t.customer_id IS NULL
	AND
	t.order_date IS NULL

	SET Identity_Insert order_planning_Target.dbo.orders OFF
	PRINT N'8. Orders Table copied into Target DB Table.';

	DROP TABLE #TempTable8;
	PRINT N'8. DELETE Orders TempTable.';

	---9. Order_items Table---
	Create Table #TempTable9 (order_id int, item_id int, quantity int)
	INSERT INTO #TempTable9
	SELECT s.order_id, s.item_id, s.quantity
	FROM order_planning.dbo.order_items s

	PRINT N'9. order_items Source Table copied into TempTable.';

	INSERT INTO order_planning_Target.dbo.order_items (order_id, item_id, quantity)
	SELECT s.order_id, s.item_id, s.quantity
	FROM #TempTable9 s
	LEFT JOIN order_planning_Target.dbo.order_items t
	ON t.order_id = s.order_id AND t.item_id = s.item_id
	WHERE
	t.order_id IS NULL
	AND
	t.item_id IS NULL

	PRINT N'9. order_items Table copied into Target DB Table.';

	DROP TABLE #TempTable9;
	PRINT N'9. DELETE order_items TempTable.';

	---10. Plans Table---
	Create Table #TempTable10 (plan_id int, planned_fulfilment_time decimal(6, 3), planned_unutilized_capacity decimal(6, 3),plan_generation_date datetime,plan_category int,unutilized_capacity_preference decimal(8, 1),selected bit,autoselected bit,selection_date datetime)
	INSERT INTO #TempTable10
	SELECT s.plan_id, s.planned_fulfilment_time, s.planned_unutilized_capacity,s.plan_generation_date,s.plan_category,s.unutilized_capacity_preference,s.selected,s.autoselected,s.selection_date
	FROM order_planning.dbo.plans s

	PRINT N'10. Plans Source Table copied into TempTable.';	
	SET Identity_Insert order_planning_Target.dbo.plans ON

	INSERT INTO order_planning_Target.dbo.plans (plan_id,planned_fulfilment_time,planned_unutilized_capacity,plan_generation_date,plan_category,unutilized_capacity_preference,selected,autoselected,selection_date)
	SELECT s.plan_id, s.planned_fulfilment_time, s.planned_unutilized_capacity,s.plan_generation_date,s.plan_category,s.unutilized_capacity_preference,s.selected,s.autoselected,s.selection_date
	FROM #TempTable10 s
	LEFT JOIN order_planning_Target.dbo.plans t
	ON t.plan_id = s.plan_id AND t.plan_generation_date = s.plan_generation_date
	WHERE
	t.plan_id IS NULL
	AND
	t.plan_generation_date IS NULL

	set Identity_Insert order_planning_Target.dbo.plans OFF
	PRINT N'10. plans Table copied into Target DB Table.';

	DROP TABLE #TempTable10;
	PRINT N'10. DELETE plans TempTable.';

	---11. Planned_allocations Table---
	Create Table #TempTable11 (allocation_id int, plan_id int, factory_id int,customer_site_group_id int,min_allocation_ratio decimal(10, 9),max_allocation_ratio decimal(10, 9))
	INSERT INTO #TempTable11
	SELECT s.allocation_id,s.plan_id,s.factory_id,s.customer_site_group_id,s.min_allocation_ratio,s.max_allocation_ratio
	FROM order_planning.dbo.planned_allocations s

	PRINT N'11. planned_allocations Source Table copied into TempTable.';	
	SET Identity_Insert order_planning_Target.dbo.planned_allocations ON

	INSERT INTO order_planning_Target.dbo.planned_allocations (allocation_id,plan_id,factory_id,customer_site_group_id,min_allocation_ratio,max_allocation_ratio)
	SELECT s.allocation_id,s.plan_id,s.factory_id,s.customer_site_group_id,s.min_allocation_ratio,s.max_allocation_ratio
	FROM #TempTable11 s
	LEFT JOIN order_planning_Target.dbo.planned_allocations t
	ON t.allocation_id = s.allocation_id
	WHERE
	t.allocation_id IS NULL	

	set Identity_Insert order_planning_Target.dbo.planned_allocations OFF
	PRINT N'11. planned_allocations Table copied into Target DB Table.';

	DROP TABLE #TempTable11;
	PRINT N'11. DELETE Planned_allocations TempTable.';
	
	---12. Planned_factory_targets Table---
	Create Table #TempTable12 (factory_id int, plan_id int, planned_fulfilment_time decimal(6, 3),planned_unutilized_capacity decimal(6, 3),planned_date date,min_prod_hours int)
	INSERT INTO #TempTable12
	SELECT s.factory_id,s.plan_id,s.planned_fulfilment_time,s.planned_unutilized_capacity,s.planned_date,s.min_prod_hours
	FROM order_planning.dbo.planned_factory_targets s

	PRINT N'12. planned_factory_targets Source Table copied into TempTable.';	

	INSERT INTO order_planning_Target.dbo.planned_factory_targets (factory_id, plan_id,planned_fulfilment_time,planned_unutilized_capacity,planned_date,min_prod_hours)
	SELECT  s.factory_id,s.plan_id,s.planned_fulfilment_time,s.planned_unutilized_capacity,s.planned_date,s.min_prod_hours
	FROM #TempTable12 s
	LEFT JOIN order_planning_Target.dbo.planned_factory_targets t
	ON t.factory_id = s.factory_id AND t.plan_id = s.plan_id
	WHERE
	t.factory_id IS NULL
	AND
	t.plan_id IS NULL
	
	PRINT N'12. planned_factory_targets Table copied into Target DB Table.';

	DROP TABLE #TempTable12;
	PRINT N'DELETE planned_factory_targets TempTable.';

END
GO

