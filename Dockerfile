FROM docker.elastic.co/elasticsearch/elasticsearch:7.5.0 AS elasticsearch
WORKDIR /usr/share/elasticsearch
COPY ./config/ /usr/share/elasticsearch/config/
COPY ./snapshots.tar.gz /usr/share/elasticsearch/
RUN tar xzf /usr/share/elasticsearch/snapshots.tar.gz  \
    && rm -f snapshots.tar.gz  \
    && chown -R elasticsearch:root /usr/share/elasticsearch/snapshots/
