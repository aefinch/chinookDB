/*top_2013_track.sql: Provide a query that shows the most purchased track of 2013.*/
select Song, max(Purchases) from (
select
	Track.Name as Song,
	Count(InvoiceLine.TrackId)as Purchases
from [InvoiceLine]
join [Track] on Track.TrackId = InvoiceLine.TrackId
join [Invoice] on InvoiceLine.InvoiceId = Invoice.InvoiceId
where Invoice.InvoiceDate like '%2013%'
Group By Track.Name)