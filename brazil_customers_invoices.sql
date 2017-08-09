select
	FirstName,
	LastName,
	InvoiceId,
	InvoiceDate,
	BillingCountry
from [Customer] as c
join [Invoice] as i on c.CustomerId = i.CustomerId
where c.Country is 'Brazil'