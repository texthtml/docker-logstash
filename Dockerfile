FROM java:7-jre
MAINTAINER Mathieu Rochette "mathieu@texthtml.net"

ENV LOGSTASH_VERSION 1.4.2

ADD logstash-$LOGSTASH_VERSION.tar.gz /opt

CMD ["/opt/logstash-1.4.2/bin/logstash", "agent", "-f", "/opt/logstash.conf"]

# syslog, gelf
EXPOSE 514 12201

COPY logstash.conf /opt/logstash.conf
