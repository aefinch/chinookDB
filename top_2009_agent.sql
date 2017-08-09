/*top_2009_agent.sql: Which sales agent made the most in sales in 2009?*/
select FName, LName, max(TotalSales) from(
select
	e.FirstName as FName,
	e.LastName as LName,
	round(Sum(i.Total) ,2) as TotalSales
from [Invoice] as i
join [Customer] as c on c.CustomerId = i.CustomerId
join [Employee] as e on c.SupportRepId = e.EmployeeId
where i.InvoiceDate like '%2009%' 
Group by c.SupportRepId)