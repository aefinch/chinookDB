/*sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent*/
select
	e.FirstName,
	e.LastName,
	round(Sum(i.Total) ,2)
from [Invoice] as i
join [Customer] as c on c.CustomerId = i.CustomerId
join [Employee] as e on c.SupportRepId = e.EmployeeId
Group by c.SupportRepId
	