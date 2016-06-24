FROM java:8-jre

ADD ./config/logstash/spark.conf /etc/logstash/conf.d/spark.conf
ADD ./opt/start.sh /opt/start.sh
ADD ./logstash_2.3.3-1_all.deb /opt/

WORKDIR /opt/

RUN chmod 755 /opt/start.sh && mkdir /opt/sincedb \
   && touch /opt/sincedb/sincedb.info && mkdir /opt/log/ \
   && apt-get update && apt-get install logrotate -y  \
   && dpkg -i logstash_2.3.3-1_all.deb \
   && chown -R logstash.logstash /etc/logstash/

VOLUME /opt/log/
USER logstash

CMD /opt/start.sh

