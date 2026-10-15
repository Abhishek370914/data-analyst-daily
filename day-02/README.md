# Day 02 — Python / pandas: Clean + Re-analyse Day 01 Data

Goal: do the same analysis as Day 01 in pandas, plus 2 new cuts. Cross-checks Day 01 SQL.

Input: reuse `../day-01/orders.csv` (12 orders).
Run: `python analysis.py` — needs pandas only.

## Tasks
1. Load CSV, parse `order_date` to datetime, add `revenue = quantity * unit_price * (1 - discount)`
2. Revenue by month + by product
3. Average order value: overall, and split by discounted vs no-discount orders
4. Top 3 customers by spend + orders per customer
5. Print a 4-line insight summary

See `analysis.py` for the code and `output.md` for expected numbers.
