-- REPLACE group
SET hivevar:group=YourGroup;

SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM ${group}.imdb_title_basics
  WHERE array_contains(genres, 'Comedy')
) titles
JOIN ${group}.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
