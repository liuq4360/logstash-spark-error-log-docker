riak-ts
=============

Runs the logstash for spark error log collection in Docker container

### Starting the logstash 

```bash
docker run -it --env SPARK_WORK_DIR=/opt/log --env WORK_DIR=/opt --env ELASTIC_HOSTS=\"10.10.1.6:9200\",\"10.10.1.7:9200\",\"10.10.1.8:9200\",\"10.10.1.9:9200\" --net host -v /hadoopecosystem/spark/work/:/opt/log/ gongyouliu4360/logstash-spark-log:1.0
docker run -d --name logstash --env SPARK_WORK_DIR=/opt/log --env WORK_DIR=/opt --env ELASTIC_HOSTS=\"10.10.1.6:9200\",\"10.10.1.7:9200\",\"10.10.1.8:9200\",\"10.10.1.9:9200\" --net host -v /hadoopecosystem/spark/work/:/opt/log/ gongyouliu4360/logstash-spark-log:1.0
```

