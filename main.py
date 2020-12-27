import findspark
findspark.init()

import pyspark

spark = pyspark.sql.sparkSession.builder.getorcreate()

df = spark.sql("Select 'Hello World'")
df.show()

spark.stop()