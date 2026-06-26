-- Which industry has most and least internet sales? --
SELECT business_type, SUM(total_ecom_sales) AS total_sales
FROM internet_sales
GROUP BY business_type
ORDER BY total_sales DESC

-- Most = Wholesale   Least = Construction