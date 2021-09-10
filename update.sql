UPDATE customer
SET fax = NULL
WHERE fax IS NOT NULL;

SELECT fax FROM customer;


UPDATE customer
SET company = 'Self'
WHERE company IS NULL;

SELECT company FROM customer
WHERE company = 'Self;'

UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';

SELECT * FROM customer
WHERE last_name = 'Thompson';

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

SELECT * FROM customer
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track
SET composer = 'The darkness Around Us'
WHERE composer IS NULL;

SELECT * FROM track
WHERE composer = 'The darkness Around Us';

