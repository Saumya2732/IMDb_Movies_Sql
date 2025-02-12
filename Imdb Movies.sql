show databases;

-- a) Can you get all data about movies
select * from movies;

-- b) How do you get all data about directors?
select * from directors;

-- c)	Check how many movies are present in IMDB.
select count(id) from movies;

-- d) Find these 3 directors: James Cameron ; Luc Besson ; John Woo
select name from directors where name in ("james cameron","Luc Besson","John Woo");

-- e) Find all directors with name starting with S.
select name from directors where name like"S%";

-- f) Count female directors.
select count(*) from directors where gender=1;

-- g) Find the name of the 10th first women directors?
select name from directors where gender=1 limit 10;

-- h) What are the 3 most popular movies?
select original_title,popularity from movies order by popularity desc limit 3;

-- i) What are the 3 most bankable movies?
select original_title,revenue from movies order by revenue desc limit 3;

-- j) What is the most awarded average vote since the January 1st, 2000?
select max(vote_average) from movies where release_date >= "2000-01-01";

-- k) Which movie(s) were directed by Brenda Chapman?
select * from movies where director_id = (select id from directors where name = 'Brenda Chapman');

-- l) Which director made the most movies?
select d.name, COUNT(m.director_id) as movie_count from directors as d join movies m on d.id = m.director_id group by d.name order by movie_count desc limit 3;

-- m)	Which director is the most bankable?
select d.name, SUM(m.revenue) as total_revenue from directors as d join movies m on d.id = m.director_id group by d.name order by total_revenue desc limit 1;