-- SQLite
SELECT sum(Milliseconds),sum(UnitPrice)
FROM tracks
JOIN albums ON tracks.albumid = albums.albumid
WHERE albums.title like 'Let There Be Rock';
