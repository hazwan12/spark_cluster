FROM spark-base:3.0.1

ENV SPARK_WORKER_WEBUI_PORT=8081

# Expose Ports for Spark
EXPOSE 8081

CMD [ "/bin/bash", "/opt/spark/sbin/start-slave.sh", "spark://spark-master:7077" ]