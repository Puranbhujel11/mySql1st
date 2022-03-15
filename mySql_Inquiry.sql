CREATE DATABASE mySQL_inquiry;

USE mySQL_inquiry;

-- very easy
CREATE TABLE myTop3_cars (
make VARCHAR(20),
model VARCHAR(20),
year INT
);

INSERT INTO myTop3_cars (make, model, year) 
VALUES (Audi, A3, 2022), (BMW, i8, 2020), (Jaguar, I-pace, 2021);

-- INSERT INTO myTop3_cars (make, model, year) 
-- VALUES

-- easy
CREATE TABLE Books(
Bookid INT AUTO_INCREMENT,
title VARCHAR(50),
published_date INT,
author_firstname VARCHAR(50),
author_lastname VARCHAR(50),
PRIMARY KEY(Bookid)
);

INSERT INTO books (title, published_date, author_firstname ,author_lastname) VALUES
('USA', 2011, 'Puran', 'Bhujel'),
('Argentina', 2012, 'leo', 'Messi'),
('Portugal', 2013, 'Cris', 'Ronaldo'),
('Wales', 2014, 'Garry', 'Bale'),
('Brazil', 2015, 'Neymar', 'junior'); 

INSERT INTO books (title, published_date , author_firstname ,author_lastname) VALUES
('France', 2021, 'Kylian', 'Mbappe'),
('Norway', 2022, 'Erling', 'Haaland');

DELETE FROM books ORDER BY published_date DESC LIMIT 1;

-- medium
CREATE TABLE myTop_movies (
movie_id INT AUTO_INCREMENT,
title VARCHAR(25),
release_date INT,
rating ENUM('G', 'PG', 'PG-13', 'R', 'NC-17'),
PRIMARY KEY(movie_id)
);

INSERT INTO myTop_movies (title, release_date, rating) VALUES
('3 IDIOTS ', 2009, 'PG-13'),
('Dangal ', 2016, 'PG'),
('Fanaa', 2006, 'PG-13'),
('Mann', 1997, 'PG-13'),
('Lagaan ', 2001, 'PG'),
('Ghajini ', 2008, 'R'),
('PK', 2014, 'PG-13'),
('Taare Zameen Par', 2008, 'PG'),
('Sarfarosh', 2022, 'R'),
('Rang De Basanti', 2021, 'R');

SELECT * FROM myTop_movies
 WHERE title 
 LIKE '%s' 
 ORDER BY release_date 
 DESC;
 
 
 
 -- hard
ALTER TABLE myTop_movies ADD director_firstname VARCHAR(50); 
ALTER TABLE myTop_movies ADD director_lastname VARCHAR(50);

UPDATE myTop_movies SET director_firstname = 'Puran', 
director_lastname= 'Bhujel' WHERE movie_id >= 1 ;

SELECT director_firstname, director_lastname, CONCAT (director_firstname,' ', director_lastname) AS director 
FROM myTop_movies;

SELECT * FROM myTop_movies ORDER BY director_lastname ASC;

DELETE FROM myTop_movies WHERE director_lastname BETWEEN 'r%' AND 'z%';

SELECT * FROM myTop_movies LIMIT 3;
 
 
 
-- very hard
CREATE TABLE myTop_cars (
make VARCHAR(20),
model VARCHAR(20),
year INT
);

INSERT INTO myTop_cars (make, model, year) 
VALUES (Audi, A3, 2022), (BMW, i8, 2020), (Jaguar, I-pace, 2021);

INSERT INTO myTop_cars (make, model, year) VALUES 
('Toyata','Camry', 2020), 
('Nissan','Sentra', 2011), 
('Honda', 'Accord', 2022);

ALTER TABLE myTop_cars ADD price INT;
ALTER TABLE myTop_cars ADD color VARCHAR(25);

SELECT make, model, CONCAT (make, ' ', model) AS car FROM myTop_cars;

SELECT make, COUNT(*) FROM myTop_cars2 GROUP BY make;
 
 
 
 
 
 
 
 
 
 
 
 
