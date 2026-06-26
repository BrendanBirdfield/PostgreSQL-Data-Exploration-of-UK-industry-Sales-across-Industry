-- Have Small or large business benefited more from increasing internet sales? --
WITH earliest AS (SELECT business_size, SUM(total_ecom_sales) AS earliest_sales
FROM internet_sales
WHERE year = 2014
GROUP BY business_size),

latest  AS (SELECT business_size, SUM(total_ecom_sales) AS latest_sales
FROM internet_sales
WHERE year = 2019
GROUP BY business_size)

SELECT business_size, latest_sales - earliest_sales AS sales_difff
FROM earliest
LEFT JOIN latest
USING(business_size)

-- small business had a slightly larger increase in interent sales between 2014 and 2019 --