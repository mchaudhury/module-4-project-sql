SELECT name FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT name FROM artist
WHERE name LIKE 'Black%';

SELECT name FROM artist
WHERE name LIKE '%Black%';


-- employees
SELECT first_name "Youngest Employee" 
FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT first_name "Oldest Employee" 
FROM employee
ORDER BY birth_date ASC
LIMIT 1;

-- Invoice Table
SELECT COUNT(invoice_line) 
FROM invoice_line
WHERE invoice_id IN(
  SELECT invoice_id FROM invoice WHERE billing_state = 'CA' OR billing_state = 'TX' OR billing_state = 'AZ'
);

SELECT AVG(total) FROM invoice;


-- More Join Queries
SELECT pl.playlist_track_id, pl.track_id 
FROM playlist_track pl
JOIN playlist p
ON pl.playlist_track_id = p.playlist_id
WHERE name = 'Music';

SELECT t.name "Name of Tracks"
FROM track t
JOIN playlist_track pl
ON t.track_id = pl.track_id
JOIN playlist p
ON p.playlist_id = pl.playlist_id
WHERE p.playlist_id = '5'

SELECT t.name "tracks name", p.name "Playlist name"
FROM track t
JOIN playlist_track pl
ON t.track_id = pl.track_id
JOIN playlist p
ON p.playlist_id = pl.playlist_id
WHERE p.playlist_id = '5'

SELECT t.name "Track", al.title "Album Title" FROM track t
JOIN album al
ON t.album_id = al.album_id;


SELECT t.name "Track", al.title "Album Title", g.name "Genre"
FROM track t
JOIN album al
ON t.album_id = al.album_id
JOIN genre g
ON g.genre_id = t.genre_id
WHERE g.name = "Alternative & Punk"