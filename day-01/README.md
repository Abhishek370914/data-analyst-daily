# Day 01 — SQL Practice: Small Shop Orders

Goal: answer 5 real analyst questions from one table, with clean SQL.

Dataset: `orders.csv` — 12 orders, Jan-Feb 2026.
Columns: order_id, order_date, customer_id, product, quantity, unit_price, discount (0 = no discount)

Revenue per order = quantity * unit_price * (1 - discount)

## Questions
1. Total revenue by month
2. Top 3 customers by total spend
3. Average order value (AOV)
4. How many orders had no discount?
5. Month-over-month revenue growth (Feb vs Jan)

See `queries.sql` for the queries and `answers.md` for results + what they mean.
