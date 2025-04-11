-- Amount of Movies Watched
SELECT COUNT(*) AS num_watched
FROM dim_movie;

-- Average IMDb Rating
SELECT  
  ROUND(AVG(imdb_rating), 1) AS avg_rating,
  COUNT(*) AS total_movies
FROM dim_movie;

-- Amount of Movies Watched by Genre
SELECT 
  g.genre,
  COUNT(*) AS num_watched 
FROM bridge_movie_genre bg
JOIN dim_genre g ON bg.genre_id = g.genre_id
GROUP BY g.genre
ORDER BY num_watched DESC;