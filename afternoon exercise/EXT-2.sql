--! Extension 2 !--

-- Return the average film rating

SELECT AVG(rating)::FLOAT FROM films

-- Return the total number of films

SELECT COUNT(title) FROM films

-- Return the average film rating by genre

SELECT genre, AVG(rating)::FLOAT FROM films
GROUP BY genre


