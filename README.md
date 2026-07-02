# PostgreSQL-Data-Exploration-of-UK-industry-Sales-across-Industry
Using SQL within a postgreSQL database created from the office for national statistics E-commerce data: https://www.ons.gov.uk/economy/nationalaccounts/balanceofpayments/articles/consumercardspendingecommerceanddigitaltradeinsightsintheuk/2019to2025 

I created a database in Postgresql using data including the websales and EDI sales summerised by business type and business size between 2009 and 2019.
Variopus SQL techniques were used CTE's, subqueries, joins and window fucntions to answer various questions about the changes in internet sales across british industries and industry size.

Have average internet sales increased over time?

Yes internet sales increased from 41.69 billion in 2009 to 75.67 billion in 2019.
<img width="1125" height="744" alt="Image" src="https://github.com/user-attachments/assets/990a04b5-fbc5-4802-8d0c-8c08b319eca9" />

Which industry has most and least internet sales?

Wholesale industry has the most internet sales with 2977 billion in sales over 10 years.
Construction had the least with 125.5 billion over 10 years. 
<img width="1221" height="759" alt="Image" src="https://github.com/user-attachments/assets/a0b26a3a-7a83-4692-9742-c4c08ae59b28" />


Which industry had biggest increase in internet sales?
Here 2 cte's were created to find the sum of internet sales for each industry in 2009 and 2019 respectively.
They were then joined and a new column was created to minus the 2009 sales from 2019 sales.

Wholesale has the biggest increase in internet sales between 2009 and 2019.
<img width="1549" height="920" alt="Image" src="https://github.com/user-attachments/assets/2cad032b-833e-4522-9927-5fbe3c589d42" />

Which business type has the biggest difference in internet sales between large and small business size? 
Two cte's were created to find the internet sales grouped by industry type one cte contains data for small business and the other for large business.
They were then joined joined and the values for small business was subtracted from large business to find the industry with the biggest difference between small and large.

Wholesalers showed the biggest difference in internet sales between small and large business.
<img width="1644" height="888" alt="Image" src="https://github.com/user-attachments/assets/07032ea3-3af6-4d49-a457-aad48b9a91c4" />


Have Small or large business benefited more from increasing internet sales?
Seperate cte's were created to find the total sales grouped by business size for 2014 vs 2019.
The cte's were joined and total sales were subtracted from each other to find the change over time.

Small business showed a slightly larger increase in sales over time than large business.
<img width="1304" height="717" alt="Image" src="https://github.com/user-attachments/assets/1338a82e-5406-4eea-a064-fda35985acd8" />
