/*top_media_type.sql: Provide a query that shows the most purchased Media Type*/
select
	m.Name as MediaTypeName,
	round(sum(i.UnitPrice),2) as MediaTypeSales
from [MediaType] as m
join [Track] as t on t.MediaTypeId = m.MediaTypeId
join [InvoiceLine] as i on i.TrackId = t.TrackId
Group By MediaTypeName
Order By MediaTypeSales desc
limit 1
	