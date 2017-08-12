/*tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/
select
	t.Name as 'Track Name',
	a.Title as 'Album Title',
	m.Name as 'Media Type',
	g.Name as 'Genre'
from [Track] as t
join [Album] as a on t.AlbumId = a.AlbumId
join [MediaType] as m on t.MediaTypeId = m.MediaTypeId
join [Genre] as g on t.GenreId = g.GenreId