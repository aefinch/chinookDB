/*sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.*/
Select
	e.FirstName || " " || e.LastName as AgentName,
	Count(*) as NumOfCustomers
from [Customer]
join [Employee] as e on Customer.SupportRepId = e.EmployeeId
Group By e.EmployeeId