/*sales_per_country.sql: Provide a query that shows the total sales per country.*/
select
	BillingCountry,
	Sum(Total)
from [Invoice]
Group By BillingCountry