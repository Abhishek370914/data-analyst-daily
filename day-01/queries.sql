-- Day 01 — SQL practice on orders
-- Revenue per order = quantity * unit_price * (1 - discount)
-- Table assumed: orders(order_id, order_date, customer_id, product, quantity, unit_price, discount)

-- 1. Total revenue by month
SELECT strftime('%Y-%m', order_date) AS month,
       ROUND(SUM(quantity * unit_price * (1 - discount)), 2) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 2. Top 3 customers by total spend
SELECT customer_id,
       ROUND(SUM(quantity * unit_price * (1 - discount)), 2) AS total_spend
FROM orders
GROUP BY customer_id
ORDER BY total_spend DESC
LIMIT 3;

-- 3. Average order value (AOV)
SELECT ROUND(AVG(quantity * unit_price * (1 - discount)), 2) AS avg_order_value
FROM orders;

-- 4. Orders with no discount
SELECT COUNT(*) AS orders_with_no_discount
FROM orders
WHERE discount = 0;

-- 5. Month-over-month growth (Feb vs Jan) — using CTE
WITH monthly AS (
  SELECT strftime('%Y-%m', order_date) AS month,
         SUM(quantity * unit_price * (1 - discount)) AS revenue
  FROM orders
  GROUP BY month
)
SELECT ROUND(( (SELECT revenue FROM monthly WHERE month = '2026-02')
             - (SELECT revenue FROM monthly WHERE month = '2026-01') )
             / (SELECT revenue FROM monthly WHERE month = '2026-01') * 100, 2) AS mom_growth_pct;
