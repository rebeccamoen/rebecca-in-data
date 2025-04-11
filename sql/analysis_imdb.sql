-- Amount of Movies Watched
SELECT movie_id, COUNT(*) AS num_watched
FROM dim_movie;

-- Average Rating
SELECT
  COUNT(*) AS movies_watched,
  ROUND(AVG(imdb_rating), 1) AS avg_rating
FROM dim_movie;