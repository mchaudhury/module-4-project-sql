INSERT INTO artist(name)
VALUES('Justin Bieber'), ('Jay-Z'), ('Coldplay');

SELECT * FROM artist;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT *
FROM employee
WHERE	reports_to = '2';

SELECT COUNT(*)
FROM employee
WHERE	city = 'Lethbridge';

SELECT COUNT(billing_country) FROM invoice
WHERE billing_country = 'USA';

SELECT total from invoice
ORDER BY total DESC
LIMIT 1;

SELECT total from invoice
ORDER BY total ASC
LIMIT 1;

SELECT total from invoice
WHERE total > 5;

SELECT COUNT(total) from invoice
WHERE total < 5;

SELECT SUM(total) from invoice;

SELECT *
FROM invoice_line
JOIN invoice
ON invoice_line.invoice_id = invoice.invoice_id
WHERE unit_price > '0.99';

SELECT invoice_date AS 'Purchase Date', c.first_name AS 'First Name', c.last_name AS 'Last Name', total
FROM invoice
JOIN customer c 
ON invoice.customer_id = c.customer_id;

SELECT c.first_name "Customer first name", c.last_name "Customer last name", e.first_name "Rep first name", e.last_name "Rep last name"
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT al.title "Album title", ar.name "Artist"
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;