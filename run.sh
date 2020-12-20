$SPARK_HOME/bin/pyspark \
    --master spark://spark-master:7077 \
    --deploy-mode client \
    --name CommonCrawl \
    --packages org.apache.hadoop:hadoop-aws:3.2.0
	--conf spark.hadoop.fs.s3a.aws.credentials.provider=org.apache.hadoop.fs.s3a.AnonymousAWSCredentialsProvider
	