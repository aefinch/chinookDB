/*playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table.*/
select
	PlaylistTrack.PlaylistId as PlaylistId,
	Playlist.Name,
	Count(*)
from [PlaylistTrack]
join [Playlist] on Playlist.PlaylistId = PlaylistTrack.PlaylistId
Group by Playlist.Name