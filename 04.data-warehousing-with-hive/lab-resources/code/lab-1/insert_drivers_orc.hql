SET hivevar:hiveUsername=f_lastname_cs;

INSERT OVERWRITE TABLE dsti_2023_fallbda_1.${hiveUsername}_nyc_drivers
SELECT 
  driver_id,
  split(name, ' ')[0] AS first_name,
  split(name, ' ')[1] AS last_name,
  ssn,
  location AS address,
  CASE WHEN certified = 'Y' THEN true ELSE false END AS certified,
  -- Similar solution for certified
  -- if(certified = 'Y', true, false)
  wage_plan
FROM dsti_2023_fallbda_1.${hiveUsername}_nyc_drivers_ext;
