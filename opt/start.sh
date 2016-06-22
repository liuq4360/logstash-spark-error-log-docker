#!/usr/bin/env bash

sed -i "s/elastic_host/${ELASTIC_HOSTS}/g" /etc/logstash/conf.d/spark.conf
sed -i "s/spark_work_dir/${SPARK_WORK_DIR}/g" /etc/logstash/conf.d/spark.conf
sed -i "s/work_dir/${WORK_DIR}/g" /etc/logstash/conf.d/spark.conf

logstash -f /etc/logstash/conf.d/spark.conf

