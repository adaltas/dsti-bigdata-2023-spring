# Lab 3


1. Import lab-resources/science_federal_giving_samp.csv into your hdfs home directory

2. Create external hive table that wrap this file. 

3. Create Optimized ORC Table with same schema. Copy data from previous table.
Compare size on corresponding hdfs directory

4. Create ORC table but partition by city

5. Observe disk structure. Describe how this structure will impact request.
   Find 2 SQL requests that will directly be optimised
   What will be impact if data is not well distributed per city ? What will be impact on small data ?

6. Create ORC table with 10 buckets. 

7. Observe disk structure. Describe how this structure will impact request.
   Find a scenario for bucketing.
   What will be impact if data is not well distributed per city ? What will be impact on small data ?

5. Create ORC table and partitionned by city with 10 buckets
   Describe how it will behave in comparison to partionned-only and bucketed-only
