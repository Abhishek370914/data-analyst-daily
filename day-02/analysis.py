"""Day 02 — pandas analysis of day-01/orders.csv.
Run: python analysis.py (from day-02 folder, or adjust path)
"""
import pandas as pd

df = pd.read_csv("../day-01/orders.csv", parse_dates=["order_date"])

# Clean: ensure numeric, fill missing discount as 0
df["discount"] = df["discount"].fillna(0)
df["revenue"] = df["quantity"] * df["unit_price"] * (1 - df["discount"])
df["month"] = df["order_date"].dt.strftime("%Y-%m")

print("=== Revenue by month ===")
print(df.groupby("month")["revenue"].sum().round(2))

print("\n=== Revenue by product ===")
print(df.groupby("product")["revenue"].sum().round(2).sort_values(ascending=False))

print("\n=== Average order value ===")
print(round(df["revenue"].mean(), 2))

print("\n=== AOV: discount vs no discount ===")
print(df.groupby(df["discount"] > 0)["revenue"].agg(["count", "mean"]).round(2))

print("\n=== Top 3 customers ===")
print(df.groupby("customer_id")["revenue"].sum().round(2).sort_values(ascending=False).head(3))

print("\n=== Orders per customer ===")
print(df.groupby("customer_id").size().sort_values(ascending=False))
