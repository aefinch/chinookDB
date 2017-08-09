/*top_3_artists.sql: Provide a query that shows the top 3 best selling artists.*/
select
	ar.Name as ArtistName,
	round(sum(i.UnitPrice),2) as ArtistSales
from [Artist] as ar
join [Album] as al on ar.artistId = al.artistId
join [Track] as t on t.AlbumId = al.AlbumId
join [InvoiceLine] as i on i.TrackId = t.TrackId
Group By ArtistName
Order By ArtistSales desc
limit 3
	