CREATE TABLE IF NOT EXISTS dsti_2023_fallbda_1.imdb_title_basics_decade (
  tconst STRING,
  titletype STRING,
  primarytitle STRING,
  originaltitle STRING,
  isadult TINYINT,
  startyear INT,
  endyear INT,
  runtimeminutes INT,
  genres ARRAY<string>
)
PARTITIONED BY (p_startdecade STRING)
STORED AS ORC;

INSERT OVERWRITE TABLE dsti_2023_fallbda_1.imdb_title_basics_decade
SELECT
  tconst, titletype, primarytitle, originaltitle, isadult,
  startyear, endyear, runtimeminutes, genres,
  CASE
    -- Grouping titles created before 1950 into a single partition
    -- because there are a lot less than other decades
    WHEN startdecade <= 1950 THEN '1870-1950'
    WHEN startdecade IS NULL THEN 'UNKNOWN'
    ELSE startdecade
  END AS p_startdecade
FROM (
  SELECT *, (startyear DIV 10 * 10) AS startdecade
  FROM dsti_2023_fallbda_1.imdb_title_basics
) itb
WHERE startdecade IS NULL OR startdecade <= 2020;
