SELECT *
FROM invoice
WHERE invoice_id IN (SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99);

SELECT t.name 
FROM track t
WHERE track_id IN (SELECT track_id FROM playlist_track WHERE playlist_id IN (SELECT playlist_id FROM playlist WHERE name ='Music'));
