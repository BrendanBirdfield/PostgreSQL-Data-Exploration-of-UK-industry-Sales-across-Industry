-- Have average internet sales increased over time? -- 
SELECT year, ROUND(AVG(total_ecom_sales),2)
FROM internet_sales
GROUP BY year
ORDER BY year ASC

-- Yes from 41.69 to 75.67 --