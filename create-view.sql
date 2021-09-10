CREATE VIEW rock AS
SELECT t.name
FROM track t 
WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'Rock');

SELECT * FROM rock;

CREATE VIEW classical_count AS
SELECT COUNT(t.name)
FROM track t
WHERE track_id IN (SELECT track_id FROM playlist_track WHERE playlist_id IN (SELECT playlist_id FROM playlist WHERE name = 'Classical'));

SELECT * FROM classical_count;

