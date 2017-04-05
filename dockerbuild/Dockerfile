FROM registry.atlas.b2w:5000/atlas/openjdk8:1.8.0_40-internal

ADD addHosts.sh /opt/addHosts.sh

RUN chmod +x /opt/addHosts.sh

CMD ["ulimit -n 64000; /opt/spark-2.0.2-bin-hadoop2.7/bin/./spark-submit --master local[*] --driver-memory 4g --executor-memory 6g --conf spark.driver.extraJavaOptions=$JAVA_OPTS /opt/dmon-api.jar"]

ENTRYPOINT ["/opt/addHosts.sh"]
