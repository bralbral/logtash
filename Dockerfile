FROM docker.elastic.co/logstash/logstash:7.8.0

# https://github.com/bralbral
MAINTAINER Bral Bral <bral@bral.com>

# List of all available plugins:
# https://www.elastic.co/guide/en/logstash/current/

RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-json_encode
RUN /usr/share/logstash/bin/logstash-plugin install logstash-codec-csv
RUN /usr/share/logstash/bin/logstash-plugin install logstash-codec-gzip_lines
RUN /usr/share/logstash/bin/logstash-plugin install logstash-codec-protobuf

