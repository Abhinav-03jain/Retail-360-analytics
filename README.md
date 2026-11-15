# Retail 360° Analytics
### End-to-End Retail Data Analytics | Python · MySQL · Power BI

An end-to-end retail analytics project focused on transforming raw retail transaction data into meaningful business insights using Python, MySQL, and Power BI.

The project covers data cleaning, SQL-based analysis, business performance evaluation, and interactive dashboard development to understand sales, profitability, customer behavior, product performance, regional trends, and shipping operations.

---

## Project Overview

Retail businesses generate large volumes of transactional data. Analyzing this data helps businesses understand their performance, identify profitability issues, and make better decisions.

In this project, I worked with the Sample Superstore dataset to perform end-to-end data analysis, from raw data preparation to interactive business intelligence reporting.

**Project Workflow:**

1. Data Cleaning and Preparation using Python.
2. Data Analysis using MySQL.
3. Business Insights and KPI Analysis.
4. Interactive Dashboard Development using Power BI.

---

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and preparation |
| Pandas | Data manipulation and validation |
| MySQL | SQL queries and business analysis |
| Power BI | Interactive dashboard development |
| DAX | KPI calculations and measures |
| Microsoft Excel | Supporting data inspection |

---

## Dataset Overview

**Dataset:** Sample Superstore

The dataset contains retail transaction records covering four years, from 2014 to 2017.

| Metric | Value |
|---|---:|
| Total Records | 9,994 |
| Total Orders | 5,009 |
| Total Customers | 793 |
| Total Products | 1,862 |
| Data Period | 2014–2017 |

---

## 1. Data Cleaning & Preparation — Python

Used Python and Pandas to prepare the raw retail dataset for analysis.

Key activities:
- Inspected the dataset structure and data types.
- Checked missing values and duplicate records.
- Validated date formats and important data fields.
- Created a Shipping Days column.
- Prepared the cleaned dataset for SQL analysis.

---

## 2. SQL Business Analysis — MySQL

Used MySQL to explore the dataset and evaluate important business performance indicators.

Analysis areas:
- Sales and profit performance.
- Regional sales and profitability.
- Customer and segment analysis.
- Product and category performance.
- Discount impact on profitability.
- Shipping trends and delivery performance.

SQL concepts used included filtering, aggregate functions, GROUP BY, HAVING, joins, and subqueries.

---

## 3. Key Business Insights

### Overall Business Performance

| KPI | Result |
|---|---:|
| Total Sales | $2,297,200.86 |
| Total Profit | $286,397.02 |
| Total Orders | 5,009 |
| Profit Margin | 12.47% |
| Units Sold | 37,873 |

### Discount Analysis

Transactions with discounts of 30% or more represented **13.94% of total transactions (1,393 out of 9,994)** and generated a combined net loss of **$135,376.06**.

### Regional Profitability

- Central Region: 7.92% profit margin.
- West Region: 14.94% profit margin.

The comparison highlighted a significant difference in regional profitability.

### Loss-Making Product Subcategories

| Subcategory | Total Loss |
|---|---:|
| Tables | -$17,725.48 |
| Bookcases | -$3,472.56 |
| Supplies | -$1,189.10 |

These findings highlighted areas where pricing, discount strategies, and product profitability could be reviewed.

---

## 4. Power BI Dashboard

Developed a three-page interactive Power BI dashboard to present business performance and analytical findings.

### Page 1 — Executive Overview

- Overall sales and profit performance.
- Total orders and profit margin.
- Monthly sales trends.
- Category and regional performance.
- Shipping mode analysis.

### Page 2 — Product & Regional Analysis

- Product profitability analysis.
- Regional sales performance.
- Discount impact on profit.
- Top and bottom-performing products.
- State-level performance.

### Page 3 — Business Insights & Recommendations

- Loss-making product subcategories.
- Profit margin by customer segment.
- Top 10 customers by profit.
- Business recommendations.
- Action plan for improving profitability.

The dashboard includes interactive slicers to explore the data from different business perspectives.

---

## 5. Business Recommendations

Based on the analysis, the project highlights several areas for improvement:

- Review high-discount transactions to reduce profitability losses.
- Investigate the lower profit margin in the Central region.
- Review pricing and discount strategies for loss-making subcategories.
- Monitor product and customer profitability.
- Evaluate shipping performance to identify operational improvement opportunities.

---

## Repository Structure

```text
retail-360-analytics/
│
├── data_raw/
│
├── data_cleaned/
│
├── python/
│
├── sql/
│
├── power_bi/
│
├── excel/
│
├── documentation/
│
└── README.md
```

---

## Project Outcomes

Through this project, I gained practical experience in:

- Cleaning and preparing retail data using Python and Pandas.
- Writing SQL queries for business analysis using MySQL.
- Calculating and interpreting business performance metrics.
- Developing interactive Power BI dashboards.
- Identifying business problems through data analysis.
- Communicating findings through data-driven recommendations.

---


## 📊 Dashboard Preview

The Power BI dashboard consists of three interactive pages designed to provide insights into sales performance, regional trends, product performance, and business opportunities.

### 1. Executive Overview
![Executive Overview](screenshots/Executive_Overview.png)

### 2. Product & Regional Analysis
![Product & Regional Analysis](screenshots/Product_&_Regional_Analysis.png)

### 3. Business Insights & Recommendations
![Business Insights & Recommendations](screenshots/Business_Insight.png)

## Conclusion

Retail 360° Analytics demonstrates an end-to-end data analytics workflow, combining Python, MySQL, and Power BI to convert raw retail transaction data into actionable business insights.

The project showcases practical skills in data preparation, SQL analysis, business intelligence, dashboard development, and analytical problem-solving.
