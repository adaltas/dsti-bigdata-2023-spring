1. Create a csv:
  ....
  echo "id,nom,prenom,age" >> myfile.txt
  echo "1,sauvage,pierre,31" >> myfile.txt

  #add other values
  echo "....." >> myfile.txt

=========

If you run spark in cluster, please also put myfile in the cluster

hdfs dfs -put myfile.txt ./myfile.txt

2. load csv into RDD in spark

```
val rdd = sc.textFile("file:///home/<my_user>/monfichier.txt")

# or from hdfs
val rdd = sc.textFile("hdfs:///user/<my_user>/monfichier.txt")

```



2b. Print content of RDD

2c: Filter rdd : delete lines where age is smaller than 18 apa

2d: Convert RDD in dataframe (google est votre ami)

========

3. load csv into dataframe in Spark
3b. Print content of DF
3c: Filtrer DF: delete lines where age < 18

bonus:  In Spark native API, then in SQL (spark.sql("..."))

3d: Print minimal, maximal, average age
