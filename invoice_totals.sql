select
	
	e.FirstName,
	e.LastName,
	i.Total as 'Invoice Total',
	c.FirstName,
	c.LastName,
	c.Country
from [Invoice] as i
join [Customer] as c on c.CustomerId = i.CustomerId
join [Employee] as e on e.employeeId = c.SupportRepId
order by e.LastName
	