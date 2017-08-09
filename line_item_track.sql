/*line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.*/
select
	InvoiceLineId,
	Name as 'Track Name'
from [InvoiceLine]
join [Track] on InvoiceLine.TrackId = Track.TrackId
