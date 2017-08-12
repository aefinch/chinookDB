/*top_country.sql: Which country's customers spent the most?*/
select Country, max(TotalSales) from (
select
	BillingCountry as Country,
	Sum(Total) as TotalSales
from [Invoice]
Group By BillingCountry)