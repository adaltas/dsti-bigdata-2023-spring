# Data Engineering with Spark

## Lab 4: Application submitting

### Prerequisites

Connect to the Adaltas cloud cluster using OpenVPN.

### Goals

- Submit a pyspark application using `spark-submit`
- Add custom application properties to the `spark-submit`
- Use a `.properties` files to store the properties

### Lab resources

- The `taxi_streaming_analysis.py` pyspark script read streaming data from a socket and output aggregated results in parquet format to a HDFS directory
- The `app.properties` file define Spark application properties
- The `yarn_kill_app.sh` can be used to easily kill a YARN application using a keyword and a username

### Useful links

- [Spark - Submitting Applications doc](https://spark.apache.org/docs/2.3.2/submitting-applications.html)
- [Spark - Configuration doc](https://spark.apache.org/docs/2.3.2/configuration.html)
- [Spark - Structured Streaming doc](http://spark.apache.org/docs/2.3.2/structured-streaming-programming-guide.html)

### Submitting the application

- Go to the `labs/lab4` directory
- Use `spark-submit` to submit the application:
  ```bash
  spark-submit --master yarn \
  --deploy-mode cluster \
  ./taxi_streaming_analysis.py \
  gauthier_taxi_streaming \
  edge-1.au.adaltas.cloud \
  "/education/ece/big-data/2020/fall/bda/gr1/$USER/spark-lab4/output/fares_metrics" \
  -f PORT_NUMBER
  ```
- To stop the application using `yarn application`
  - Use the `-list` command to find your application:
    ```bash
    yarn application -list | grep "$USER"
    ```
  - Kill the application using the `-kill` command and the application ID:
    ```bash
    yarn application -kill APP_ID
    ```
- Before re-submitting the app, clear the output and the checkpoint directory:
  ```bash
  hdfs dfs -rm -r /APP_OUTPUT_DIR/*
  hdfs dfs -rm -r /user/gauthier/checkpoint/*
  ```

### TO DO

1. Modify the `spark_taxi_streaming.py` file with your code from lab 3
2. Submit the application using `spark-submit`
3. Observe the results using Zeppelin (see `ece-2019/spark/ref/lab4` notebook)
4. Add custom application properties to the `spark-submit`
5. Write those properties in a `.properties` file
6. (Bonus) Write a bash script to automate the app submitting + directories cleaning in HDFS
7. (Bonus) Write a bash script to automate the YARN application killing
