\# Retail 360° Analytics — SQL Analysis Summary



\## 1. Project Objective



The objective of this project is to analyze retail sales data using SQL to evaluate sales performance, profitability, customer behavior, product performance, regional trends, and shipping operations.



The analysis aims to identify business opportunities, investigate profit losses, and generate actionable recommendations to support data-driven decision-making.



\## 2. Dataset Overview



\- \*\*Dataset:\*\* Sample Superstore

\- \*\*Database:\*\* `retail\_360\_analytics`

\- \*\*Table:\*\* `superstore`

\- \*\*Total Records:\*\* 9,994

\- \*\*Unique Orders:\*\* 5,009

\- \*\*Unique Customers:\*\* 793

\- \*\*Unique Products:\*\* 1,862

\- \*\*Analysis Period:\*\* January 2014 – December 2017

\- \*\*Tools Used:\*\* MySQL, SQL



\### Key Business Metrics



The analysis evaluates the following metrics:



\- Total Sales

\- Total Profit

\- Profit Margin

\- Total Units Sold

\- Number of Orders

\- Average Discount

\- Average Shipping Days



\## 3. Data Validation and Quality Checks



Before performing business analysis, SQL queries were used to validate the dataset's structure, record counts, uniqueness, and date coverage.



\### Validation Checks Performed



\- Verified the database and confirmed that the `superstore` table was available.

\- Inspected the table structure and column names using `DESCRIBE`.

\- Checked the total number of records in the dataset.

\- Verified that `Row\_ID` values were unique.

\- Checked important columns for SQL NULL values, including order dates, customer IDs, product IDs, sales, and profit.

\- Examined the minimum and maximum order dates to confirm the analysis period.



\### Validation Results



| Check | Result |

|---|---|

| Total records | 9,994 |

| Unique Row\_ID values | 9,994 |

| Duplicate Row\_ID values | 0 |

| First order date | 2014-01-03 |

| Last order date | 2017-12-30 |



\### Conclusion



The dataset contains 9,994 records, and all 9,994 `Row\_ID` values are unique. The order dates cover the period from January 2014 to December 2017.



These checks establish the basic structural integrity of the dataset before business analysis. Uniqueness of `Row\_ID` does not, by itself, prove that every record is free of other data-quality issues.



\## 4. Overall Business Performance



\### Key Performance Indicators (KPIs)



The overall SQL analysis produced the following business metrics:



| KPI | Result |

|---|---:|

| Total Sales | $2,297,200.86 |

| Total Profit | $286,397.02 |

| Total Orders | 5,009 |

| Total Units Sold | 37,873 |

| Unique Customers | 793 |

| Unique Products | 1,862 |

| Average Discount | 15.62% |

| Average Shipping Days | 3.96 |

| Profit Margin | 12.47% |



\### Key Findings



\- The business generated approximately $2.30 million in sales and $286.40K in profit during the analysis period.

\- The overall profit margin was 12.47%, meaning the business earned approximately $12.47 in profit for every $100 in sales.

\- The dataset contains 5,009 distinct orders from 793 unique customers.

\- The average discount across records was 15.62%.

\- The average shipping duration was approximately 3.96 days, based on the available `Shipping\_Days` field.



\### Business Interpretation



The overall results provide a baseline for evaluating the business's performance. However, positive total profit does not mean every product, customer, or region is profitable.



Further analysis is needed to identify the strongest sales periods, high-performing products, loss-making categories, and regions with opportunities to improve profit margins.



\### Business Recommendation



Monitor sales, profit, and profit margin together rather than relying on sales alone. Investigate loss-making products and categories, and evaluate discounting practices to identify opportunities to improve profitability.



\*Note: Currency is shown as USD based on the standard Sample Superstore dataset. The average discount and shipping duration are record-level averages, so their interpretation depends on the dataset's structure.\*



\## 5. Sales Trends and Year-over-Year Growth



\### 5.1 Yearly Performance



SQL analysis was used to compare annual sales, profit, and order volumes from 2014 to 2017.



| Year | Total Sales | Total Profit | Total Orders |

|---|---:|---:|---:|

| 2014 | $484,247.50 | $49,543.97 | 969 |

| 2015 | $470,532.51 | $61,618.60 | 1,038 |

| 2016 | $609,205.60 | $81,795.17 | 1,315 |

| 2017 | $733,215.26 | $93,439.27 | 1,687 |



\### 5.2 Year-over-Year Sales Growth



| Year | Sales Growth |

|---|---:|

| 2015 | -2.83% |

| 2016 | +29.47% |

| 2017 | +20.36% |



\### Key Findings



\- Sales declined by 2.83% in 2015 compared with 2014.

\- Sales increased by 29.47% in 2016.

\- Sales increased by another 20.36% in 2017.

\- 2017 recorded the highest annual sales, profit, and order count in the analysis period.

\- Annual profit increased in every year, even when sales declined in 2015.



\### 5.3 Monthly Sales Trends



The monthly analysis identified November 2017 as the highest-sales month, with sales of $118,447.83. February 2014 recorded the lowest monthly sales, at $4,519.89.



The analysis also identified loss-making months, including July 2014, with a profit of -$841.48, and January 2015, with a profit of -$3,281.01.



\### Business Interpretation



The results indicate that sales and order volumes grew substantially after 2015. However, monthly and annual totals can hide seasonal changes and periods of weak profitability.



The November sales peak may indicate seasonal demand, but additional year-over-year monthly comparisons are needed before concluding that the pattern repeats every year.



\### Business Recommendations



\- Investigate the factors behind the sales decline in 2015.

\- Analyze the products and customer segments contributing to growth in 2016 and 2017.

\- Review November sales to understand which products and categories drive the peak.

\- Examine loss-making months to identify whether discounts, product mix, or other factors contributed to losses.



\*Note: Year-over-year growth compares each year's sales with the previous year's sales. The first year has no prior year within this dataset for comparison.\*



\## 6. Category and Subcategory Profitability



\### 6.1 Subcategories with Negative Profit



SQL analysis identified three subcategories with negative total profit.



| Subcategory | Total Sales | Total Profit | Profit Margin |

|---|---:|---:|---:|

| Tables | $206,965.53 | -$17,725.48 | -8.56% |

| Bookcases | $114,880.00 | -$3,472.56 | -3.02% |

| Supplies | $46,673.54 | -$1,189.10 | -2.55% |



\### 6.2 High-Profit Subcategories



The following subcategories generated the highest total profits among the results analyzed.



| Subcategory | Total Profit | Profit Margin |

|---|---:|---:|

| Copiers | $55,617.82 | 37.20% |

| Phones | $44,515.73 | 13.49% |

| Accessories | $41,936.64 | 25.05% |

| Paper | $34,053.57 | 43.39% |

| Binders | $30,221.76 | 14.86% |



\### Key Findings



\- Tables generated the largest total loss among the three loss-making subcategories, at -$17,725.48.

\- Bookcases and Supplies also generated negative total profit.

\- Copiers generated the highest total profit among the listed subcategories.

\- Paper had the highest profit margin among the five high-profit subcategories listed.



\### Business Interpretation



Sales revenue alone does not indicate whether a product category is financially successful. Tables generated substantial sales but still recorded a negative profit, while Copiers and Paper combined positive profits with stronger margins.



These results suggest that profitability varies considerably across product types.



\### Business Recommendations



\- Review pricing, discounting, and cost structures for Tables, Bookcases, and Supplies.

\- Investigate whether particular products or high-discount orders account for the losses.

\- Study the sales and profitability drivers behind Copiers and Paper.

\- Use both total profit and profit margin when prioritizing products for business decisions.



\*Note: The results describe historical performance. Additional analysis is required to establish the specific causes of losses.\*



\## 7. Discount Analysis and Profitability



\### 7.1 Discount Impact on Loss-Making Subcategories



SQL analysis examined how profit varied across discount levels for Tables, Bookcases, and Supplies.



| Subcategory | Discount | Total Profit |

|---|---:|---:|

| Tables | 0% | $13,276.30 |

| Tables | 20% | -$303.56 |

| Tables | 30% | -$3,402.33 |

| Tables | 40% | -$16,187.40 |

| Tables | 50% | -$8,615.39 |

| Bookcases | 0% | $6,075.71 |

| Bookcases | 30% | -$555.87 |

| Bookcases | 50% | -$4,255.81 |

| Bookcases | 70% | -$3,894.94 |

| Supplies | 0% | $1,718.39 |

| Supplies | 20% | -$2,907.49 |



\*The table shows selected discount levels from the SQL results, not every discount level in the dataset.\*



\### Key Findings



\- Tables recorded a loss of $16,187.40 at a 40% discount.

\- Bookcases recorded losses at several higher discount levels, including 50% and 70%.

\- Supplies generated positive profit at a 0% discount but a loss at a 20% discount in the analyzed records.

\- Profitability differed across discount levels and subcategories.



\### Business Interpretation



The results show an association between some discount levels and negative profit, particularly for Tables and Bookcases.



However, these results alone do not prove that discounts caused the losses. Product costs, quantities, individual products, and other factors may also influence profitability.



\### Business Recommendations



\- Review discount policies for Tables and Bookcases, especially where total profit is negative.

\- Investigate individual products and orders that generate losses at high discount levels.

\- Compare sales volume and profit before changing discount policies.

\- Consider a product-level discount review to identify where discounts may need limits or additional approval.



\*Note: Discount percentages are analyzed as recorded in the dataset. Business decisions should be based on order-level and product-level investigation rather than discount levels alone.\*



\## 8. Regional Performance Analysis



\### 8.1 Performance by Region



SQL analysis was used to compare sales, profit, order volume, and profit margin across the four regions.



| Region | Total Sales | Total Profit | Total Orders | Profit Margin |

|---|---:|---:|---:|---:|

| West | $725,457.82 | $108,418.45 | 1,611 | 14.94% |

| East | $678,781.24 | $91,522.78 | 1,401 | 13.48% |

| Central | $501,239.89 | $39,706.36 | 1,175 | 7.92% |

| South | $391,721.91 | $46,749.43 | 822 | 11.93% |



\### Key Findings



\- The West region generated the highest sales and total profit.

\- The West also recorded the highest profit margin at 14.94%.

\- The Central region generated the second-highest sales among the four regions but had the lowest profit margin at 7.92%.

\- The South region had the lowest sales but generated more total profit than the Central region.



\### Business Interpretation



Regional performance differs considerably. The Central region's relatively high sales do not translate into a similarly strong profit margin. This suggests that its product mix, discounting, or other costs deserve further investigation.



The South region's results also show why sales volume alone is not sufficient for evaluating regional performance.



\### Business Recommendations



\- Investigate the Central region's product-level profitability and discount patterns.

\- Compare product mix and profit margins across all four regions.

\- Study the West region's stronger performance to identify practices that may be useful elsewhere.

\- Evaluate regional performance using sales, profit, and profit margin together.



\*Note: These results identify performance differences but do not establish their underlying causes.\*



\## 9. Product Performance Analysis



\### 9.1 Top 10 Profitable Products



SQL analysis identified the following products with the highest total profit.



| Product | Total Sales | Total Profit |

|---|---:|---:|

| Canon imageCLASS 2200 Advanced Copier | $61,599.82 | $25,199.93 |

| Fellowes PB500 Electric Punch Plastic Comb Binding Machine | $27,453.38 | $7,753.04 |

| Hewlett Packard LaserJet 3310 Copier | $18,839.69 | $6,983.88 |

| Canon PC1060 Personal Laser Copier | $11,619.83 | $4,570.93 |

| HP Designjet T520 Inkjet Large Format Printer | $18,374.90 | $4,094.98 |

| Ativa V4110MDD Micro-Cut Shredder | $7,699.89 | $3,772.95 |

| 3D Systems Cube Printer 2nd Gen Magenta | $14,299.89 | $3,717.97 |

| Plantronics Savi W720 Headset | $9,367.29 | $3,696.28 |

| Ibico EPK-21 Electric Binding System | $15,875.92 | $3,345.28 |

| Zebra ZM400 Thermal Label Printer | $6,965.70 | $3,343.54 |



\### 9.2 Top 10 Loss-Making Products



The following products recorded the largest total losses in the SQL results.



| Product | Total Sales | Total Profit |

|---|---:|---:|

| Cubify CubeX 3D Printer Double Head Print | $11,099.96 | -$8,879.97 |

| Lexmark MX611dhe Printer | $16,829.90 | -$4,589.97 |

| Cubify CubeX 3D Printer Triple Head Print | $7,999.98 | -$3,839.99 |

| Chromcraft Bull-Nose Wood Oval Conference Tables \& Bases | $9,917.64 | -$2,876.12 |

| Bush Advantage Collection Racetrack Conference Table | $9,544.73 | -$1,934.40 |

| GBC DocuBind P400 Electric Binding System | $17,965.07 | -$1,878.17 |

| Cisco TelePresence System EX90 | $22,638.48 | -$1,811.08 |

| Martin Yale Chadless Opener | $16,656.20 | -$1,299.18 |

| Balt Solid Wood Round Tables | $6,518.75 | -$1,201.06 |

| BoxOffice Meeting Tables | $1,706.25 | -$1,148.44 |



\### Key Findings



\- The Canon imageCLASS 2200 Advanced Copier was the most profitable product in the results, generating $25,199.93 in profit.

\- The Cubify CubeX 3D Printer Double Head Print generated the largest loss, at -$8,879.97.

\- Some loss-making products recorded substantial sales, showing that revenue does not necessarily translate into profit.



\### Business Interpretation



Product profitability varies significantly. Certain products contribute strongly to overall profit, while others reduce the business's total earnings.



\### Business Recommendations



\- Monitor the profitability of the highest-contributing products.

\- Investigate the pricing, discounts, and costs associated with loss-making products.

\- Consider reviewing product pricing or promotional strategies before deciding whether to change product availability.

\- Evaluate products using both sales and profit rather than sales alone.



\*Note: Product-level results identify candidates for further investigation. They do not establish why a product made a loss.\*



\## 10. Customer Performance Analysis



\### 10.1 Top Customers by Sales



SQL analysis ranked customers by total sales and also examined their profit and order counts.



| Customer | Total Sales | Total Profit | Total Orders |

|---|---:|---:|---:|

| Sean Miller | $25,043.05 | -$1,980.74 | 5 |

| Tamara Chand | $19,052.22 | $8,981.32 | 5 |

| Raymond Buch | $15,117.34 | $6,976.10 | 6 |

| Tom Ashbrook | $14,595.62 | $4,703.79 | 4 |

| Adrian Barton | $14,473.57 | $5,444.81 | 10 |

| Ken Lonsdale | $14,175.23 | $806.86 | 12 |

| Sanjit Chand | $14,142.33 | $5,757.41 | 9 |

| Hunter Lopez | $12,873.30 | $5,622.43 | 6 |

| Sanjit Engle | $12,209.44 | $2,650.68 | 11 |

| Christopher Conant | $12,129.07 | $2,177.05 | 5 |



\### Key Findings



\- Sean Miller had the highest total sales among the customers listed, at $25,043.05, but recorded a total loss of $1,980.74.

\- Tamara Chand generated $8,981.32 in profit on sales of $19,052.22.

\- Adrian Barton placed among the highest-sales customers and recorded 10 orders.

\- Order counts and profitability differ among customers with high sales.



\### Business Interpretation



High customer sales do not necessarily mean high customer profitability. The results indicate that both sales value and profit should be considered when evaluating customer performance.



\### Business Recommendations



\- Investigate the transactions contributing to losses for high-sales customers.

\- Identify profitable customers and understand their product and purchasing patterns.

\- Use customer sales, profit, and order frequency together when developing customer retention strategies.

\- Avoid making customer-level decisions from sales rankings alone.



\*Note: Customer names and historical performance are included to demonstrate analysis of the supplied dataset.\*



\## 11. Customer Segment Analysis



\### 11.1 Performance by Segment



The analysis compared Consumer, Corporate, and Home Office segments.



| Segment | Orders | Customers | Total Sales | Total Profit | Profit Margin |

|---|---:|---:|---:|---:|---:|

| Consumer | 2,586 | 409 | $1,161,401.35 | $134,119.21 | 11.55% |

| Corporate | 1,514 | 236 | $706,146.37 | $91,979.13 | 13.03% |

| Home Office | 909 | 148 | $429,653.15 | $60,298.68 | 14.03% |



\### Key Findings



\- Consumer generated the highest sales and total profit among the three segments.

\- Corporate recorded a higher profit margin than Consumer.

\- Home Office had the highest profit margin, at 14.03%, despite having the lowest sales among the three segments.

\- Consumer accounted for the largest order volume.



\### Business Interpretation



Consumer is the largest segment by sales, while Home Office has the strongest profit margin. This difference suggests that the largest segment is not necessarily the most profitable relative to its sales.



\### Business Recommendations



\- Maintain focus on the Consumer segment because of its contribution to overall sales and profit.

\- Investigate the factors behind Home Office's higher profit margin.

\- Evaluate Corporate opportunities to increase sales while maintaining profitability.

\- Compare segment-level product mix and discount patterns before changing marketing or pricing strategies.



\## 12. Shipping Mode Analysis



\### 12.1 Performance by Shipping Mode



SQL analysis compared order volume, sales, profit, profit margin, and average shipping duration across shipping modes.



| Shipping Mode | Orders | Total Sales | Total Profit | Profit Margin | Average Shipping Days |

|---|---:|---:|---:|---:|---:|

| Standard Class | 2,994 | $1,358,215.74 | $164,088.79 | 12.08% | 5.01 |

| Second Class | 964 | $459,193.57 | $57,446.64 | 12.51% | 3.24 |

| First Class | 787 | $351,428.42 | $48,969.84 | 13.93% | 2.18 |

| Same Day | 264 | $128,363.13 | $15,891.76 | 12.38% | 0.04 |



\### Key Findings



\- Standard Class accounted for the largest order volume, sales, and total profit.

\- First Class had the highest profit margin among the four shipping modes, at 13.93%.

\- Same Day recorded an average shipping duration of 0.04 days in the current results.

\- Shipping modes differed in order volume, profitability, and average shipping duration.



\### Business Interpretation



Standard Class is the largest shipping mode by volume, while First Class recorded the highest profit margin. However, this analysis alone does not show that the shipping mode caused the differences in profitability.



The very low Same Day average should be validated against the original order and shipping dates before drawing operational conclusions.



\### Business Recommendations



\- Validate the shipping-day calculation for Same Day orders.

\- Compare shipping modes using both delivery duration and profitability.

\- Investigate shipping costs and product mix by shipping mode if the required data is available.

\- Evaluate customer delivery needs alongside operating costs before changing shipping policies.



\*Note: Shipping duration is based on the available `Shipping\_Days` field. The Same Day result requires verification.\*



\## 13. Overall Business Recommendations



Based on the completed SQL analysis, the following areas deserve further business investigation.



\### 13.1 Improve Product Profitability



Investigate Tables, Bookcases, Supplies, and the most loss-making products to identify opportunities related to pricing, discounting, and product costs.



\### 13.2 Review Discounting Practices



Examine products and orders where higher discounts coincide with negative profit. Validate the financial impact before changing discount policies.



\### 13.3 Investigate Regional Differences



Review the Central region's low profit margin of 7.92% despite its sales of $501,239.89. Compare its product mix, discounts, and other relevant cost factors with the better-performing regions.



\### 13.4 Learn from Profitable Products and Segments



Study the products and customer segments generating strong profit and margins to identify opportunities for sustainable growth.



\### 13.5 Monitor Sales Trends



Track yearly and monthly sales, profit, and order volumes. Investigate periods of declining sales or negative profit rather than relying only on annual totals.



\### 13.6 Validate Operational Metrics



Verify the shipping-day calculations, particularly for Same Day orders, before using the results for operational decisions.



\## 14. Project Conclusion



The SQL analysis examined retail sales, profitability, time trends, product performance, customer behavior, customer segments, regional results, and shipping modes.



The analysis identified several important patterns: sales increased substantially in 2016 and 2017; the West region had the strongest regional performance among the four regions; Tables, Bookcases, and Supplies recorded negative total profit; and profitability varied across products and customer segments.



The results demonstrate the importance of analyzing sales and profit together. They also provide a foundation for further investigation and visualization in the Power BI dashboard.



The next stage of the project is to translate the validated SQL findings into clear dashboard visuals, interactive filters, and business-focused insights.



\## 15. Analysis Limitations



\- The findings describe the historical period from January 2014 to December 2017 and may not represent current business conditions.

\- Associations between discounts and losses do not establish causation.

\- Product, customer, regional, and shipping results require additional investigation to establish underlying causes.

\- The Same Day shipping duration result should be validated before drawing conclusions.

\- Currency is assumed to be USD based on the standard Sample Superstore dataset.

\- Recommendations are proposed actions for further investigation, not proof that a specific intervention will improve business performance.



