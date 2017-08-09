/*line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.*/
select
	InvoiceLineId,
	Track.Name,
	Artist.Name
from [InvoiceLine]
join [Track] on InvoiceLine.TrackId = Track.TrackId
join [Album] on Track.AlbumId = Album.AlbumId
join [Artist] on Album.ArtistId = Artist.ArtistId
	
	