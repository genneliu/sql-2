-- join
SELECT *
FROM invoice i
JOIN invoice_line l
ON i.invoice_id = l.invoice_id
WHERE unit_price >= 0.99;

SELECT i.invoice_date, i.total, c.first_name, c.last_name
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name AS support_rep_first, e.last_name AS support_rep_last
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT a.title, b.name
FROM album a
JOIN artist b
ON a.artist_id = b.artist_id;

SELECT p.track_id, l.name AS playlist_name
FROM playlist_track p
JOIN playlist l 
ON p.playlist_id = l.playlist_id
WHERE l.name = 'Music';

SELECT t.name, p.playlist_id
FROM track t 
JOIN playlist_track p
ON t.track_id = p.track_id;

SELECT t.name, p.playlist_id, l.name
FROM track t 
JOIN playlist_track p
ON t.track_id = p.track_id
JOIN playlist l
ON l.playlist_id = p.playlist_id;


SELECT t.name, a.title, g.name
FROM track t 
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';

-- select name, year FROM artworks
-- WHERE painter_id IN (
--   select painter_id FROM painters
--   WHERE name LIKE 'M%');