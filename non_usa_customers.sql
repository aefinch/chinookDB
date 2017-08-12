select
	CustomerId,
	FirstName,
	LastName,
	Country
from [Customer] as c
where c.Country != 'USA'