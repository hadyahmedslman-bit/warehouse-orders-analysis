
-- Preview Data (عرض أول 1000 صف من جدول الطلبات)
SELECT *
FROM `aesthetic-forge-466408-t7.warehouse_orders.orders`
LIMIT 1000;

-- Preview Data (عرض أول 1000 صف من جدول المستودعات)
SELECT *
FROM `aesthetic-forge-466408-t7.warehouse_orders.warehouse`
LIMIT 1000;

-- 1. دمج جدول الطلبات مع جدول المستودعات لعرض التفاصيل
SELECT
  o.order_id,
  o.customer_id,
  o.order_date,
  o.shipper_date,
  w.warehouse_alias,
  w.maximum_capacity,
  w.employee_total,
  w.state
FROM `aesthetic-forge-466408-t7.warehouse_orders.orders` o
JOIN `aesthetic-forge-466408-t7.warehouse_orders.warehouse` w
ON o.warehouse_id = w.warehouse_id
ORDER BY o.order_date;

-- 2. عدد الطلبات لكل مستودع
SELECT
  w.warehouse_alias,
  COUNT(o.order_id) AS total_orders
FROM `aesthetic-forge-466408-t7.warehouse_orders.orders` o
JOIN `aesthetic-forge-466408-t7.warehouse_orders.warehouse` w
ON o.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_alias
ORDER BY total_orders DESC;

-- 3. عدد الطلبات لكل ولاية
SELECT
  w.state,
  COUNT(o.order_id) AS total_orders
FROM `aesthetic-forge-466408-t7.warehouse_orders.orders` o
JOIN `aesthetic-forge-466408-t7.warehouse_orders.warehouse` w
ON o.warehouse_id = w.warehouse_id
GROUP BY w.state
ORDER BY total_orders DESC;

-- 4. متوسط أيام الشحن لكل مستودع
SELECT
  w.warehouse_alias,
  AVG(DATE_DIFF(o.shipper_date, o.order_date, DAY)) AS avg_shipping_days
FROM `aesthetic-forge-466408-t7.warehouse_orders.orders` o
JOIN `aesthetic-forge-466408-t7.warehouse_orders.warehouse` w
ON o.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_alias
ORDER BY avg_shipping_days;

-- 5. مقارنة عدد الطلبات بعدد الموظفين وسعة المستودع
SELECT
  w.warehouse_alias,
  COUNT(o.order_id) AS total_orders,
  w.employee_total,
  w.maximum_capacity
FROM `aesthetic-forge-466408-t7.warehouse_orders.orders` o
JOIN `aesthetic-forge-466408-t7.warehouse_orders.warehouse` w
ON o.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_alias, w.employee_total, w.maximum_capacity
ORDER BY total_orders DESC;
