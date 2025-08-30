# Warehouse-Orders-Analysis

This project analyzes warehouse orders and warehouse data using **Google BigQuery**.  
It demonstrates SQL skills including **JOINs, GROUP BY, filtering, and aggregation** to extract meaningful insights about warehouse performance and order distribution.

---

## 📊 Dataset
The dataset contains two main tables:
- **orders**: Order information (`order_id`, `customer_id`, `warehouse_id`, `order_date`, `shipper_date`)
- **warehouse**: Warehouse details (`warehouse_id`, `warehouse_alias`, `maximum_capacity`, `employee_total`, `state`)

---

## 🔍 SQL Queries

1. **Preview Data**  
   Display the first 1000 rows from each table.

2. **Orders with Warehouse Details**  
   Join `orders` with `warehouse` to display each order along with warehouse name, capacity, employees, and state.

3. **Total Orders per Warehouse**  
   Count how many orders were processed by each warehouse.

4. **Total Orders per State**  
   Count orders grouped by warehouse state to see regional distribution.

5. **Average Shipping Time per Warehouse**  
   Calculate the average number of days between order date and shipper date for each warehouse.

6. **Warehouse Capacity vs Employees vs Orders**  
   Compare total orders with employee count and maximum warehouse capacity.

---

## 🚀 Key Insights
- Order distribution across warehouses and states.  
- Shipping performance and average fulfillment time per warehouse.  
- Relationship between warehouse capacity, workforce, and workload.  
- Identify potential bottlenecks or underutilized warehouses.

---

## 📂 Files
- `warehouse_orders_analysis.sql` → Contains all SQL queries used in the analysis.

---

## 🛠️ Tools
- Google BigQuery  
- SQL  

---

✦ Created by **Hady Ahmed Slman**
