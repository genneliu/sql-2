SELECT COUNT(*), g.name AS genre
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id
GROUP BY g.name;

SELECT COUNT(*), g.name 
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id 
WHERE g.name IN ('Pop', 'Rock')
GROUP BY g.name;

SELECT COUNT(*) AS album_count, a.name
FROM album b
JOIN artist a
ON a.artist_id = b.artist_id
GROUP BY a.name;


