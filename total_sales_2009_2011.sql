/*total_sales_{year}.sql: What are the respective total sales for each of those years? */

select  
	strftime('%Y', InvoiceDate) as Year,
	sum(Total) as Total
from [Invoice]
where InvoiceDate like '%2009%'
or InvoiceDate like '%2011%'
Group By strftime('%Y', InvoiceDate)