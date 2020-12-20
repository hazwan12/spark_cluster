docker build . -f .\spark_base\Dockerfile -t spark-base:3.0.1
docker build . -f .\spark_master\Dockerfile -t spark-master:3.0.1
docker build . -f .\spark_slave\Dockerfile -t spark-slave:3.0.1
