-- REPLACE group
SET hivevar:group=YourGroup;
SET hivevar:director='Quentin Tarantino';

USE ${group};

SELECT
  t.tconst AS tconst,
  t.primarytitle AS title,
  r.averagerating AS avg_rating
FROM (
  SELECT nconst
  FROM imdb_name_basics
  WHERE primaryname = ${director}
) n
JOIN imdb_title_crew c ON array_contains(c.director, n.nconst)
JOIN imdb_title_ratings r ON c.tconst = r.tconst
JOIN imdb_title_basics t ON c.tconst = t.tconst
ORDER BY r.averagerating DESC
LIMIT 5;
