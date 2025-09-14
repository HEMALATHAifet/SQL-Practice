-- Sort by year ascending and return first 3
SELECT * FROM movies
ORDER BY year ASC
LIMIT 3;

-- Get the next 3 results
SELECT * FROM movies
ORDER BY year ASC
LIMIT 3 OFFSET 3;

SELECT * FROM movies
ORDER BY year ASC;

SELECT * FROM movies
ORDER BY rating DESC;

SELECT title, year FROM movies
ORDER BY title ASC;

SELECT * FROM movies
ORDER BY rating DESC
LIMIT 5;

SELECT * FROM movies
ORDER BY year ASC
LIMIT 3;

SELECT * FROM movies
ORDER BY rating DESC
LIMIT 5 OFFSET 5;

SELECT * FROM movies
ORDER BY title ASC
LIMIT 4 OFFSET 4;

SELECT * FROM movies
WHERE year > 2000
ORDER BY year DESC
LIMIT 2;

SELECT * FROM movies
ORDER BY year DESC
LIMIT 1 OFFSET 2;

SELECT * FROM movies
WHERE genre = 'Action'
ORDER BY rating DESC
LIMIT 5 OFFSET 5;

