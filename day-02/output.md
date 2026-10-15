# Day 02 — Expected Output

From `../day-01/orders.csv` (verifies Day 01 SQL):

- **Revenue by month:** 2026-01 = 2910.00, 2026-02 = 4197.50
- **Revenue by product:** Bag = 3880.00, Notebook = 2387.50, Pen = 840.00
- **Average order value:** 592.29
- **AOV split:**
  - No discount (discount = 0): 6 orders, AOV 658.33
  - With discount: 6 orders, AOV 526.25
- **Top 3 customers:** C103 = 2550.00, C101 = 2160.00, C104 = 1260.00
- **Orders per customer:** C101 = 4, C102 = 3, C103 = 3, C104 = 2

## Insight for interviews
Bags drive revenue despite fewer units. No-discount orders have higher AOV — discount did not create bigger baskets here. Always split by a driver (product / discount) before concluding.
