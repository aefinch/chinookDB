select  
	strftime('%Y', InvoiceDate) as Year,
	count(*) as Count
from [Invoice]
where InvoiceDate like '%2009%'
or InvoiceDate like '%2011%'
Group By strftime('%Y', InvoiceDate)

	



