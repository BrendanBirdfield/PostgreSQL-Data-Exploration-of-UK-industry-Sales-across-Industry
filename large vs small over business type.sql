-- Which business type has biggest difference in internet sales between large and small business size? --

WITH small_table AS (SELECT business_type, SUM(total_ecom_sales) AS small_sales
FROM internet_sales
WHERE business_size = 'Small'
GROUP BY business_type),
large_table AS (SELECT business_type, SUM(total_ecom_sales) AS large_sales
FROM internet_sales
WHERE business_size = 'Large'
GROUP BY business_type)

SELECT business_type, large_sales - small_sales AS sales_diff
FROM large_table
LEFT JOIN small_table
USING(business_type)
ORDER BY sales_diff DESC

-- Wholesale has biggest difference between small and large business with large wholesalers having 834 billion pounds in sales over small wholesalers --
