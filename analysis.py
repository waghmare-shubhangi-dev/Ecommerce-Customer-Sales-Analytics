import pandas as pd
import numpy as np

# Load raw UCI Online Retail Excel
df = pd.read_csv("cleaned_online_retail.csv")
df["InvoiceDate"] = pd.to_datetime(df["InvoiceDate"])
# Cleaning
df = df.drop_duplicates()
df = df[~df["InvoiceNo"].astype(str).str.startswith("C")]
df = df[(df["Quantity"] > 0) & (df["UnitPrice"] > 0)]
df = df.dropna(subset=["CustomerID", "Description"])

df["Revenue"] = df["Quantity"] * df["UnitPrice"]
df["CustomerID"] = df["CustomerID"].astype(int).astype(str)

print("Clean shape:", df.shape)
print("Revenue:", round(df["Revenue"].sum(), 2))
print("Orders:", df["InvoiceNo"].nunique())
print("Customers:", df["CustomerID"].nunique())

# Monthly revenue
monthly = (df.assign(Month=df["InvoiceDate"].dt.to_period("M").astype(str))
             .groupby("Month", as_index=False)["Revenue"].sum())
monthly.to_csv("monthly_revenue.csv", index=False)

# RFM
snapshot = df["InvoiceDate"].max() + pd.Timedelta(days=1)
rfm = df.groupby("CustomerID").agg(
    Recency=("InvoiceDate", lambda x: (snapshot-x.max()).days),
    Frequency=("InvoiceNo", "nunique"),
    Monetary=("Revenue", "sum")
).reset_index()

rfm["R_score"] = pd.qcut(rfm["Recency"].rank(method="first"), 4, labels=[4,3,2,1]).astype(int)
rfm["F_score"] = pd.qcut(rfm["Frequency"].rank(method="first"), 4, labels=[1,2,3,4]).astype(int)
rfm["M_score"] = pd.qcut(rfm["Monetary"].rank(method="first"), 4, labels=[1,2,3,4]).astype(int)

def segment(row):
    r,f,m = row.R_score,row.F_score,row.M_score
    if r>=4 and f>=4 and m>=4: return "Champions"
    if r>=3 and f>=3: return "Loyal Customers"
    if r>=3 and m>=3: return "Potential Loyalists"
    if r<=2 and f>=3: return "At Risk"
    if r<=2 and f<=2 and m>=3: return "Can't Lose Them"
    if r<=2 and f<=2: return "Hibernating"
    return "Others"

rfm["Segment"] = rfm.apply(segment, axis=1)
rfm.to_csv("customer_rfm_segments.csv", index=False)
