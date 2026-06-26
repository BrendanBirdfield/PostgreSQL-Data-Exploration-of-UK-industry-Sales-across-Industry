-- Which industry had biggest increase in internet sales

WITH earliest AS (SELECT business_type, SUM(total_ecom_sales) AS first_sales
FROM internet_sales
WHERE year = 2009
GROUP BY business_type),
latest AS(SELECT business_type, SUM(total_ecom_sales) AS last_sales
FROM internet_sales
WHERE year = 2019
GROUP BY business_type
)

SELECT business_type, last_sales - first_sales AS sales_diff
FROM earliest
LEFT JOIN latest
USING(business_type)
ORDER BY sales_diff DESC