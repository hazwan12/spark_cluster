FROM spark-base:3.0.1

# Set Env Variables for Spark Master
ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080
ENV SPARK_MASTER_HOST="spark-master"

# Expose Ports for Spark
EXPOSE 7077 8080

# Execute bash script to start spark master
CMD [ "/bin/bash", "/opt/spark/sbin/start-master.sh" ]