/*top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs*/
select
	Track.Name as Song,
	Count(InvoiceLine.TrackId)as Purchases
from [InvoiceLine]
join [Track] on Track.TrackId = InvoiceLine.TrackId
join [Invoice] on InvoiceLine.InvoiceId = Invoice.InvoiceId
Group By Track.Name
Order by Purchases desc
Limit 5