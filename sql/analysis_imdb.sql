-- Amount of Movies Watched

SELECT movie_id, COUNT(*) AS num_watched
FROM dim_movie
GROUP BY genre
ORDER BY num_watched DESC;