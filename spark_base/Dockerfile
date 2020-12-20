FROM alpine:latest

# Install Application
RUN apk update \
    && apk add python3 py3-pip openjdk8 wget tar bash coreutils procps \
    && echo 'Installation done'

# Install Spark
RUN wget -P /opt https://apachemirror.sg.wuchna.com/spark/spark-3.0.1/spark-3.0.1-bin-hadoop3.2.tgz \
    && tar -xf /opt/spark-3.0.1-bin-hadoop3.2.tgz -C /opt/ \
    && rm /opt/spark-3.0.1-bin-hadoop3.2.tgz \
    && echo 'Spark Downloaded'

# Handle Python softlinks
RUN ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /opt/spark-3.0.1-bin-hadoop3.2 /opt/spark \
    && echo 'Softlinks Set'

# Set Env Variables
ENV SPARK_HOME=/opt/spark
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH=${JAVA_HOME}/bin:${SPARK_HOME}/bin:$PATH
ENV SPARK_NO_DAEMONIZE=true

EXPOSE 4040