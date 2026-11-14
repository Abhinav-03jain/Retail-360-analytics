USE retail_360_analytics;
SELECT DATABASE();
SHOW TABLES;

DESCRIBE superstore;
select * from superstore
limit 5;

select 
     count(*) AS total_records,
     count(Distinct Row_ID) AS unique_roe_IDS,
     min(ROW_ID) AS First_row_id,
     max(ROW_ID) AS last_row_id
from superstore;

SELECT
	Round(sum(Sales),2) AS total_sales,
    Round(sum(Profit),2) AS total_profit,
    Sum(Quantity) AS total_units_sold,
    Count(distinct Order_ID) AS total_orders,
    Round(AVG(Discount)*100,2) AS average_discount_pct
from superstore;

-- 1.Data validation and missing values
select 
     count(*) AS total_rows,
     count(distinct Order_ID) AS unique_orders,
     count(*)-count(distinct Order_ID) AS extra_order_rows
from superstore;
 
 SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT Row_ID) AS unique_row_ids,
    COUNT(*) - COUNT(DISTINCT Row_ID) AS duplicate_row_ids
FROM superstore;

-- Check for missing values--
SELECT
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS missing_order_dates,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS missing_customer_ids,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS missing_product_ids,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS missing_sales,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS missing_profit
FROM superstore;

-- Check the date range--
SELECT
    MIN(Order_Date) AS first_order_date,
    MAX(Order_Date) AS last_order_date,
    COUNT(DISTINCT YEAR(Order_Date)) AS total_years
FROM superstore;

-- 2.Data validation and missing values--
SELECT
    YEAR(Order_Date) AS order_year,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM superstore
GROUP BY YEAR(Order_Date)
ORDER BY order_year;

-- 3.Monthly sales and profit trends--
SELECT
    YEAR(Order_Date) AS order_year,
    MONTH(Order_Date) AS order_month,
    ROUND(SUM(Sales), 2) AS monthly_sales,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM superstore
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    order_year,
    order_month;
-- Find the most and least profitable product categories--
SELECT
    Category,
    Sub_Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY
    Category,
    Sub_Category
ORDER BY
    total_profit ASC;
    
-- 4.Category and sub-category profitability--
SELECT
    Category,
    Sub_Category,
    Discount,
    COUNT(*) AS record_count,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
WHERE Sub_Category IN ('Tables', 'Bookcases', 'Supplies')
GROUP BY
    Category,
    Sub_Category,
    Discount
ORDER BY
    Sub_Category,
    Discount;
    
-- Validate the pattern--
SELECT
    Sub_Category,
    Discount,
    COUNT(*) AS record_count,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY
    Sub_Category,
    Discount
ORDER BY
    Sub_Category,
    Discount;

-- 5.Discount vs. profitability--
SELECT
    Sub_Category,
    Discount,
    COUNT(*) AS record_count,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY
    Sub_Category,
    Discount
ORDER BY
    profit_margin_pct ASC;

-- 6.Regional performance--
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY Region
ORDER BY total_profit DESC;

-- 7.Top 10 most profitable products--
SELECT
    Product_ID,
    Product_Name,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY
    Product_ID,
    Product_Name
ORDER BY total_profit DESC
LIMIT 10;

-- 8.Top 10 loss-making products--
SELECT
    Product_ID,
    Product_Name,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore
GROUP BY
    Product_ID,
    Product_Name
HAVING SUM(Profit) < 0
ORDER BY total_profit ASC
LIMIT 10;

-- 9.Customer sales and profitability--
SELECT
    Customer_ID,
    Customer_Name,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM superstore
GROUP BY
    Customer_ID,
    Customer_Name
ORDER BY total_sales DESC
LIMIT 10;

-- 10.Segment-wise Performance--

SELECT
    Segment,
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;

-- 11.Shipping Mode Analysis--

SELECT
    Ship_Mode,
    COUNT(DISTINCT Order_ID) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS profit_margin_pct,
    ROUND(AVG(Shipping_Days), 2) AS avg_shipping_days
FROM superstore
GROUP BY Ship_Mode
ORDER BY total_sales DESC;

-- 12.Year-over-Year Sales Growth--

WITH yearly_sales AS (
    SELECT
        YEAR(Order_Date) AS order_year,
        SUM(Sales) AS total_sales
    FROM superstore
    GROUP BY YEAR(Order_Date)
),
sales_with_previous_year AS (
    SELECT
        order_year,
        total_sales,
        LAG(total_sales) OVER (
            ORDER BY order_year
        ) AS previous_year_sales
    FROM yearly_sales
)
SELECT
    order_year,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(previous_year_sales, 2) AS previous_year_sales,
    ROUND(
        (total_sales - previous_year_sales)
        / NULLIF(previous_year_sales, 0) * 100,
        2
    ) AS sales_growth_pct
FROM sales_with_previous_year
ORDER BY order_year;

-- 13.Executive Business Summary--

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    COUNT(DISTINCT Product_ID) AS unique_products,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2)
        AS profit_margin_pct,
    ROUND(AVG(Discount) * 100, 2) AS avg_discount_pct,
    ROUND(AVG(Shipping_Days), 2) AS avg_shipping_days
FROM superstore;

