-- SQLite non terminée
SELECT albums.Title
FROM `albums`
JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE artists.Name = 'Deep Purple'
-- A finir avec la bonne syntaxe 