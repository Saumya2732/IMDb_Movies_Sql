# IMDb Movies SQL Queries Project

## Project Overview
This project consists of a collection of SQL queries designed to interact with the IMDb Movies database. The goal of this project is to demonstrate my ability to write and execute SQL queries effectively, as well as to provide valuable insights from the data.

## Database Description
The IMDb Movies database contains various tables, including:
- **Movies**: Contains details about movies such as title, release date, genre, director, ratings, and revenue.
- **Directors**: Stores information about directors including their names and demographic details.

## Queries Solved
Below is a summary of the SQL queries implemented in this project:

1. **Database Operations**
   - `SHOW DATABASES;`: List all databases.
   - `USE project_movie_database;`: Select the IMDb Movies database for use.
   - `SHOW TABLES;`: List all tables within the selected database.

2. **Data Retrieval**
   - `SELECT * FROM movies;`: Retrieve all data about movies.
   - `SELECT * FROM directors;`: Retrieve all data about directors.

3. **Count**
   - `SELECT COUNT(id) FROM movies;`: Count the total number of movies present in the database.
   - `SELECT name FROM directors WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo');`: Find specific directors.

4. **Conditional Queries**
   - `SELECT * FROM directors WHERE gender = 1;`: Count female directors.
   - `SELECT * FROM movies ORDER BY popularity DESC LIMIT 3;`: Get the top 3 popular movies.

5. **Aggregate Functions**
   - `SELECT COUNT(*) FROM directors WHERE gender = 1;`: Count of female directors.
   - `SELECT d.name, COUNT(m.id) as movie_count FROM directors d JOIN movies m ON d.id = m.director_id GROUP BY d.name ORDER BY movie_count DESC LIMIT 1;`: Determine which director made the most movies.
     
