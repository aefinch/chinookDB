select
	e.FirstName,
	e.LastName,
	i.*
from [Invoice] as i
join [Customer] as c on c.CustomerId = i.CustomerId
join [Employee] as e on e.EmployeeId = c.SupportRepId
Order by e.LastName
	