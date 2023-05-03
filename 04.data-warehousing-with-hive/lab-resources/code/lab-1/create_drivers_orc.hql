SET hivevar:hiveUsername=f_lastname_cs;

CREATE TABLE IF NOT EXISTS cs_2023_springbda_1.${hiveUsername}_nyc_drivers (
  driver_id INT,
  first_name STRING,
  last_name STRING,
  ssn INT,
  address STRING,
  certified BOOLEAN,
  wage_plan STRING
)
STORED AS ORC;
