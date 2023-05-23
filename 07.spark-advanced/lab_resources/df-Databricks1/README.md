# Data Engineering with Spark

## Lab 2: Structured data analysis with DataFrames and SparkSQL

Analyze DataFrames with SparkSQL

### Prerequisites

- Connect to the [Databricks Community Edition](https://community.cloud.databricks.com/login.html)
- Upload the provided notebook

### Goals

- Get familiar with the most frequently used functions for dataframe processing: `filter`, `select`, `groupby` ...
- Learn when and how to use the functions from the module `pyspark.sql.functions`  
- Learn how to enrich the data through `joins`  

### Lab resources

- Notebook
- The datasets are part of the Databricks workspace: `/databricks-datasets/COVID/covid-19-data/live/us-counties.csv` and `/databricks-datasets/COVID/covid-19-data/mask-use/mask-use-by-county.csv`

### Useful links

- [PySpark Documentation](https://spark.apache.org/docs/latest/api/python/index.html)
- [Pyspark SQL Module doc](https://spark.apache.org/docs/latest/api/python/reference/pyspark.sql.html)

### TO DO

Go through the notebook and follow the instructions in the cells:

1. Explore the `us-counties` dataset
2. Join it with `mask-use-by-county`
3. Analyze if the mask usage correlates with the number of deaths or reported cases
