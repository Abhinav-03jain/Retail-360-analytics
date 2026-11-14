# Retail 360° Analytics

An end-to-end retail data analytics project using **Python, MySQL, and Power BI** to clean, analyze, and visualize retail sales data and generate actionable business insights.

## Project Overview

This project analyzes the Sample Superstore dataset to understand sales performance, profitability, customer behavior, regional trends, product performance, and shipping patterns.

The project follows three main stages:
- **Python (Pandas):** Data cleaning and preparation.
- **MySQL:** Data analysis using SQL queries.
- **Power BI:** Interactive dashboard development and business insights.

## Tools & Technologies

- Python
- Pandas
- MySQL
- SQL
- Microsoft Power BI
- DAX
- Microsoft Excel

## Dataset Overview

- Total Records: 9,994
- Total Orders: 5,009
- Total Customers: 793
- Total Products: 1,862
- Data Period: 2014–2017

## Key Business Metrics

| Metric | Value |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Total Orders | 5,009 |
| Profit Margin | 12.47% |
| Total Units Sold | 37,873 |

## Data Cleaning — Python

Used Python and Pandas to:
- Check and handle missing values.
- Identify duplicate records.
- Validate date formats.
- Create a shipping-days column.
- Prepare cleaned data for SQL analysis.

## SQL Analysis — MySQL

Used SQL queries to analyze:
- Sales and profitability.
- Regional performance.
- Customer and segment performance.
- Product performance.
- Discount impact.
- Shipping trends.

## Key Business Insights

- Transactions with discounts of 30% or more represented **13.94% of total transactions** and generated a net loss of **$135,376.06**.
- The Central region recorded a profit margin of approximately **7.92%**, compared with **14.94%** in the West.
- Tables, Bookcases, and Supplies were identified as loss-making subcategories.

## Power BI Dashboard

Developed a 3-page interactive dashboard:

1. **Executive Overview** — Overall sales, profit, orders, and business performance.
2. **Product & Regional Analysis** — Product profitability, regional performance, and discount impact.
3. **Business Insights** — Loss-making products, customer segment profitability, and business recommendations.

## Project Structure

```text
Retail_360_Analytics/
│
├── data_raw/
├── data_cleaned/
├── python/
├── sql/
├── power_bi/
├── excel/
└── documentation/
```

## Project Objective

To demonstrate practical skills in data cleaning, SQL-based analysis, business intelligence, dashboard development, and data-driven decision-making.
