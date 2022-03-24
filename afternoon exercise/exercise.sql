--! CREATE TABLE !--
CREATE TABLE films (
id SERIAL PRIMARY KEY, 
title VARCHAR(50) NOT NULL,
genre VARCHAR(20) NOT NULL,
year INTEGER NOT NULL,
rating INTEGER NOT NULL,
UNIQUE(title)
);

--! INSERT DATA !--
INSERT INTO films
(title, genre, year, rating)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9)

--! Write SQL SELECT statements to return films matching the below criteria: !--

-- All films
SELECT * FROM films

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY rating DESC

-- All films ordered by release year ascending
SELECT * FROM films
ORDER BY year

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE rating > 8

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE rating < 7

-- films released in 1990
SELECT * FROM films
WHERE year = 1990

-- films released before 2000
SELECT * FROM films
WHERE year < 2000

-- films released after 1990
SELECT * FROM films
WHERE year > 1990

-- films released between 1990 and 1999
SELECT * FROM films
WHERE year BETWEEN 1990 AND 1999

-- films with the genre of "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi' 

-- films with the genre of "Western" or "SciFi"
SELECT * FROM films
WHERE genre ='Western' OR genre ='SciFi' 

-- films with any genre *apart* from "SciFi"
SELECT * FROM films
WHERE genre != 'SciFi' 


-- films with the genre of "Western" released before 2000
SELECT * FROM films
WHERE genre = 'Western' AND year < 2000


-- films that have the world "Matrix" in their title
SELECT * FROM films
WHERE title LIKE '%Matrix%'