import findspark
findspark.init()

import pyspark

spark = pyspark.sql.sparkSession.builder.getorcreate()
df = spark.read.parquet("s3a://commoncrawl/cc-index/table/cc-main/warc")
df = spark.read.json("s3a://commoncrawl/crawl-data/CC-MAIN-2020-50/wat.paths.gz")
