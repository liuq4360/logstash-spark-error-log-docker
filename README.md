riak-ts
=============

Runs the logstash for spark error log collection in Docker container

### Starting the logstash 

```bash
docker run -it --env SPARK_WORK_DIR_=/hadoopecosystem/spark/work --env WORK_DIR=/opt --env ELASTIC_HOSTS="10.10.1.6:9200","10.10.1.7:9200","10.10.1.8:9200","10.10.1.9:9200"  --net host gongyouliu4360/logstash_spark_log:1.0
```

