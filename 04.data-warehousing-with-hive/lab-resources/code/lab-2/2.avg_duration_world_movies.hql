-- REPLACE group
SET hivevar:group=YourGroup;

SELECT avg(runtimeminutes) AS avg_duration
FROM ${group}.imdb_title_basics
WHERE primarytitle RLIKE '(^| )[Ww]orld( |$)';
